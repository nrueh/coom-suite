% Check that variables exist
warning("not exists",X) :- user_value(X,_), not type(X,_).
warning("not exists",X) :- user_include(X), not type(X,_).

% Check variable type
% warning("not part",X) :- user_include(X), type(X,T), not part(T).
warning("not attribute",X) :- user_value(X,V), type(X,T), #false : discrete(T,_); #false : numeric(T,int).

% Check valid domain
warning("outside domain",(X,V)) :- user_value(X,V), type(X,T), discrete(T,_), not domain(T,V).
warning("outside domain",(X,V)) :- user_value(X,V), type(X,T), numeric(T,int), range(T,Min,Max), V < Min.
warning("outside domain",(X,V)) :- user_value(X,V), type(X,T), numeric(T,int), range(T,Min,Max), V > Max.
% Check max cardinality not exceeded
% For now this is covered by line 3 (only max amount of objects is grounded)

#show warning/2.
