% Generate exactly one value for each discrete attribute if it is included
% { value(X,V) : domain(T,V) } = 1 :- include(X), type(X,T), discrete(T).
{ assign(a(X),X,E) : convert(T,V,E) } = 1 :- include(X), type(X,T), discrete(T,_).

% Make sure only one value is assigned to each discrete attribute variable
:- include(X), type(X,T), discrete(T,CT), value(X,CT,V1), value(X,CT,V2), V1 != V2.

% Auxiliary values for (non-numeric) constants
% value(P,P) :- constant(P).
assign(constants,XN,constant(str(XN))) :- constant(XN).
