coom_structure("product").
coom_feature("product","semester","Semester",1,4).

coom_structure("Semester").
coom_feature("Semester","type","Type",1,1).

coom_enumeration("Type").
coom_option("Type", "Summer").
coom_option("Type", "Winter").

coom_behavior(0).
coom_context(0,"product").
coom_require(0,"semester[0].type!=semester[1].type").
coom_binary("semester[0].type!=semester[1].type","semester[0].type","!=","semester[1].type").
coom_path("semester[0].type",0,"semester[0]").
coom_path("semester[0].type",1,"type").
coom_path("semester[1].type",0,"semester[1]").
coom_path("semester[1].type",1,"type").

coom_behavior(1).
coom_context(1,"product").
coom_require(1,"semester[1].type!=semester[2].type").
coom_binary("semester[1].type!=semester[2].type","semester[1].type","!=","semester[2].type").
coom_path("semester[1].type",0,"semester[1]").
coom_path("semester[1].type",1,"type").
coom_path("semester[2].type",0,"semester[2]").
coom_path("semester[2].type",1,"type").

coom_behavior(2).
coom_context(2,"product").
coom_require(2,"semester[2].type!=semester[3].type").
coom_binary("semester[2].type!=semester[3].type","semester[2].type","!=","semester[3].type").
coom_path("semester[2].type",0,"semester[2]").
coom_path("semester[2].type",1,"type").
coom_path("semester[3].type",0,"semester[3]").
coom_path("semester[3].type",1,"type").
