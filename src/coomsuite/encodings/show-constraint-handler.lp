#show .

#show include(X) : include(X), type(X,T), part(T), X != "root".

#show value(X,V) : value(X,CT,V), type(X,T), discrete(T,CT).
#show value(X,V) : value(X,int,V), type(X,T), numeric(T,int).
#show value(X,@pythonRound(V,P)) : value(X,float,float(V)), type(X,T), numeric(T,float), precision(T,P).
% TODO: Incorporate rounding into constraint handler calculation (possible by introducing auxiliary show variables)

#script (python)
import constraint_handler as ch

def pythonRound(cF,cPrecision):
    pv = ch.myClorm.cltopy(cF)
    pF = float(pv)
    pp = ch.myClorm.cltopy(cPrecision)
    return ch.myClorm.pytocl(str(round(pF,pp)))
#end.
