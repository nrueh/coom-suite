part("product").

discrete("Module.ects",int).
discrete("Module.group",str).
discrete("Module",str).
domain("Module.ects",9).
domain("Module.ects",6).
domain("Module.group","b").
domain("Module.group","a").
domain("Module","BM1").
domain("Module","BM2").
domain("Module","AM1").
domain("Module","AM2").
domain("Module","AM3").

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
allow("Module",(0,3),"BM1").
allow("Module",(0,4),"BM2").
allow("Module",(0,0),"AM1").
allow("Module",(0,1),"AM2").
allow("Module",(0,2),"AM3").
allow("Module",(1,2),6).
allow("Module",(2,2),"a").
allow("Module",(1,1),6).
allow("Module",(2,1),"a").
allow("Module",(1,0),6).
allow("Module",(2,0),"a").
allow("Module",(1,4),9).
allow("Module",(2,4),"b").
allow("Module",(1,3),9).
allow("Module",(2,3),"b").

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

constraint("root.module","alldiff").
set("root.module","root.module[2]").
set("root.module","root.module[1]").
set("root.module","root.module[0]").

constraint((1,"9=sum(root.module.ects if root.module.group=b)"),"boolean").
binary("9=sum(root.module.ects if root.module.group=b)","9","=","sum(root.module.ects if root.module.group=b)").
function("sum(root.module.ects if root.module.group=b)","sum","root.module.ects").
condition("sum(root.module.ects if root.module.group=b)","root.module.group","b").
number("9",9).

constraint((1,"12=sum(root.module.ects if root.module.group=a)"),"boolean").
binary("12=sum(root.module.ects if root.module.group=a)","12","=","sum(root.module.ects if root.module.group=a)").
function("sum(root.module.ects if root.module.group=a)","sum","root.module.ects").
condition("sum(root.module.ects if root.module.group=a)","root.module.group","a").
number("12",12).

set("root.module.ects","root.module[0].ects[0]").
set("root.module.ects","root.module[1].ects[0]").
set("root.module.ects","root.module[2].ects[0]").
property("root.module.ects","root.module[0].ects[0]","root.module.group","root.module[0].group[0]").
property("root.module.ects","root.module[1].ects[0]","root.module.group","root.module[1].group[0]").
property("root.module.ects","root.module[2].ects[0]","root.module.group","root.module[2].group[0]").
