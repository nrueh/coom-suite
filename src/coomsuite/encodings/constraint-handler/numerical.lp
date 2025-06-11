% Generate exactly one value for each (numeric) integer attribute if it is included
{ assign(a(X),X,E) : convert(T,V,E) } = 1 :- include(X), type(X,T), numeric(T,int).

% Check ranges
assign(range,trang(NAME),CHECK) :- range(TYPE,MIN,MAX),
    type(NAME,TYPE),
    CHECK = operation(conj,(LB,(UB,()))),
    LB = operation(leq,(EMIN,(VAR,()))),
    UB = operation(leq,(VAR,(EMAX,()))),
    VAR = variable(NAME),
    EMIN = val(int,MIN),
    EMAX = val(int,MAX).


violated((NAME,range)) :- range(TYPE,MIN,MAX), type(NAME,TYPE), value(trang(NAME),bool,false).


assign(numbers,XN,val(int,I))         :- number(XN,I).
assign(float,XN,val(float,float(XN))) :- float(XN).

% Non-determinism for floats
% { assign(dummy,X,E) } = 1 :- floatRange(X,MIN,MAX,INCR),
%                              V = MIN*INCR..MAX*INCR,
%                              E = operation(floatdiv,(val(int,V),(val(int,INCR),()))).
