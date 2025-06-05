% consistent(X)   :- user_include(X), type(X,_).
% consistent(X,V) :- user_value(X,V), type(X,T), discrete(T), domain(T,V).
% consistent(X,V) :- user_value(X,V), type(X,T), integer(T),     range(T,Min,Max), Min <= V <= Max.
% consistent(X,V) :- user_value(X,V), type(X,T), integer(T), not range(T,_,_).

% include(X) :- user_include(X), consistent(X).
% include(X) :- user_value(X,V), consistent(X,V).
% value(X,V) :- user_value(X,V), consistent(X,V).


consistent(X)   :- user_include(X), type(X,_).
consistent(X,V,EV) :- user_value(X,V), type(X,T), discrete(T,CT), domain(T,V), convert(T,V,EV).
consistent(X,V,EV) :- user_value(X,V), type(X,T), numeric(T,int),     range(T,Min,Max), Min <= V <= Max, EV=constant(int(V)).
consistent(X,V,EV) :- user_value(X,V), type(X,T), numeric(T,int), not range(T,_,_),                      EV=constant(int(V)).
consistent(X,V,EV) :- user_value(X,V), type(X,T), numeric(T,float),     range(T,Min,Max), Min <= V <= Max, EV=constant(float(V)).
consistent(X,V,EV) :- user_value(X,V), type(X,T), numeric(T,float), not range(T,_,_),                      EV=constant(float(V)).

% user_value(X,CT,V)
include(X) :- user_include(X), consistent(X).
include(X) :- user_value(X,V), consistent(X,V,_).
assign(user,X,EV) :- user_value(X,V), consistent(X,V,EV).
