% Convert domain values to constraint handler format
convert(T,V,val(CT,V))           :- domain(T,V), discrete(T,CT), CT = (symbol;str;bool;int).
convert(T,V,val(float,float(V))) :- domain(T,V), discrete(T,float).

convert(T,V,val(int,V))          :- range(T,Min,Max), numeric(T,int), V = Min..Max.
