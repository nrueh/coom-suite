% Features
feature((component;jacket;jacket_material;mat1;mat2;jacket_design;h_design;o_design;raco_design;flange;extended_heel;spring;h_spring;heavy;standard;raco_spring;o_spring;double;spacer;normal_spacer;ball_spacer;t_spacer)).

% Feature tree
root(component).

mandatory(component,jacket).
mandatory(component,spring).
optional(component,spacer).

mandatory(jacket,jacket_material).
or(jacket_material,mat1).
or(jacket_material,mat2).

mandatory(jacket,jacket_design).
or(jacket_design,h_design).
or(jacket_design,o_design).
or(jacket_design,raco_design).

optional(jacket,flange).
optional(jacket,extended_heel).

or(spring,h_spring).
or(spring,raco_spring).
or(spring,o_spring).

or(h_spring,heavy).
or(h_spring,standard).

optional(o_spring,double).

or(spacer,normal_spacer).
or(spacer,ball_spacer).
or(spacer,t_spacer).
