
assign(u(NRES),NRES,operation(OP,(X,()))) :- unary(NRES,SOP,XN),
    operatorMap1(SOP,OP), X = variable(XN).
assign(f(NRES),NRES,operation(OP,(X1,()))) :- function(NRES,SOP,XN1),
    operatorMap1(SOP,OP),
    X1 = variable(XN1).
assign(b(NRES),NRES,operation(OP,(X1,(X2,())))) :- binary(NRES,XN1,SOP,XN2),
    operatorMap2(SOP,OP),
    X1 = variable(XN1), X2 = variable(XN2).

assign(i(NRES),NRES,variable(NEXP)) :- imply(NRES,NEXP).


set_declare(ddummy,MAP) :- function(_,_,MAP).
set_assign(adummy, SET, CHKEY) :-
    function(_,"count",SET),
    set(SET,KEY),
    include(KEY),
    CHKEY = constant(str(KEY)).

multimap_declare(ddummy,MAP) :- function(_,"sum",MAP).
multimap_assign(adummy, MAP, CHKEY, VALUE) :-
    function(_,"sum",MAP),
    set(MAP,KEY),
    include(KEY),
    CHKEY = constant(str(KEY)),
    VALUE = variable(KEY).

violated((C,F)) :- constraint((C,F),"boolean"), value(F,bool,false).
