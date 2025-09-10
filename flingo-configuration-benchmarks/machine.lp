#const num_components = 5.
% #const num_subcomponents = 5.

part((component,1..num_components)).
% part((subcomponent,1..num_subcomponents)) :- part(P), P = (component,_).

{ include(P) : part(P) }.
% :- include(P), P = (subcomponent,_),


{ value((P,type),V) : V = (a;b;c) } = 1 :-include(P), P = (component,_).


value((P,price),50) :- value((P,type),a), P = (component,_).
value((P,price),80) :- value((P,type),b), P = (component,_).
value((P,price),30) :- value((P,type),c), P = (component,_).


value(totalPrice,S) :- S = #sum { V,P : include(P), value((P,price),V) }.
