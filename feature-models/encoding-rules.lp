% % Choice on all features
% { include(F) : feature(F) }.

% relation(F1,F2) :- mandatory(F1,F2).
% relation(F1,F2) :- optional(F1,F2).
% relation(F1,F2) :- or(F1,F2).
% relation(F1,F2) :- alternative(F1,F2).

% Features can only be included if their parent is included
% :- relation(F1,F2), include(F2), not include(F1).

% Root must be included
include(F) :- root(F).

% Mandatory features must be included
include(F2) :- mandatory(F1,F2), include(F1).

% Optional features can be included
{ include(F2) } :- optional(F1,F2), include(F1).

% Exactly one alternative feature has to be included
1 { include(F2) : alternative(F1,F2) } 1 :- include(F1), alternative(F1,_).

% At least one or feature has to be included
1 { include(F2) : or(F1,F2) } :- include(F1), or(F1,_).

% Requires constraints
:- requires(F1,F2), include(F1), not include(F2).

% Excludes constraints
:- excludes(F1,F2), include(F1), include(F2).

#show include/1.

#defined feature/1.
#defined root/1.
#defined mandatory/2.
#defined optional/2.
#defined alternative/2.
#defined or/2.
#defined requires/2.
#defined excludes/2.
