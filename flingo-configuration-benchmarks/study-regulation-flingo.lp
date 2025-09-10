#const num_semester=4.
#const required_ects=120.

semester(1..num_semester).
% Winter and Summer semester?

module((a,1..30)).
module((b,1..20)).
module((p,1..12)).
module(thesis).

ects(M,9) :- module(M), M = (a,_).
ects(M,6) :- module(M), M = (b,_).
ects(M,12) :- module(M), M = (p,_).
ects(thesis,30).

{ select(S,M) : module(M) } :- semester(S).

% each module at most once
:- select(S1,M), select(S2,M), S1 < S2.

% have to take thesis
:- not select(S,thesis) : semester(S).

% Assign ECTS to modules
&sus{ E } =: (M,ects) :- select(S,M), ects(M,E).

% At least 90 ECTS must be taken before the thesis can be taken
:- semester(S), select(S,thesis), &sum{ (M,ects) : select(S1,M), S1 < S} < 90.

% The number of ECTS of modules in group a has to be between 18 and 36
:- &sum{ (M,ects) : select(_,M), M = (a,_) } < 18.
:- &sum{ (M,ects) : select(_,M), M = (a,_) } > 36.

% The number of ECTS of modules in group b has to be equal to 30
:- not &sum{ (M,ects) : select(_,M), M = (b,_) } = 30.

% The number of ECTS of modules in group p has to be equal to 24
% :- not &sum{ (M,ects) : select(_,M), M = (p,_) } = 24.

% Sum of all ECTS must be equal to required ECTS
&sum{ (M,ects) : select(_,M) } = total_ects.
:- not &sum{required_ects} = total_ects.

#show select/2.
