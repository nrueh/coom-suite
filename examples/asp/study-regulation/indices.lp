part("product").
part("Semester").

discrete("Type",str).
domain("Type","Summer").
domain("Type","Winter").

type("root","product").
type("root.semester[0]","Semester").
type("root.semester[1]","Semester").
type("root.semester[2]","Semester").
type("root.semester[3]","Semester").
type("root.semester[3].type[0]","Type").
type("root.semester[2].type[0]","Type").
type("root.semester[1].type[0]","Type").
type("root.semester[0].type[0]","Type").
index("root.semester[0]",0).
index("root.semester[1]",1).
index("root.semester[2]",2).
index("root.semester[3]",3).
index("root.semester[3].type[0]",0).
index("root.semester[2].type[0]",0).
index("root.semester[1].type[0]",0).
index("root.semester[0].type[0]",0).
parent("root.semester[0]","root").
parent("root.semester[1]","root").
parent("root.semester[2]","root").
parent("root.semester[3]","root").
parent("root.semester[3].type[0]","root.semester[3]").
parent("root.semester[2].type[0]","root.semester[2]").
parent("root.semester[1].type[0]","root.semester[1]").
parent("root.semester[0].type[0]","root.semester[0]").

constraint(("root.semester",4),"lowerbound").
constraint(("root.semester[0].type",1),"lowerbound").
constraint(("root.semester[1].type",1),"lowerbound").
constraint(("root.semester[2].type",1),"lowerbound").
constraint(("root.semester[3].type",1),"lowerbound").
set("root.semester","root.semester[0]").
set("root.semester","root.semester[1]").
set("root.semester","root.semester[2]").
set("root.semester","root.semester[3]").
set("root.semester[0].type","root.semester[0].type[0]").
set("root.semester[1].type","root.semester[1].type[0]").
set("root.semester[2].type","root.semester[2].type[0]").
set("root.semester[3].type","root.semester[3].type[0]").

constraint((0,"root.semester[0].type[0]!=root.semester[1].type[0]"),"boolean").
binary("root.semester[0].type[0]!=root.semester[1].type[0]","root.semester[0].type[0]","!=","root.semester[1].type[0]").

constraint((1,"root.semester[1].type[0]!=root.semester[2].type[0]"),"boolean").
binary("root.semester[1].type[0]!=root.semester[2].type[0]","root.semester[1].type[0]","!=","root.semester[2].type[0]").

constraint((2,"root.semester[2].type[0]!=root.semester[3].type[0]"),"boolean").
binary("root.semester[2].type[0]!=root.semester[3].type[0]","root.semester[2].type[0]","!=","root.semester[3].type[0]").
