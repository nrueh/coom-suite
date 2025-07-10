%%% COOM model
coom_structure("product").
coom_feature("product","semester","Semester",1,8).
coom_feature("product","totalECTS","num",1,1).

coom_structure("Semester").
coom_feature("Semester","type","Type",1,1).
coom_feature("Semester","module","Module",0,5).
coom_feature("Semester","semesterECTS","num",1,1).
coom_feature("Semester","previousECTS","num",1,1).

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
coom_explanation(0,"Each module can only be taken once in the whole program.").
coom_alldiff(0,"semester.module").
coom_path("semester.module",0,"semester").
coom_path("semester.module",1,"module").

coom_behavior(1).
coom_context(1,"product").
coom_explanation(1,"The total ECTS is the sum of the ECTS of all taken modules.").
coom_imply(1,"totalECTS","sum(semester.module.ects)").
coom_path("totalECTS",0,"totalECTS").
coom_function("product","sum(semester.module.ects)","sum","semester.module.ects").
coom_path("semester.module.ects",0,"semester").
coom_path("semester.module.ects",1,"module").
coom_path("semester.module.ects",2,"ects").

coom_behavior(2).
coom_context(2,"Semester").
coom_explanation(2,"Summer and winter semesters alternate.").
coom_require(2,"next.type!=type").
coom_binary("next.type!=type","next.type","!=","type").
coom_path("next.type",0,"next").
coom_path("next.type",1,"type").
coom_path("type",0,"type").

coom_behavior(3).
coom_context(3,"Semester").
coom_explanation(3,"A module can only be taken in the semesters it is offered.").
coom_combinations(3,0,"type").
coom_combinations(3,1,"module.type").
coom_path("type",0,"type").
coom_path("module.type",0,"module").
coom_path("module.type",1,"type").
coom_allow(3,(0,0),"Summer").
coom_allow(3,(1,0),"summer").
coom_allow(3,(1,0),"each").
coom_allow(3,(0,1),"Winter").
coom_allow(3,(1,1),"winter").
coom_allow(3,(1,1),"each").

coom_behavior(4).
coom_context(4,"Semester").
coom_explanation(4,"The number of ECTS taken in one semester is equal to the sum of the ECTS of all modules in that semester.").
coom_imply(4,"semesterECTS","sum(module.ects)").
coom_path("semesterECTS",0,"semesterECTS").
coom_function("Semester","sum(module.ects)","sum","module.ects").
coom_path("module.ects",0,"module").
coom_path("module.ects",1,"ects").
