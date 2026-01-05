% Build up expressions of boolean formulas
expressionMap(X,val(str,X))          :- constant(X).
expressionMap(X,val(int,I))          :- number(X,I).
expressionMap(X,val(float,float(X))) :- float(X).

expressionMap(X,variable(X)) :- include(X), type(X,T), numeric(T,_).
expressionMap(X,variable(X)) :- include(X), type(X,T), discrete(T,_).

expressionMap(NRES,operation(OP,(CH,()))) :- unary(NRES,SOP,X),
    operatorMap1(SOP,OP), expressionMap(X,CH).
expressionMap(NRES,operation(OP,(CH,()))) :- function(NRES,SOP,X),
    operatorMap1(SOP,OP), CH=variable(X).
expressionMap(NRES,operation(OP,(CH1,(CH2,())))) :- binary(NRES,X1,SOP,X2),
    operatorMap2(SOP,OP), expressionMap(X1,CH1), expressionMap(X2,CH2).

% Encode (conditional) imply as if-then-else statements
imply_aux(ID,VAR,CHV) :- imply((ID,VAR),VAL), 0 = #count { ID0 : imply((ID0,VAR),_), ID0 < ID },
  expressionMap(VAL,CHV).
imply_aux(ID1,VAR,E1) :- imply_aux(ID0,VAR,E0),
  imply((ID1,VAR),VAL), ID0 < ID1, 0 = #count { ID2 : imply((ID2,VAR),_), ID0 < ID2, ID2 < ID1 },
  condition((ID1,VAR),COND),
  expressionMap(COND,CHC), expressionMap(VAL,CHV), E1=operation(ite,(CHC,(CHV,(E0,())))).
imply_last(VAR,E) :- imply_aux(ID,VAR,E), 0 = #count { ID1 : imply((ID1,VAR),_), ID < ID1 }.

variable_define(i(NRES),NRES,CH) :- imply_last(NRES,CH), include(NRES).

% Declare multimaps for aggregate functions
multimap_declare(ddummy,MAP) :- function(_,("sum";"max";"min"),MAP).
multimap_assign(adummy, MAP, CHKEY, VALUE) :-
    function(_,("sum";"max";"min"),MAP),
    set(MAP,KEY),
    include(KEY),
    CHKEY = val(str,KEY),
    VALUE = variable(KEY).

multimap_declare(ddummy,MAP) :- function(_,("count"),MAP).
multimap_assign(adummy, MAP, CHKEY, VALUE) :-
    function(_,("count"),MAP),
    set(MAP,KEY),
    include(KEY),
    CHKEY = val(str,KEY),
    VALUE = val(bool,true).

ensure(C,CH) :- constraint((C,F),"boolean"), expressionMap(F,CH).
