% Convert domain values to constraint handler format
convert(T,V,val(symbol,V))       :- domain(T,V), discrete(T,symbol).
convert(T,V,val(str,V))          :- domain(T,V), discrete(T,str).
convert(T,V,val(bool,V))         :- domain(T,V), discrete(T,bool).
convert(T,V,val(int,V))          :- domain(T,V), discrete(T,int).
convert(T,V,val(float,float(V))) :- domain(T,V), discrete(T,float).
