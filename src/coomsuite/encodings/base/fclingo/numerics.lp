% Evaluate functions in fclingo (aggregates)
&sum{ 1,X : set(P,X), include(X) } = F :- function(F,"count",P).
&sum{   X : set(P,X), include(X) } = F :- function(F,"sum",  P).
&min{   X : set(P,X), include(X) } = F :- function(F,"min",  P).
&max{   X : set(P,X), include(X) } = F :- function(F,"max",  P).

% Arithmetics in fclingo
&sum{ XL;  XR } = F :- binary(F,XL,"+",XR).
&sum{ XL; -XR } = F :- binary(F,XL,"-",XR).

% Only linear constraints are supported
&sum{ XL*N } = F :- binary(F,XL,"*",XR), number(XR,N).
&sum{ XR*N } = F :- binary(F,XL,"*",XR), number(XL,N).
% TODO: Add more arithmetics (division and power)

% Unary formulas
&sus{  X } =: F :- unary(F,"()",X). % Definedness check because there exist parenthesis around Boolean formulas as well
&sum{  X } = F :- unary(F,"+", X).
&sum{ -X } = F :- unary(F,"-", X).

% Assign values of imply statements if object is included
&sum{F} = X :- imply(X,F), include(X).
