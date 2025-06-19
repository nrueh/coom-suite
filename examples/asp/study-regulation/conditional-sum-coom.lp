coom_structure("product").
coom_feature("product","module","Module",3,3).

coom_enumeration("Module").
coom_attribute("Module","ects","num").
coom_attribute("Module","group","str").
coom_option("Module", "BM1").
coom_attribute_value("Module","BM1","ects",9).
coom_attribute_value("Module","BM1","group","b").
coom_option("Module", "BM2").
coom_attribute_value("Module","BM2","ects",9).
coom_attribute_value("Module","BM2","group","b").
coom_option("Module", "BM3").
coom_attribute_value("Module","BM3","ects",9).
coom_attribute_value("Module","BM3","group","b").
coom_option("Module", "AM1").
coom_attribute_value("Module","AM1","ects",6).
coom_attribute_value("Module","AM1","group","a").
coom_option("Module", "AM2").
coom_attribute_value("Module","AM2","ects",6).
coom_attribute_value("Module","AM2","group","a").
coom_option("Module", "AM3").
coom_attribute_value("Module","AM3","ects",6).
coom_attribute_value("Module","AM3","group","a").

coom_behavior(0).
coom_context(0,"product").
coom_alldiff(0,"module").
coom_path("module",0,"module").

coom_behavior(1).
coom_context(1,"product").
coom_require(1,"9=sum(module.ects if module.group=b)").
coom_binary("9=sum(module.ects if module.group=b)","9","=","sum(module.ects if module.group=b)").
coom_number("9",9).
coom_function("product","sum(module.ects if module.group=b)","sum","module.ects").
coom_condition("product","sum(module.ects if module.group=b)","module.group","b").

coom_behavior(2).
coom_context(2,"product").
coom_require(2,"12=sum(module.ects if module.group=a)").
coom_binary("12=sum(module.ects if module.group=a)","12","=","sum(module.ects if module.group=a)").
coom_number("12",12).
coom_function("product","sum(module.ects if module.group=a)","sum","module.ects").
coom_condition("product","sum(module.ects if module.group=a)","module.group","a").
