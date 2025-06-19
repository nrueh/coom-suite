discrete("Module",str).
domain("Module","BM1").
domain("Module","BM2").
domain("Module","Thesis").

type("root","product").
type("root.modules[0]","Module").
type("root.modules[1]","Module").
index("root.modules[0]",0).
index("root.modules[1]",1).
parent("root.modules[0]","root").
parent("root.modules[1]","root").

constraint(("root.modules",2),"lowerbound").
set("root.modules","root.modules[0]").
set("root.modules","root.modules[1]").
part("product").
constant("Thesis").

constraint(("root.modules","Thesis"),"exists").
set("root.modules","root.modules[0]").
set("root.modules","root.modules[1]").

% constraint("root.modules","alldiff").
% set("root.modules","root.modules[0]").
% set("root.modules","root.modules[1]").
