% Build up expressions of boolean formulas
map_expression(X,val(str,X))          :- constant(X).
map_expression(X,val(int,I))          :- number(X,I).
map_expression(X,val(float,float(X))) :- float(X).

map_expression(X,variable(X)) :- include(X), type(X,T), numeric(T,_).
map_expression(X,variable(X)) :- include(X), type(X,T), discrete(T,_).

map_expression(NRES,operation(OP,(CH,()))) :- unary(NRES,SOP,X),
    map_operator1(SOP,OP), map_expression(X,CH).
map_expression(NRES,operation(OP,(CH,()))) :- function(NRES,SOP,X),
    map_operator1(SOP,OP), CH=variable(X).
map_expression(NRES,operation(OP,(CH1,(CH2,())))) :- binary(NRES,X1,SOP,X2),
    map_operator2(SOP,OP), map_expression(X1,CH1), map_expression(X2,CH2).

% Encode (conditional) imply as if-then-else statements
imply_aux(ID,VAR,CHV) :- imply((ID,VAR),VAL), 0 = #count { ID0 : imply((ID0,VAR),_), ID0 < ID },
  map_expression(VAL,CHV).
imply_aux(ID1,VAR,E1) :- imply_aux(ID0,VAR,E0),
  imply((ID1,VAR),VAL), ID0 < ID1, 0 = #count { ID2 : imply((ID2,VAR),_), ID0 < ID2, ID2 < ID1 },
  condition((ID1,VAR),COND),
  map_expression(COND,CHC), map_expression(VAL,CHV), E1=operation(ite,(CHC,(CHV,(E0,())))).
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

ensure(C,CH) :- constraint((C,F),"boolean"), map_expression(F,CH).
