%%% COOM model
coom_structure("product").
coom_feature("product","module","Module",3,3).

coom_enumeration("Module").
coom_attribute("Module","ects","num").
coom_attribute("Module","group","str").
coom_option("Module", "A1").
coom_attribute_value("Module","A1","ects",6).
coom_attribute_value("Module","A1","group","A").
coom_option("Module", "B1").
coom_attribute_value("Module","B1","ects",9).
coom_attribute_value("Module","B1","group","B").

coom_behavior(0).
coom_context(0,"product").
coom_require(0,"12=sum(m.ectsforminmoduleifm.group=A)").
coom_binary("12=sum(m.ectsforminmoduleifm.group=A)","12","=","sum(m.ectsforminmoduleifm.group=A)").
coom_number("12",12).
coom_aggregate("product","sum(m.ectsforminmoduleifm.group=A)","sum").
coom_aggregate_set("product","sum(m.ectsforminmoduleifm.group=A)","module").
coom_aggregate_variable("product","sum(m.ectsforminmoduleifm.group=A)","m").
coom_aggregate_value("product","sum(m.ectsforminmoduleifm.group=A)","m.ects").
coom_aggregate_condition("product","sum(m.ectsforminmoduleifm.group=A)","m.group=A").
coom_path("m.ects",0,"m").
coom_path("m.ects",1,"ects").
coom_path("module",0,"module").
coom_binary("m.group=A","m.group","=","A").
coom_path("m.group",0,"m").
coom_path("m.group",1,"group").
coom_path("A",0,"A").
