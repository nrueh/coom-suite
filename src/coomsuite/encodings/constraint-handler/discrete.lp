% Generate exactly one value for each discrete attribute if it is included
% { value(X,V) : domain(T,V) } = 1 :- include(X), type(X,T), discrete(T).
{ assign(a(X),X,E) : convert(T,V,E) } = 1 :- include(X), type(X,T), discrete(T,_).

% Auxiliary values for (non-numeric) constants
% value(P,P) :- constant(P).
assign(constants,XN,val(str,XN)) :- constant(XN).
