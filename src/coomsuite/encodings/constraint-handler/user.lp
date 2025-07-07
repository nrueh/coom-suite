% Prohibit double assignments of a value to an attribute
:- include(X), type(X,T), value(X,_,V1), value(X,_,V2), V1 != V2.

consistent(X)   :- user_include(X), type(X,_).
consistent(X,V,EV) :- user_value(X,V), type(X,T), discrete(T,CT), domain(T,V), convert(T,V,EV).
consistent(X,V,EV) :- user_value(X,V), type(X,T), numeric(T,int),       range(T,Min,Max), Min <= V <= Max, EV=val(int,V).
consistent(X,V,EV) :- user_value(X,V), type(X,T), numeric(T,int),   not range(T,_,_),                      EV=val(int,V).
consistent(X,V,EV) :- user_value(X,V), type(X,T), numeric(T,float),     range(T,Min,Max), Min <= V <= Max, EV=val(float,float(V)).
consistent(X,V,EV) :- user_value(X,V), type(X,T), numeric(T,float), not range(T,_,_),                      EV=val(float,float(V)).

% user_value(X,CT,V)
include(X) :- user_include(X), consistent(X).
include(X) :- user_value(X,V), consistent(X,V,_).
assign(user,X,EV) :- user_value(X,V), consistent(X,V,EV).
