% Operator maps for arithmetic and logical operations
map_operator2("+",add).
map_operator2("*",mult).
map_operator2("-",sub).
map_operator2("/",fdiv).
map_operator2("^",pow).

map_operator2(">",gt).
map_operator2(">=",geq).
map_operator2("<",lt).
map_operator2("<=",leq).
map_operator2("=",eq).
map_operator2("!=",neq).
map_operator2("||",disj).
map_operator2("&&",conj).

map_operator1("!",lnot).
map_operator1("sqrt",sqrt).
map_operator1("cos",cos).
map_operator1("acos",acos).
map_operator1("sin",sin).
map_operator1("asin",asin).
map_operator1("tan",tan).
map_operator1("atan",atan).
map_operator1("sum",sumIntEntries).
map_operator1("max",maxEntries).
map_operator1("min",minEntries).
map_operator1("count",countEntries).
%map_operator1("count",length).
map_operator1("-",minus).


map_operator1("()",brackets).
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
