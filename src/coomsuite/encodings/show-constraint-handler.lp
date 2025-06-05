#show .

#show include(X) : include(X), type(X,T), part(T), X != "root".

#show value(X,CT,V) : value(X,CT,V), type(X,T), discrete(T,CT).
#show value(X,CT,V) : value(X,CT,V), type(X,T), numeric(T,CT).
