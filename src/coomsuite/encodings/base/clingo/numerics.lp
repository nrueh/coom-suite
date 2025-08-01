% Define subset based on a satisfied condition
subset(A,S,C,X) :- set(S,X), condition(A,C), property((S,X),(C,F)), satisfied(F).

% Evaluate aggregates
% value(F,V) :- aggregate(F,"count",P), condition(F,C,CV), V = #count{ X    : set(P,X), include(X),  property(P,X,C,CX), value(CX,CV) }.
% value(F,V) :- aggregate(F,"sum",  P), condition(F,C,CV), V = #sum  { V',X : set(P,X), value(X,V'), property(P,X,C,CX), value(CX,CV) }.
value(A,V) :- aggregate(A,"count",P), condition(A,C), V = #count{ X    : subset(A,P,C,X), include(X)  }.
value(A,V) :- aggregate(A,"sum",  P), condition(A,C), V = #sum  { V',X : subset(A,P,C,X), value(X,V') }.

value(A,V) :- aggregate(A,"min",  P), V = #min  { V',X : set(P,X), value(X,V')   }.
value(A,V) :- aggregate(A,"max",  P), V = #max  { V',X : set(P,X), value(X,V')   }.

% Arithmetics
value(F,VL+VR) :- binary(F,XL,"+",XR), value(XL,VL), value(XR,VR).
value(F,VL-VR) :- binary(F,XL,"-",XR), value(XL,VL), value(XR,VR).
value(F,VL*VR) :- binary(F,XL,"*",XR), value(XL,VL), value(XR,VR).
value(F, V)    :- unary(F,"()",X),     value(X,V).
value(F, V)    :- unary(F,"+", X),     value(X,V).
value(F,-V)    :- unary(F,"-", X),     value(X,V).
% TODO: Add more arithmetics (division and power)

% Default arithmetics
value(F,VL)  :- binary(F,XL,"+",XR), value(XL,VL), not value(XR,_).
value(F,VR)  :- binary(F,XL,"+",XR), value(XR,VR), not value(XL,_).
value(F,VL)  :- binary(F,XL,"-",XR), value(XL,VL), not value(XR,_).
value(F,-VR) :- binary(F,XL,"-",XR), value(XR,VR), not value(XL,_).
% TODO: More rules for multiplication?

% Assign values of imply statements if object is included
value(X,V) :- imply((C,X),F), include(X), value(F,V), satisfied(Con) : condition((C,X),Con).
