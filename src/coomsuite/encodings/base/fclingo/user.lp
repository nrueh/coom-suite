% include(X)  :- user_include(X), type(X,_). %, part(T).
% include(X)  :- user_value(X,_), type(X,T), discrete(T).
% include(X)  :- user_value(X,_), type(X,T), integer(T).
% value(X,V)  :- user_value(X,V), type(X,T), discrete(T),    domain(T,V).
% &sum{X} = V :- user_value(X,V), type(X,T), integer(T),     range(T,Min,Max), Min <= V <= Max.
% &sum{X} = V :- user_value(X,V), type(X,T), integer(T), not range(T,_,_).


consistent(X)   :- user_include(X), type(X,_).
consistent(X,V) :- user_value(X,V), type(X,T), discrete(T,_),      domain(T,V).
consistent(X,V) :- user_value(X,V), type(X,T), numeric(T,int),     range(T,Min,Max), Min <= V <= Max.
consistent(X,V) :- user_value(X,V), type(X,T), numeric(T,int), not range(T,_,_).

include(X)  :- user_include(X), consistent(X).
include(X)  :- user_value(X,V), consistent(X,V).
value(X,V)  :- user_value(X,V), consistent(X,V), type(X,T), discrete(T,_).
&sum{X} = V :- user_value(X,V), consistent(X,V), type(X,T), numeric(T,int).
