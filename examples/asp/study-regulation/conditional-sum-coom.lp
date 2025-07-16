%%% COOM model
coom_structure("product").
coom_feature("product","module","Module",3,3).

coom_enumeration("Module").
coom_attribute("Module","ects","num").
coom_attribute("Module","group","str").
coom_option("Module", "A").
coom_attribute_value("Module","A","ects",6).
coom_attribute_value("Module","A","group","a").
coom_option("Module", "B").
coom_attribute_value("Module","B","ects",9).
coom_attribute_value("Module","B","group","b").

coom_behavior(0).
coom_context(0,"product").
coom_require(0,"12=sum(m.ectsforminmoduleifm.group=a)").
coom_binary("12=sum(m.ectsforminmoduleifm.group=a)","12","=","sum(m.ectsforminmoduleifm.group=a)").
coom_number("12",12).
coom_aggregate("product","sum(m.ectsforminmoduleifm.group=a)","sum").
coom_aggregate_set("product","sum(m.ectsforminmoduleifm.group=a)","module").
coom_aggregate_variable("product","sum(m.ectsforminmoduleifm.group=a)","m").
coom_aggregate_value("product","sum(m.ectsforminmoduleifm.group=a)","m.ects").
coom_aggregate_condition("product","sum(m.ectsforminmoduleifm.group=a)","m.group=a").
coom_path("m.ects",0,"m").
coom_path("m.ects",1,"ects").
coom_path("module",0,"module").
coom_binary("m.group=a","m.group","=","a").
coom_path("m.group",0,"m").
coom_path("m.group",1,"group").
coom_path("a",0,"a").
