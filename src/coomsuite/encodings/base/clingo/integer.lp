% Generate exactly one value for each (numeric) integer attribute if it is included
{ value(X,V) : V = Min..Max } = 1 :- include(X), type(X,T), numeric(T,int), range(T,Min,Max).

% Auxiliary values for numbers.
value(P,N) :- number(P,N).
