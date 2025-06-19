% A lower bound (cardinality) constraint is violated if less than the minimum number of objects are included
% (objects are included in ascending order of indices)
% (maximum does not need to be checked)
violated((X',P)) :- constraint((P,Min),"lowerbound"), set(P,X), index(X,Min-1), not include(X), parent(X,X'), include(X').

% Exists constraints
satisfied((S,V)) :- constraint((S,V),"exists"), set(S,X), value(X,V).
violated(C) :- constraint(C,"exists"), not satisfied(C).

% All-different constraints
violated((S,(X,X'))) :- constraint(S,"alldiff"), set(S,X), set(S,X'), X != X', value(X,V), value(X',V). % Needs to go into clingo encoding

% Constraints cannot be violated
:- violated(C).
