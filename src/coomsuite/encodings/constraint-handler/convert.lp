% Convert domain values to constraint handler format
convert(T,V,val(CT,V))           :- domain(T,V), discrete(T,CT), CT = (symbol;str;bool;int).
convert(T,V,val(float,float(V))) :- domain(T,V), discrete(T,float).

convert(T,V,val(int,V)) :- range(T,Min,Max), numeric(T,int),   V = Min..Max.
convert(T,V,E)          :- range(T,Min,Max), numeric(T,float), precision(T,P), Factor = 10**P,
                           V = Factor*Min..Factor*Max, E = operation(fdiv,(val(float,float(V)),(val(float,float(Factor)),()))).

% Convert table constraint entries
entry_aux((C,ID),(Col,Row),X,V) :- allow(Idx,(Col,Row),V), column(C,ID,Col,X), C=(Idx,_).

convert(CID,Entry,X,val(CT,V))           :- entry_aux(CID,Entry,X,V), type(X,T), discrete(T,CT), CT = (symbol;str;bool;int).
convert(CID,Entry,X,val(float,float(V))) :- entry_aux(CID,Entry,X,V), type(X,T), discrete(T,float).
convert(CID,Entry,X,val(int,V))          :- entry_aux(CID,Entry,X,V), type(X,T), numeric(T,int).
convert(CID,Entry,X,val(float,float(V))) :- entry_aux(CID,Entry,X,V), type(X,T), numeric(T,float).

% Conver user input values
convert_user(X,V,val(CT,V))           :- type(X,T), discrete(T,CT),    user_value(X,V), CT = (symbol;str;bool;int).
convert_user(X,V,val(float,float(V))) :- type(X,T), discrete(T,float), user_value(X,V).
convert_user(X,V,val(int,V))          :- type(X,T), numeric(T,int),    user_value(X,V).
convert_user(X,V,val(float,float(V))) :- type(X,T), numeric(T,float),  user_value(X,V).
