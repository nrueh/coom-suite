% Check that variables exist
warning("not exists",X) :- user_value(X,_), not type(X,_).
warning("not exists",X) :- user_include(X), not type(X,_).

% Check variable type
% warning("not part",X) :- user_include(X), type(X,T), not part(T).
warning("not attribute",X) :- user_value(X,V), type(X,T), #false : discrete(T,_); #false : numeric(T,_).

% Check valid domain
warning("outside domain",(X,V)) :- user_value(X,V), type(X,T), discrete(T,_), not domain(T,V).
warning("outside domain",(X,V)) :- user_value(X,V), type(X,T), numeric(T,int),
                                   range(T,Min,Max), #false: Min <= V <= Max.
warning("outside domain",(X,V)) :- user_value(X,V), type(X,T), numeric(T,float),
                                   range(T,Min,Max), #false: Min <= @floor(V), @ceil(V) <= Max.
% TODO: Floats


consistent(X)   :- user_include(X), not warning(_,X).
consistent(X,V) :- user_value(X,V), not warning(_,(X,V)), not warning(_,X).

% Check max cardinality not exceeded
% For now this is covered by line 3 (only max amount of objects is grounded)

#show warning/2.
#show consistent/1.
#show consistent/2.

#script (python)
import math
from clingo import Number

def floor(v):
    return Number(math.floor(float(v.string)))
def ceil(v):
    return Number(math.ceil(float(v.string)))

#end.
