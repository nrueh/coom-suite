part("product").
part("Semester").

discrete("Type",str).
domain("Type","Summer").
domain("Type","Winter").

type("root","product").
type("root.semester[0]","Semester").
type("root.semester[1]","Semester").
type("root.semester[1].type[0]","Type").
type("root.semester[0].type[0]","Type").
index("root.semester[0]",0).
index("root.semester[1]",1).
index("root.semester[1].type[0]",0).
index("root.semester[0].type[0]",0).
parent("root.semester[0]","root").
parent("root.semester[1]","root").
parent("root.semester[1].type[0]","root.semester[1]").
parent("root.semester[0].type[0]","root.semester[0]").

explanation(0,"Summer and winter semesters alternate.").
constraint((0,"root.semester[1].type[0]!=root.semester[0].type[0]"),"boolean").
binary(("root.semester[1].type[0]!=root.semester[0].type[0]"),"root.semester[1].type[0]","!=","root.semester[0].type[0]").

constraint(("root.semester",1),"lowerbound").
constraint(("root.semester[0].type",1),"lowerbound").
constraint(("root.semester[1].type",1),"lowerbound").
set("root.semester","root.semester[0]").
set("root.semester","root.semester[1]").
set("root.semester[0].type","root.semester[0].type[0]").
set("root.semester[1].type","root.semester[1].type[0]").
