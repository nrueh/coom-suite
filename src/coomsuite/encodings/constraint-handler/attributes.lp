% Generate exactly one value for each discrete attribute if it is included
variable_declare(a(X),X,fromFacts) :- include(X), type(X,T), discrete(T,_).
variable_domain(X,E)               :- include(X), type(X,T), discrete(T,_), convert(T,V,E).

% Generate exactly one value for each (numeric) integer/float attribute if it is included and has a range specified
% TODO: Open ranges
variable_declare(a(X),X,fromFacts)  :- include(X), type(X,T), numeric(T,_), range(T,_,_).
variable_domain(X,E)                :- include(X), type(X,T), numeric(T,_), range(T,_,_), convert(T,V,E).

% Check ranges for numeric attributes
ensure(range,CHECK) :- range(TYPE,MIN,MAX),
    type(NAME,TYPE),
    CHECK = operation(conj,(LB,(UB,()))),
    LB = operation(leq,(EMIN,(VAR,()))),
    UB = operation(leq,(VAR,(EMAX,()))),
    VAR = variable(NAME),
    EMIN = val(int,MIN),
    EMAX = val(int,MAX).
