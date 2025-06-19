coom_structure("product").
coom_feature("product","modules","Module",1,2).

coom_enumeration("Module").
coom_option("Module", "BM1").
coom_option("Module", "BM2").
coom_option("Module", "Thesis").

coom_behavior(0).
coom_context(0,"product").
coom_exists(0,modules,"Thesis").
coom_constant("Thesis").
coom_path("modules",0,"modules").
