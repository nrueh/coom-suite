%%% COOM model
coom_structure("product").
coom_feature("product","semester","Semester",1,8).

coom_structure("Semester").
coom_feature("Semester","id","ID",1,1).
coom_feature("Semester","type","Type",1,1).
coom_feature("Semester","module","Module",0,5).
coom_feature("Semester","currentECTS","num",1,1).

coom_enumeration("ID").
coom_attribute("ID","id","num").
coom_option("ID", "first").
coom_attribute_value("ID","first","id",1).
coom_option("ID", "second").
coom_attribute_value("ID","second","id",2).
coom_option("ID", "third").
coom_attribute_value("ID","third","id",3).
coom_option("ID", "fourth").
coom_attribute_value("ID","fourth","id",4).

coom_enumeration("Type").
coom_option("Type", "Summer").
coom_option("Type", "Winter").

coom_enumeration("Module").
coom_attribute("Module","ects","num").
coom_attribute("Module","type","str").
coom_attribute("Module","group","str").
coom_option("Module", "BM1").
coom_attribute_value("Module","BM1","ects",9).
coom_attribute_value("Module","BM1","type","winter").
coom_attribute_value("Module","BM1","group","b").
coom_option("Module", "BM2").
coom_attribute_value("Module","BM2","ects",9).
coom_attribute_value("Module","BM2","type","summer").
coom_attribute_value("Module","BM2","group","b").
coom_option("Module", "BM3").
coom_attribute_value("Module","BM3","ects",9).
coom_attribute_value("Module","BM3","type","winter").
coom_attribute_value("Module","BM3","group","b").
coom_option("Module", "AM1_1").
coom_attribute_value("Module","AM1_1","ects",6).
coom_attribute_value("Module","AM1_1","type","each").
coom_attribute_value("Module","AM1_1","group","a").
coom_option("Module", "AM1_2").
coom_attribute_value("Module","AM1_2","ects",6).
coom_attribute_value("Module","AM1_2","type","each").
coom_attribute_value("Module","AM1_2","group","a").
coom_option("Module", "AM2_1").
coom_attribute_value("Module","AM2_1","ects",6).
coom_attribute_value("Module","AM2_1","type","each").
coom_attribute_value("Module","AM2_1","group","a").
coom_option("Module", "AM2_2").
coom_attribute_value("Module","AM2_2","ects",6).
coom_attribute_value("Module","AM2_2","type","each").
coom_attribute_value("Module","AM2_2","group","a").
coom_option("Module", "AM3_1").
coom_attribute_value("Module","AM3_1","ects",6).
coom_attribute_value("Module","AM3_1","type","each").
coom_attribute_value("Module","AM3_1","group","a").
coom_option("Module", "AM3_2").
coom_attribute_value("Module","AM3_2","ects",6).
coom_attribute_value("Module","AM3_2","type","each").
coom_attribute_value("Module","AM3_2","group","a").
coom_option("Module", "PM1").
coom_attribute_value("Module","PM1","ects",12).
coom_attribute_value("Module","PM1","type","each").
coom_attribute_value("Module","PM1","group","p").
coom_option("Module", "PM2").
coom_attribute_value("Module","PM2","ects",12).
coom_attribute_value("Module","PM2","type","each").
coom_attribute_value("Module","PM2","group","p").
coom_option("Module", "PM3").
coom_attribute_value("Module","PM3","ects",12).
coom_attribute_value("Module","PM3","type","each").
coom_attribute_value("Module","PM3","group","p").
coom_option("Module", "IM").
coom_attribute_value("Module","IM","ects",15).
coom_attribute_value("Module","IM","type","each").
coom_attribute_value("Module","IM","group","i").
coom_option("Module", "Thesis").
coom_attribute_value("Module","Thesis","ects",30).
coom_attribute_value("Module","Thesis","type","each").
coom_attribute_value("Module","Thesis","group","t").

coom_behavior(0).
coom_context(0,"product").
coom_require(0,"semester[i].type!=semester[i<missing ']'>+1").
coom_binary("semester[i].type!=semester[i<missing ']'>+1","semester[i].type","!=","semester[i<missing ']'>+1").
coom_path("semester[i].type",0,"semester[i]").
coom_path("semester[i].type",1,"type").
coom_binary("semester[i<missing ']'>+1","semester[i<missing ']'>","+","1").
coom_path("semester[i<missing ']'>",0,"semester[i<missing ']'>").
coom_number("1",1).

coom_behavior(1).
coom_context(1,"Semester").
coom_combinations(1,0,"type").
coom_combinations(1,1,"module.type").
coom_path("type",0,"type").
coom_path("module.type",0,"module").
coom_path("module.type",1,"type").
coom_allow(1,(0,0),"Summer").
coom_allow(1,(1,0),"summer").
coom_allow(1,(1,0),"each").
coom_allow(1,(0,1),"Winter").
coom_allow(1,(1,1),"winter").
coom_allow(1,(1,1),"each").

coom_behavior(2).
coom_context(2,"Semester").
coom_imply(2,"currentECTS","sum").
coom_path("currentECTS",0,"currentECTS").
coom_path("sum",0,"sum").

coom_behavior(3).
coom_context(3,"Semester").
coom_condition(3,"currentECTS<90").
coom_binary("currentECTS<90","currentECTS","<","90").
coom_path("currentECTS",0,"currentECTS").
coom_number("90",90).
coom_require(3,"module!=Thesis").
coom_binary("module!=Thesis","module","!=","Thesis").
coom_path("module",0,"module").
coom_constant("Thesis").

coom_behavior(4).
coom_context(4,"product").
coom_require(4,"120=sum(semester.module.ects)").
coom_binary("120=sum(semester.module.ects)","120","=","sum(semester.module.ects)").
coom_number("120",120).
coom_function("product","sum(semester.module.ects)","sum","semester.module.ects").
coom_path("semester.module.ects",0,"semester").
coom_path("semester.module.ects",1,"module").
coom_path("semester.module.ects",2,"ects").

coom_behavior(5).
coom_context(5,"product").
coom_require(5,"27=sum").
coom_binary("27=sum","27","=","sum").
coom_number("27",27).
coom_path("sum",0,"sum").

coom_behavior(6).
coom_context(6,"product").
coom_require(6,"24=sum").
coom_binary("24=sum","24","=","sum").
coom_number("24",24).
coom_path("sum",0,"sum").

coom_behavior(7).
coom_context(7,"product").
coom_require(7,"24=sum").
coom_binary("24=sum","24","=","sum").
coom_number("24",24).
coom_path("sum",0,"sum").

coom_behavior(8).
coom_context(8,"product").
coom_path("semester.module",0,"semester").
coom_path("semester.module",1,"module").
coom_path("semester.module",0,"semester").
coom_path("semester.module",1,"module").

coom_behavior(8).
coom_context(8,"product").
coom_require(8,"semester.module!=semester.module").
coom_binary("semester.module!=semester.module","semester.module","!=","semester.module").
coom_path("semester.module",0,"semester").
coom_path("semester.module",1,"module").
coom_path("semester.module",0,"semester").
coom_path("semester.module",1,"module").
