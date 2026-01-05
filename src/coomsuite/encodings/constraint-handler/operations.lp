% Operator maps for arithmetic and logical operations
operatorMap2("+",add).
operatorMap2("*",mult).
operatorMap2("-",sub).
operatorMap2("/",fdiv).
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
operatorMap1("max",maxEntries).
operatorMap1("min",minEntries).
operatorMap1("count",countEntries).
%operatorMap1("count",length).
operatorMap1("-",minus).


operatorMap1("()",brackets).
computed(brackets,ARGS,val(T,V)) :- compute(brackets,ARGS), ARGS=(val(T,V),()).


% Not used currently, implement for possible later use
computed(cast_to_float,ARGS,val(float,@pythonCastToFloat(V))) :- compute(cast_to_float,ARGS), ARGS=(val(T,V),()), T=(int;float;str).

% Temporary fix until constraint handler implements fdiv between two ints
computed(fdiv,ARGS,val(float,@pythonFDiv(I1,I2))) :- compute(fdiv,ARGS), ARGS=(val(int,I1),(val(int,I2),())).

#script (python)
import constraint_handler as ch

def pythonCastToFloat(cI):
    pv = ch.myClorm.cltopy(cI)
    pF = float(pv)
    return ch.myClorm.pytocl(pF)

def pythonFDiv(cI1,cI2):
    pI1 = ch.myClorm.cltopy(cI1)
    pI2 = ch.myClorm.cltopy(cI2)
    pF = pI1 / pI2
    return ch.myClorm.pytocl(pF)

#end.
