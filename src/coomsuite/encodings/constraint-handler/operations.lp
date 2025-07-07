% Operator maps for arithmetic and logical operations
operatorMap2("+",add).
operatorMap2("*",mult).
operatorMap2("-",sub).
operatorMap2("/",ratdiv).
operatorMap2("^",pow).

operatorMap2(">",gt).
operatorMap2(">=",geq).
operatorMap2("<",lt).
operatorMap2("<=",leq).
operatorMap2("=",eq).
operatorMap2("!=",neq).
operatorMap2("||",disj).
operatorMap2("&&",conj).

operatorMap1("!",lnot).
operatorMap1("sqrt",sqrt).
operatorMap1("cos",cos).
operatorMap1("acos",acos).
operatorMap1("sin",sin).
operatorMap1("asin",asin).
operatorMap1("tan",tan).
operatorMap1("atan",atan).
operatorMap1("sum",sumIntEntries).
operatorMap1("count",length).
operatorMap1("-",minus).


operatorMap1("()",brackets).
computed(brackets,ARGS,T,V) :- compute(brackets,ARGS), ARGS=(T,(V,())).

stageRatDiv(ARGS,V1,V2) :- compute(ratdiv,ARGS), ARGS=(T1,(V1,(T2,(V2,())))), T1=(int;float), T2=(int;float).
computed(ratdiv,ARGS,float,VZ) :- stageRatDiv(ARGS,VX,VY),VZ=@pythonRatDiv(VX,VY).

#script(python)

import constraint_handler.myClorm

def pythonRatDiv(clX,clY):
    #print(f"rat div: {clX} / {clY}",end=" ")
    pX = myClorm.cltopy(clX)
    pY = myClorm.cltopy(clY)
    pZ = float(pX / pY)
    clZ = myClorm.pytocl(pZ)
    #print(f"= {clZ}")
    return clZ

#end.
