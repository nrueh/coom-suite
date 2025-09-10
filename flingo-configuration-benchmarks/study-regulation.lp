#const num_semester=4.
#const required_ects=120.

semester(1..num_semester).
% Winter and Summer semester?

% module(a1). module(a2). module(a3). module(a4). module(a5).
% module(b1). module(b2). module(b3). module(b4). module(b5).
% module(p1). module(p2). module(p3).
% module(thesis).

ects((a,1..10),9).
ects((b,1..6),6).
ects((p,1..3),12).
ects(thesis,30).

% group(a1,a). group(a2,a). group(a3,a). group(a4,a). group(a5,a).
% group(b1,b). group(b2,b). group(b3,b). group(b4,b). group(b5,b).
% group(thesis,t).

module(M) :- ects(M,_).
{ select(S,M) : module(M) } :- semester(S).

% each module at most once
:- select(S1,M), select(S2,M), S1 < S2.

% have to take thesis
:- not select(S,thesis) : semester(S).

% At least 90 ECTS must be taken before the thesis can be taken
:- semester(S), select(S,thesis), #sum{ E,M,S1 : select(S1,M), S1 < S, ects(M,E) } < 90.

% The number of ECTS of modules in group a has to be equal to 27
:- not #sum{ E,M,S : select(S,M), ects(M,E), M = (a,_) } = 27.

% % The number of ECTS of modules in group b has to be equal to 24
% :- not #sum{ E,M,S : select(S,M), group(M,b), ects(M,E) } = 24.

% Sum of all ECTS must be equal to required ECTS
:- not required_ects = #sum{ E,M,S : select(S,M), ects(M,E) }.
% :- total_ects(N), not N = required_ects.

#show select/2.
% #show total_ects/1.
