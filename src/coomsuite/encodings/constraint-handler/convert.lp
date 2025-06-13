% Convert domain values to constraint handler format
convert(T,V,val(CT,V))           :- domain(T,V), discrete(T,CT), CT = (symbol;str;bool;int).
convert(T,V,val(float,float(V))) :- domain(T,V), discrete(T,float).

convert(T,V,val(int,V)) :- range(T,Min,Max), numeric(T,int),   V = Min..Max.
convert(T,V,E)          :- range(T,Min,Max), numeric(T,float), precision(T,P), Factor = 10**P,
                           V = Factor*Min..Factor*Max, E = operation(ratdiv,(val(int,V),(val(int,Factor),()))).
