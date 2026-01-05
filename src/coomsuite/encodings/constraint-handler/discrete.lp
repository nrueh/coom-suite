% Generate exactly one value for each discrete attribute if it is included
%{ assign(a(X),X,E) : convert(T,V,E) } = 1 :- include(X), type(X,T), discrete(T,_).
variable_declare(a(X),X,fromFacts) :- include(X), type(X,T), discrete(T,_).
variable_domain(X,E)               :- include(X), type(X,T), discrete(T,_), convert(T,V,E).
