% Assign a value to an integer attribute if a range is given, otherwise use system-given maximum range
% &in{Min..Max} =: X :- include(X), type(X,T), integer(T),     range(T,Min,Max).
&sum{Min} <= X :- include(X), type(X,T), numeric(T,int),     range(T,Min,_), Min != #inf.
&sum{Max} >= X :- include(X), type(X,T), numeric(T,int),     range(T,_,Max), Max != #sup.
&sum{X} = X    :- include(X), type(X,T), numeric(T,int), not range(T,_,_).

% Translate discrete integer attributes (only needed when preprocessing is done in a way that discrete attributes are not translated to integers)
&sum{V} = X :- include(X), type(X,T), discrete(T,int), value(X,V).

% Auxiliary values for numbers.
&sum{N} = Path :- number(Path,N).
