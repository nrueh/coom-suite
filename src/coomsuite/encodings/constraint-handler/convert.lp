% Convert domain values to constraint handler format
convert(T,V,constant(symbol(V))) :- domain(T,V), discrete(T,symbol).
convert(T,V,constant(str(V)))    :- domain(T,V), discrete(T,str).
convert(T,V,constant(bool(V)))   :- domain(T,V), discrete(T,bool).
convert(T,V,constant(int(V)))    :- domain(T,V), discrete(T,int).
