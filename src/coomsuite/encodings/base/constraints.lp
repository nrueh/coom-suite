% A lower bound (cardinality) constraint is violated if less than the minimum number of objects are included
% (objects are included in ascending order of indices)
% (maximum does not need to be checked)
violated((X',P)) :- constraint((P,Min),"lowerbound"), set(P,X), index(X,Min-1), not include(X), parent(X,X'), include(X').

% Exists constraints
satisfied((S,V)) :- constraint((S,V),"exists"), set(S,X), value(X,V).
violated(C) :- constraint(C,"exists"), not satisfied(C).

% All-different constraints
violated((S,(X1,X2))) :- constraint(S,"alldiff"), set(S,X1), set(S,X2), X1 != X2, value(X1,V), value(X2,V). % Needs to go into clingo encoding

% Constraints cannot be violated
:- violated(C).
