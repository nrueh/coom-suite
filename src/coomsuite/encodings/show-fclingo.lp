#show .

#show include(X) : include(X), type(X,T), part(T), X != "root".

#show value(X,V) : value(X,V), type(X,T), discrete(T,_).
&show { X : type(X,T), numeric(T,int) }.
