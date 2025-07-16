part("product").

discrete("Module.ects",int).
discrete("Module.group",str).
discrete("Module",str).
domain("Module.ects",9).
domain("Module.ects",6).
domain("Module.group","b").
domain("Module.group","a").
domain("Module","A").
domain("Module","B").

type("root","product").
type("root.module[0]","Module").
type("root.module[1]","Module").
type("root.module[2]","Module").
type("root.module[0].ects[0]","Module.ects").
type("root.module[1].ects[0]","Module.ects").
type("root.module[2].ects[0]","Module.ects").
type("root.module[0].group[0]","Module.group").
type("root.module[1].group[0]","Module.group").
type("root.module[2].group[0]","Module.group").
index("root.module[0]",0).
index("root.module[1]",1).
index("root.module[2]",2).
index("root.module[2].ects[0]",0).
index("root.module[2].group[0]",0).
index("root.module[1].ects[0]",0).
index("root.module[1].group[0]",0).
index("root.module[0].ects[0]",0).
index("root.module[0].group[0]",0).
parent("root.module[0]","root").
parent("root.module[1]","root").
parent("root.module[2]","root").
parent("root.module[2].ects[0]","root.module[2]").
parent("root.module[2].group[0]","root.module[2]").
parent("root.module[1].ects[0]","root.module[1]").
parent("root.module[1].group[0]","root.module[1]").
parent("root.module[0].ects[0]","root.module[0]").
parent("root.module[0].group[0]","root.module[0]").

constraint(("Module","root.module[0]"),"table").
constraint(("Module","root.module[1]"),"table").
constraint(("Module","root.module[2]"),"table").
column(("Module","root.module[0]"),0,1,"root.module[0].ects[0]").
column(("Module","root.module[1]"),0,1,"root.module[1].ects[0]").
column(("Module","root.module[2]"),0,1,"root.module[2].ects[0]").
column(("Module","root.module[0]"),0,2,"root.module[0].group[0]").
column(("Module","root.module[1]"),0,2,"root.module[1].group[0]").
column(("Module","root.module[2]"),0,2,"root.module[2].group[0]").
column(("Module","root.module[0]"),0,0,"root.module[0]").
column(("Module","root.module[1]"),0,0,"root.module[1]").
column(("Module","root.module[2]"),0,0,"root.module[2]").
allow("Module",(0,0),"A").
allow("Module",(0,1),"B").
allow("Module",(1,1),9).
allow("Module",(2,1),"b").
allow("Module",(1,0),6).
allow("Module",(2,0),"a").

constraint(("root.module",1),"lowerbound").
constraint(("root.module[0].ects",1),"lowerbound").
constraint(("root.module[1].ects",1),"lowerbound").
constraint(("root.module[2].ects",1),"lowerbound").
constraint(("root.module[0].group",1),"lowerbound").
constraint(("root.module[1].group",1),"lowerbound").
constraint(("root.module[2].group",1),"lowerbound").
set("root.module","root.module[0]").
set("root.module","root.module[1]").
set("root.module","root.module[2]").
set("root.module[0].ects","root.module[0].ects[0]").
set("root.module[1].ects","root.module[1].ects[0]").
set("root.module[2].ects","root.module[2].ects[0]").
set("root.module[0].group","root.module[0].group[0]").
set("root.module[1].group","root.module[1].group[0]").
set("root.module[2].group","root.module[2].group[0]").

constraint((0,"12=sum(m.ects for m in root.module if m.group=a)"),"boolean").
binary("12=sum(m.ects for m in root.module if m.group=a)","12","=","sum(m.ects for m in root.module if m.group=a)").
aggregate("sum(m.ects for m in root.module if m.group=a)","sum","root.module.ects").
condition("sum(m.ects for m in root.module if m.group=a)","root.module.group","a").
number("12",12).

set("root.module.ects","root.module[0].ects[0]").
set("root.module.ects","root.module[1].ects[0]").
set("root.module.ects","root.module[2].ects[0]").
property(("root.module.ects","root.module[0].ects[0]"),("root.module.group","root.module[0].group[0]")).
property(("root.module.ects","root.module[1].ects[0]"),("root.module.group","root.module[1].group[0]")).
property(("root.module.ects","root.module[2].ects[0]"),("root.module.group","root.module[2].group[0]")).
