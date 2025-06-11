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
