#show .

#show include(X) : include(X), type(X,T), part(T), X != "root".

#show value(X,V) : value(X,CT,V), type(X,T), discrete(T,CT).
#show value(X,V) : value(X,int,V), type(X,T), numeric(T,int).
#show value(X,V) : value(X,float,float(V)), type(X,T), numeric(T,float).
