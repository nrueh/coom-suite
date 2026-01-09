% A table constraint is defined if all of its columns are defined
defined((C,ID))   :- column(C,ID,_,_), include(X) : column(C,ID,_,X).

% Create formulas with variables and values or "True" for empty entries
entry((C,ID),(Col,Row)) :- column(C,ID,Col,_), C=(Idx,_), allow(Idx,(_,Row),_).
map_value(CID,Entry,operation(eq,(variable(X),(V,())))) :- convert(CID,Entry,X,V), include(X). % TODO: include needed?
map_value(CID,Entry,val(bool,true))                    :- entry(CID,Entry), not convert(CID,Entry,_,_). % TODO: defined needed?

% For single-valued (or empty) entries, map is just the single expression
% For multi-valued entries, map is disjunction of all values
map_entry_aux(CID,Entry,E,I) :- map_value(CID,Entry,E), I = #count{ E' : map_value(CID,Entry,E'), E' < E }.

map_entry(CID,Entry,E)                 :- map_entry_aux(CID,Entry,E,0),   not map_entry_aux(CID,Entry,_,1).
map_entry_tuple(CID,Entry,(E,()),0)    :- map_entry_aux(CID,Entry,E,0),       map_entry_aux(CID,Entry,_,1).
map_entry_tuple(CID,Entry,(E',E),I+1)  :- map_entry_tuple(CID,Entry,E,I),     map_entry_aux(CID,Entry,E',I+1).
map_entry(CID,Entry,operation(disj,E)) :- map_entry_tuple(CID,Entry,E,I), not map_entry_aux(CID,Entry,_,I+1).

% Build conjunction of all entries in a row
map_row_aux(CID,Row,0,  (E,()))    :- map_entry(CID,(0,Row),E).
map_row_aux(CID,Row,I+1,(E',E))    :- map_row_aux(CID,Row,I,E),     map_entry(CID,(I+1,Row),E').
map_row(CID,Row,operation(conj,E)) :- map_row_aux(CID,Row,I,E), not map_entry(CID,(I+1,Row),_).

% Build disjunction of all rows
table_aux(CID,0,(E,()))       :- map_row(CID,0,E).
table_aux(CID,I+1,(E',E))     :- table_aux(CID,I,E),     map_row(CID,I+1,E').
ensure(CID,operation(disj,E)) :- table_aux(CID,I,E), not map_row(CID,I+1,_), defined(CID).
