% Define subset based on a satisfied condition
subset(S,(C,V),X) :- set(S,X), condition(_,C,V), property(S,X,C,CX), value(CX,V).

% Evaluate aggregates
% value(F,V) :- aggregate(F,"count",P), condition(F,C,CV), V = #count{ X    : set(P,X), include(X),  property(P,X,C,CX), value(CX,CV) }.
% value(F,V) :- aggregate(F,"sum",  P), condition(F,C,CV), V = #sum  { V',X : set(P,X), value(X,V'), property(P,X,C,CX), value(CX,CV) }.
value(F,V) :- aggregate(F,"count",P), condition(F,C,CV), V = #count{ X    : subset(P,(C,CV),X), include(X)  }.
value(F,V) :- aggregate(F,"sum",  P), condition(F,C,CV), V = #sum  { V',X : subset(P,(C,CV),X), value(X,V') }.

value(F,V) :- aggregate(F,"min",  P), V = #min  { V',X : set(P,X), value(X,V')   }.
value(F,V) :- aggregate(F,"max",  P), V = #max  { V',X : set(P,X), value(X,V')   }.

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
