%%% COOM model
coom_structure("product").
coom_feature("product","bean_container","Bean_Container",1,3).
coom_feature("product","water_tank","Water_Tank",1,1).
coom_feature("product","grinding_unit","Grinding_Unit",1,1).
coom_feature("product","brew_unit","Brew_Unit",1,1).
coom_feature("product","milk_system","Milk_System",0,1).
coom_feature("product","cup_warmer","Cup_Warmer",1,1).
coom_feature("product","additional_equipment","Additional_Equipment",1,1).

coom_structure("Bean_Container").
coom_feature("Bean_Container","bom_bc","BOM_BC",1,1).
coom_feature("Bean_Container","color","Color",1,1).
coom_feature("Bean_Container","volume_bean_chamber","Bean_Chamber",1,1).

coom_structure("BOM_BC").
coom_feature("BOM_BC","mat_bean_container","MAT_bean_container",1,1).

coom_structure("Water_Tank").
coom_feature("Water_Tank","bom_wt","BOM_WT",1,1).
coom_feature("Water_Tank","tank_volume","Tank_Volume",1,1).
coom_feature("Water_Tank","water_pipe_connection","bool",1,1).
coom_feature("Water_Tank","water_pump","Water_Pump",1,1).

coom_structure("BOM_WT").
coom_feature("BOM_WT","mat_water_tank","MAT_Water_Tank",1,1).

coom_structure("Water_Pump").
coom_feature("Water_Pump","required_water_pressure","num",1,1).
coom_unit("Water_Pump","required_water_pressure","bar").
coom_range("Water_Pump","required_water_pressure",2,6).

coom_structure("Grinding_Unit").
coom_feature("Grinding_Unit","bom_gu","BOM_GU",1,1).
coom_feature("Grinding_Unit","noise_level","Noise_Level",1,1).
coom_feature("Grinding_Unit","type","Grinding_Type",1,1).
coom_feature("Grinding_Unit","grinding_frame","Frame",1,1).
coom_feature("Grinding_Unit","material","Grinder_Material",1,1).
coom_feature("Grinding_Unit","weight","num",1,1).

coom_structure("BOM_GU").
coom_feature("BOM_GU","mat_grinder","MAT_Grinding_Core",1,1).
coom_feature("BOM_GU","mat_grind_drive","MAT_Grinder_Drive",1,1).

coom_structure("Brew_Unit").
coom_feature("Brew_Unit","bom_bu","BOM_BU",1,1).
coom_feature("Brew_Unit","brewing_chamber","Brewing_Chamber",1,1).
coom_feature("Brew_Unit","brew_pump","Pump",1,1).
coom_feature("Brew_Unit","pressure_tank","Pressure_Tank",1,1).
coom_feature("Brew_Unit","heating_system","Heating_System",1,1).

coom_structure("BOM_BU").
coom_feature("BOM_BU","mat_brewing_case","MAT_Brewing_Pump",1,1).
coom_feature("BOM_BU","mat_brewing_controller","MAT_Brewing_Controller",1,1).

coom_structure("Milk_System").
coom_feature("Milk_System","milk_warmer","Available",1,1).
coom_feature("Milk_System","milk_foamer","Available",1,1).

coom_structure("Cup_Warmer").
coom_feature("Cup_Warmer","bom_cw","BOM_CW",1,1).
coom_feature("Cup_Warmer","size","Heating_Plate_Size",1,1).
coom_feature("Cup_Warmer","heating_plate","Active_Heating_Plate",1,1).

coom_structure("BOM_CW").
coom_feature("BOM_CW","mat_cup_warmer","MAT_Cup_Warmer",1,1).

coom_structure("Additional_Equipment").
coom_feature("Additional_Equipment","bom_ae","BOM_AE",1,1).
coom_feature("Additional_Equipment","water_filter","Available",1,1).
coom_feature("Additional_Equipment","coin_slot","Available",1,1).
coom_feature("Additional_Equipment","timer_switch","Available",1,1).

coom_structure("BOM_AE").
coom_feature("BOM_AE","mat_water_filter","MAT_Water_Filter",1,1).
coom_feature("BOM_AE","mat_coin_slot","MAT_Coin_Slot",1,1).

coom_enumeration("MAT_bean_container").
coom_attribute("MAT_bean_container","volume","num").
coom_option("MAT_bean_container", "M_BC5290520").
coom_attribute_value("MAT_bean_container","M_BC5290520","volume",800).
coom_option("MAT_bean_container", "M_BC2059800").
coom_attribute_value("MAT_bean_container","M_BC2059800","volume",1200).
coom_option("MAT_bean_container", "M_BC2059345").
coom_attribute_value("MAT_bean_container","M_BC2059345","volume",2000).

coom_enumeration("Color").
coom_attribute("Color","RAL_code","str").
coom_attribute("Color","HTML_code","str").
coom_option("Color", "green_beige").
coom_attribute_value("Color","green_beige","RAL_code","1000").
coom_attribute_value("Color","green_beige","HTML_code","#D7C9A1").
coom_option("Color", "beige").
coom_attribute_value("Color","beige","RAL_code","1001").
coom_attribute_value("Color","beige","HTML_code","#CEA176").
coom_option("Color", "sand_yellow").
coom_attribute_value("Color","sand_yellow","RAL_code","1002").
coom_attribute_value("Color","sand_yellow","HTML_code","#D0B173").
coom_option("Color", "signal_yellow").
coom_attribute_value("Color","signal_yellow","RAL_code","1003").
coom_attribute_value("Color","signal_yellow","HTML_code","#F2AD00").
coom_option("Color", "golden_yellow").
coom_attribute_value("Color","golden_yellow","RAL_code","1004").
coom_attribute_value("Color","golden_yellow","HTML_code","#E4A700").
coom_option("Color", "honey_yellow").
coom_attribute_value("Color","honey_yellow","RAL_code","1005").
coom_attribute_value("Color","honey_yellow","HTML_code","#C79600").
coom_option("Color", "maize_yellow").
coom_attribute_value("Color","maize_yellow","RAL_code","1006").
coom_attribute_value("Color","maize_yellow","HTML_code","#D99300").
coom_option("Color", "daffodil_yellow").
coom_attribute_value("Color","daffodil_yellow","RAL_code","1007").
coom_attribute_value("Color","daffodil_yellow","HTML_code","#E69400").
coom_option("Color", "brown_beige").
coom_attribute_value("Color","brown_beige","RAL_code","1011").
coom_attribute_value("Color","brown_beige","HTML_code","#AF8552").
coom_option("Color", "lemon_yellow").
coom_attribute_value("Color","lemon_yellow","RAL_code","1012").
coom_attribute_value("Color","lemon_yellow","HTML_code","#E5D900").
coom_option("Color", "oyster_white").
coom_attribute_value("Color","oyster_white","RAL_code","1013").
coom_attribute_value("Color","oyster_white","HTML_code","#E8DFB0").
coom_option("Color", "ivory").
coom_attribute_value("Color","ivory","RAL_code","1014").
coom_attribute_value("Color","ivory","HTML_code","#E1CC88").
coom_option("Color", "light_ivory").
coom_attribute_value("Color","light_ivory","RAL_code","1015").
coom_attribute_value("Color","light_ivory","HTML_code","#E6D690").
coom_option("Color", "sulfur_yellow").
coom_attribute_value("Color","sulfur_yellow","RAL_code","1016").
coom_attribute_value("Color","sulfur_yellow","HTML_code","#EFF300").
coom_option("Color", "saffron_yellow").
coom_attribute_value("Color","saffron_yellow","RAL_code","1017").
coom_attribute_value("Color","saffron_yellow","HTML_code","#F4B752").
coom_option("Color", "zinc_yellow").
coom_attribute_value("Color","zinc_yellow","RAL_code","1018").
coom_attribute_value("Color","zinc_yellow","HTML_code","#F3E03B").
coom_option("Color", "grey_beige").
coom_attribute_value("Color","grey_beige","RAL_code","1019").
coom_attribute_value("Color","grey_beige","HTML_code","#A4957D").
coom_option("Color", "olive_yellow").
coom_attribute_value("Color","olive_yellow","RAL_code","1020").
coom_attribute_value("Color","olive_yellow","HTML_code","#999950").
coom_option("Color", "rape_yellow").
coom_attribute_value("Color","rape_yellow","RAL_code","1021").
coom_attribute_value("Color","rape_yellow","HTML_code","#F3DA0B").
coom_option("Color", "traffic_yellow").
coom_attribute_value("Color","traffic_yellow","RAL_code","1023").
coom_attribute_value("Color","traffic_yellow","HTML_code","#FAD201").
coom_option("Color", "ochre_yellow").
coom_attribute_value("Color","ochre_yellow","RAL_code","1024").
coom_attribute_value("Color","ochre_yellow","HTML_code","#AEA04B").
coom_option("Color", "curry_yellow").
coom_attribute_value("Color","curry_yellow","RAL_code","1027").
coom_attribute_value("Color","curry_yellow","HTML_code","#A38C15").
coom_option("Color", "melon_yellow").
coom_attribute_value("Color","melon_yellow","RAL_code","1028").
coom_attribute_value("Color","melon_yellow","HTML_code","#FFAB00").
coom_option("Color", "broom_yellow").
coom_attribute_value("Color","broom_yellow","RAL_code","1032").
coom_attribute_value("Color","broom_yellow","HTML_code","#D6AE01").
coom_option("Color", "dahlia_yellow").
coom_attribute_value("Color","dahlia_yellow","RAL_code","1033").
coom_attribute_value("Color","dahlia_yellow","HTML_code","#F3A505").
coom_option("Color", "pastel_yellow").
coom_attribute_value("Color","pastel_yellow","RAL_code","1034").
coom_attribute_value("Color","pastel_yellow","HTML_code","#EFA94A").
coom_option("Color", "pearl_beige").
coom_attribute_value("Color","pearl_beige","RAL_code","1035").
coom_attribute_value("Color","pearl_beige","HTML_code","#6A5D4D").
coom_option("Color", "pearl_gold").
coom_attribute_value("Color","pearl_gold","RAL_code","1036").
coom_attribute_value("Color","pearl_gold","HTML_code","#705335").
coom_option("Color", "sun_yellow").
coom_attribute_value("Color","sun_yellow","RAL_code","1037").
coom_attribute_value("Color","sun_yellow","HTML_code","#F39F18").
coom_option("Color", "yellow_orange").
coom_attribute_value("Color","yellow_orange","RAL_code","2000").
coom_attribute_value("Color","yellow_orange","HTML_code","#EE7600").
coom_option("Color", "red_orange").
coom_attribute_value("Color","red_orange","RAL_code","2001").
coom_attribute_value("Color","red_orange","HTML_code","#DD5300").
coom_option("Color", "vermilion").
coom_attribute_value("Color","vermilion","RAL_code","2002").
coom_attribute_value("Color","vermilion","HTML_code","#CB2821").
coom_option("Color", "pastel_orange").
coom_attribute_value("Color","pastel_orange","RAL_code","2003").
coom_attribute_value("Color","pastel_orange","HTML_code","#FF7514").
coom_option("Color", "pure_orange").
coom_attribute_value("Color","pure_orange","RAL_code","2004").
coom_attribute_value("Color","pure_orange","HTML_code","#F44611").
coom_option("Color", "luminous_orange").
coom_attribute_value("Color","luminous_orange","RAL_code","2005").
coom_attribute_value("Color","luminous_orange","HTML_code","#FF2301").
coom_option("Color", "luminous_bright_orange").
coom_attribute_value("Color","luminous_bright_orange","RAL_code","2007").
coom_attribute_value("Color","luminous_bright_orange","HTML_code","#FFA420").
coom_option("Color", "bright_red_orange").
coom_attribute_value("Color","bright_red_orange","RAL_code","2008").
coom_attribute_value("Color","bright_red_orange","HTML_code","#F75E25").
coom_option("Color", "traffic_orange").
coom_attribute_value("Color","traffic_orange","RAL_code","2009").
coom_attribute_value("Color","traffic_orange","HTML_code","#F54021").
coom_option("Color", "signal_orange").
coom_attribute_value("Color","signal_orange","RAL_code","2010").
coom_attribute_value("Color","signal_orange","HTML_code","#D84B20").
coom_option("Color", "deep_orange").
coom_attribute_value("Color","deep_orange","RAL_code","2011").
coom_attribute_value("Color","deep_orange","HTML_code","#EC7C26").
coom_option("Color", "salmon_orange").
coom_attribute_value("Color","salmon_orange","RAL_code","2012").
coom_attribute_value("Color","salmon_orange","HTML_code","#E55137").
coom_option("Color", "pearl_orange").
coom_attribute_value("Color","pearl_orange","RAL_code","2013").
coom_attribute_value("Color","pearl_orange","HTML_code","#C35831").
coom_option("Color", "flame_red").
coom_attribute_value("Color","flame_red","RAL_code","3000").
coom_attribute_value("Color","flame_red","HTML_code","#AF2B1E").
coom_option("Color", "signal_red").
coom_attribute_value("Color","signal_red","RAL_code","3001").
coom_attribute_value("Color","signal_red","HTML_code","#A52019").
coom_option("Color", "carmine_red").
coom_attribute_value("Color","carmine_red","RAL_code","3002").
coom_attribute_value("Color","carmine_red","HTML_code","#A2231D").
coom_option("Color", "ruby_red").
coom_attribute_value("Color","ruby_red","RAL_code","3003").
coom_attribute_value("Color","ruby_red","HTML_code","#9B111E").
coom_option("Color", "purple_red").
coom_attribute_value("Color","purple_red","RAL_code","3004").
coom_attribute_value("Color","purple_red","HTML_code","#75151E").
coom_option("Color", "wine_red").
coom_attribute_value("Color","wine_red","RAL_code","3005").
coom_attribute_value("Color","wine_red","HTML_code","#5E2129").
coom_option("Color", "black_red").
coom_attribute_value("Color","black_red","RAL_code","3007").
coom_attribute_value("Color","black_red","HTML_code","#412227").
coom_option("Color", "oxide_red").
coom_attribute_value("Color","oxide_red","RAL_code","3009").
coom_attribute_value("Color","oxide_red","HTML_code","#642424").
coom_option("Color", "brown_red").
coom_attribute_value("Color","brown_red","RAL_code","3011").
coom_attribute_value("Color","brown_red","HTML_code","#781F19").
coom_option("Color", "tomato_red").
coom_attribute_value("Color","tomato_red","RAL_code","3012").
coom_attribute_value("Color","tomato_red","HTML_code","#C1876B").
coom_option("Color", "antique_pink").
coom_attribute_value("Color","antique_pink","RAL_code","3014").
coom_attribute_value("Color","antique_pink","HTML_code","#D36E70").
coom_option("Color", "light_pink").
coom_attribute_value("Color","light_pink","RAL_code","3015").
coom_attribute_value("Color","light_pink","HTML_code","#E3A0AC").
coom_option("Color", "coral_red").
coom_attribute_value("Color","coral_red","RAL_code","3016").
coom_attribute_value("Color","coral_red","HTML_code","#B32821").
coom_option("Color", "rose_red").
coom_attribute_value("Color","rose_red","RAL_code","3017").
coom_attribute_value("Color","rose_red","HTML_code","#E63244").
coom_option("Color", "strawberry_red").
coom_attribute_value("Color","strawberry_red","RAL_code","3018").
coom_attribute_value("Color","strawberry_red","HTML_code","#D53032").
coom_option("Color", "traffic_red").
coom_attribute_value("Color","traffic_red","RAL_code","3020").
coom_attribute_value("Color","traffic_red","HTML_code","#CC0605").
coom_option("Color", "salmon_pink").
coom_attribute_value("Color","salmon_pink","RAL_code","3022").
coom_attribute_value("Color","salmon_pink","HTML_code","#D95030").
coom_option("Color", "luminous_red").
coom_attribute_value("Color","luminous_red","RAL_code","3024").
coom_attribute_value("Color","luminous_red","HTML_code","#F80000").
coom_option("Color", "luminous_bright_red").
coom_attribute_value("Color","luminous_bright_red","RAL_code","3026").
coom_attribute_value("Color","luminous_bright_red","HTML_code","#FE0000").
coom_option("Color", "raspberry_red").
coom_attribute_value("Color","raspberry_red","RAL_code","3027").
coom_attribute_value("Color","raspberry_red","HTML_code","#C51D34").
coom_option("Color", "pure_red").
coom_attribute_value("Color","pure_red","RAL_code","3028").
coom_attribute_value("Color","pure_red","HTML_code","#CB3234").
coom_option("Color", "orient_red").
coom_attribute_value("Color","orient_red","RAL_code","3031").
coom_attribute_value("Color","orient_red","HTML_code","#B32428").
coom_option("Color", "pearl_ruby_red").
coom_attribute_value("Color","pearl_ruby_red","RAL_code","3032").
coom_attribute_value("Color","pearl_ruby_red","HTML_code","#721422").
coom_option("Color", "pearl_pink").
coom_attribute_value("Color","pearl_pink","RAL_code","3033").
coom_attribute_value("Color","pearl_pink","HTML_code","#B44C43").
coom_option("Color", "red_lilac").
coom_attribute_value("Color","red_lilac","RAL_code","4001").
coom_attribute_value("Color","red_lilac","HTML_code","#6D3F5B").
coom_option("Color", "red_violet").
coom_attribute_value("Color","red_violet","RAL_code","4002").
coom_attribute_value("Color","red_violet","HTML_code","#922B3E").
coom_option("Color", "heather_violet").
coom_attribute_value("Color","heather_violet","RAL_code","4003").
coom_attribute_value("Color","heather_violet","HTML_code","#DE4C8A").
coom_option("Color", "claret_violet").
coom_attribute_value("Color","claret_violet","RAL_code","4004").
coom_attribute_value("Color","claret_violet","HTML_code","#641C34").
coom_option("Color", "blue_lilac").
coom_attribute_value("Color","blue_lilac","RAL_code","4005").
coom_attribute_value("Color","blue_lilac","HTML_code","#6C4675").
coom_option("Color", "traffic_purple").
coom_attribute_value("Color","traffic_purple","RAL_code","4006").
coom_attribute_value("Color","traffic_purple","HTML_code","#A03472").
coom_option("Color", "purple_violet").
coom_attribute_value("Color","purple_violet","RAL_code","4007").
coom_attribute_value("Color","purple_violet","HTML_code","#4A192C").
coom_option("Color", "signal_violet").
coom_attribute_value("Color","signal_violet","RAL_code","4008").
coom_attribute_value("Color","signal_violet","HTML_code","#924E7D").
coom_option("Color", "pastel_violet").
coom_attribute_value("Color","pastel_violet","RAL_code","4009").
coom_attribute_value("Color","pastel_violet","HTML_code","#A18594").
coom_option("Color", "telemagenta").
coom_attribute_value("Color","telemagenta","RAL_code","4010").
coom_attribute_value("Color","telemagenta","HTML_code","#CF3476").
coom_option("Color", "pearl_violet").
coom_attribute_value("Color","pearl_violet","RAL_code","4011").
coom_attribute_value("Color","pearl_violet","HTML_code","#8673A1").
coom_option("Color", "pearl_black_berry").
coom_attribute_value("Color","pearl_black_berry","RAL_code","4012").
coom_attribute_value("Color","pearl_black_berry","HTML_code","#6C6874").
coom_option("Color", "violet_blue").
coom_attribute_value("Color","violet_blue","RAL_code","5000").
coom_attribute_value("Color","violet_blue","HTML_code","#354D73").
coom_option("Color", "green_blue").
coom_attribute_value("Color","green_blue","RAL_code","5001").
coom_attribute_value("Color","green_blue","HTML_code","#1F3438").
coom_option("Color", "ultramarine_blue").
coom_attribute_value("Color","ultramarine_blue","RAL_code","5002").
coom_attribute_value("Color","ultramarine_blue","HTML_code","#20214F").
coom_option("Color", "sapphire_blue").
coom_attribute_value("Color","sapphire_blue","RAL_code","5003").
coom_attribute_value("Color","sapphire_blue","HTML_code","#1D1E33").
coom_option("Color", "black_blue").
coom_attribute_value("Color","black_blue","RAL_code","5004").
coom_attribute_value("Color","black_blue","HTML_code","#18171C").
coom_option("Color", "signal_blue").
coom_attribute_value("Color","signal_blue","RAL_code","5005").
coom_attribute_value("Color","signal_blue","HTML_code","#1E2460").
coom_option("Color", "brilliant_blue").
coom_attribute_value("Color","brilliant_blue","RAL_code","5007").
coom_attribute_value("Color","brilliant_blue","HTML_code","#3E5F8A").
coom_option("Color", "grey_blue").
coom_attribute_value("Color","grey_blue","RAL_code","5008").
coom_attribute_value("Color","grey_blue","HTML_code","#26252D").
coom_option("Color", "azure_blue").
coom_attribute_value("Color","azure_blue","RAL_code","5009").
coom_attribute_value("Color","azure_blue","HTML_code","#025669").
coom_option("Color", "gentian_blue").
coom_attribute_value("Color","gentian_blue","RAL_code","5010").
coom_attribute_value("Color","gentian_blue","HTML_code","#0E294B").
coom_option("Color", "steel_blue").
coom_attribute_value("Color","steel_blue","RAL_code","5011").
coom_attribute_value("Color","steel_blue","HTML_code","#231A24").
coom_option("Color", "light_blue").
coom_attribute_value("Color","light_blue","RAL_code","5012").
coom_attribute_value("Color","light_blue","HTML_code","#3B83BD").
coom_option("Color", "cobalt_blue").
coom_attribute_value("Color","cobalt_blue","RAL_code","5013").
coom_attribute_value("Color","cobalt_blue","HTML_code","#1E213D").
coom_option("Color", "pigeon_blue").
coom_attribute_value("Color","pigeon_blue","RAL_code","5014").
coom_attribute_value("Color","pigeon_blue","HTML_code","#606E8C").
coom_option("Color", "sky_blue").
coom_attribute_value("Color","sky_blue","RAL_code","5015").
coom_attribute_value("Color","sky_blue","HTML_code","#2271B3").
coom_option("Color", "traffic_blue").
coom_attribute_value("Color","traffic_blue","RAL_code","5017").
coom_attribute_value("Color","traffic_blue","HTML_code","#063971").
coom_option("Color", "turquoise_blue").
coom_attribute_value("Color","turquoise_blue","RAL_code","5018").
coom_attribute_value("Color","turquoise_blue","HTML_code","#3F888F").
coom_option("Color", "capri_blue").
coom_attribute_value("Color","capri_blue","RAL_code","5019").
coom_attribute_value("Color","capri_blue","HTML_code","#1B5583").
coom_option("Color", "ocean_blue").
coom_attribute_value("Color","ocean_blue","RAL_code","5020").
coom_attribute_value("Color","ocean_blue","HTML_code","#1D334A").
coom_option("Color", "water_blue").
coom_attribute_value("Color","water_blue","RAL_code","5021").
coom_attribute_value("Color","water_blue","HTML_code","#256D7B").
coom_option("Color", "night_blue").
coom_attribute_value("Color","night_blue","RAL_code","5022").
coom_attribute_value("Color","night_blue","HTML_code","#252850").
coom_option("Color", "distant_blue").
coom_attribute_value("Color","distant_blue","RAL_code","5023").
coom_attribute_value("Color","distant_blue","HTML_code","#49678D").

coom_enumeration("Bean_Chamber").
coom_attribute("Bean_Chamber","capacity","num").
coom_option("Bean_Chamber", "S").
coom_attribute_value("Bean_Chamber","S","capacity",200).
coom_option("Bean_Chamber", "M").
coom_attribute_value("Bean_Chamber","M","capacity",350).
coom_option("Bean_Chamber", "L").
coom_attribute_value("Bean_Chamber","L","capacity",500).

coom_enumeration("MAT_Water_Tank").
coom_attribute("MAT_Water_Tank","volume","num").
coom_option("MAT_Water_Tank", "M_TA5739520").
coom_attribute_value("MAT_Water_Tank","M_TA5739520","volume",1).
coom_option("MAT_Water_Tank", "M_TA3486935").
coom_attribute_value("MAT_Water_Tank","M_TA3486935","volume",2).
coom_option("MAT_Water_Tank", "M_TA3253577").
coom_attribute_value("MAT_Water_Tank","M_TA3253577","volume",5).
coom_option("MAT_Water_Tank", "M_TA3456370").
coom_attribute_value("MAT_Water_Tank","M_TA3456370","volume",5).

coom_enumeration("Tank_Volume").
coom_attribute("Tank_Volume","vol","num").
coom_option("Tank_Volume", "S").
coom_attribute_value("Tank_Volume","S","vol",1).
coom_option("Tank_Volume", "M").
coom_attribute_value("Tank_Volume","M","vol",2).
coom_option("Tank_Volume", "L").
coom_attribute_value("Tank_Volume","L","vol",5).

coom_enumeration("MAT_Grinding_Core").
coom_attribute("MAT_Grinding_Core","material_number","str").
coom_attribute("MAT_Grinding_Core","weight","num").
coom_option("MAT_Grinding_Core", "M_CR283742").
coom_attribute_value("MAT_Grinding_Core","M_CR283742","material_number","CR283742").
coom_attribute_value("MAT_Grinding_Core","M_CR283742","weight",470).
coom_option("MAT_Grinding_Core", "M_CR384583").
coom_attribute_value("MAT_Grinding_Core","M_CR384583","material_number","CR384583").
coom_attribute_value("MAT_Grinding_Core","M_CR384583","weight",680).

coom_enumeration("MAT_Grinder_Drive").
coom_attribute("MAT_Grinder_Drive","material_number","str").
coom_attribute("MAT_Grinder_Drive","weight","num").
coom_option("MAT_Grinder_Drive", "M_CD872463").
coom_attribute_value("MAT_Grinder_Drive","M_CD872463","material_number","872463").
coom_attribute_value("MAT_Grinder_Drive","M_CD872463","weight",450).
coom_option("MAT_Grinder_Drive", "M_CD453798").
coom_attribute_value("MAT_Grinder_Drive","M_CD453798","material_number","453798").
coom_attribute_value("MAT_Grinder_Drive","M_CD453798","weight",560).
coom_option("MAT_Grinder_Drive", "M_CD348573").
coom_attribute_value("MAT_Grinder_Drive","M_CD348573","material_number","348573").
coom_attribute_value("MAT_Grinder_Drive","M_CD348573","weight",900).

coom_enumeration("Noise_Level").
coom_option("Noise_Level", "quiet").
coom_option("Noise_Level", "medium").
coom_option("Noise_Level", "noisy").

coom_enumeration("Grinding_Type").
coom_option("Grinding_Type", "impact_cropping").
coom_option("Grinding_Type", "disc_cropping").
coom_option("Grinding_Type", "cone_cropping").

coom_enumeration("Frame").
coom_attribute("Frame","size","num").
coom_attribute("Frame","materialNumber","str").
coom_attribute("Frame","comment","str").
coom_option("Frame", "FR_20_3453897").
coom_attribute_value("Frame","FR_20_3453897","size",20).
coom_attribute_value("Frame","FR_20_3453897","materialNumber","3453897").
coom_attribute_value("Frame","FR_20_3453897","comment","standard").
coom_option("Frame", "FR_20_4758238").
coom_attribute_value("Frame","FR_20_4758238","size",20).
coom_attribute_value("Frame","FR_20_4758238","materialNumber","4758238").
coom_attribute_value("Frame","FR_20_4758238","comment","strong").
coom_option("Frame", "FR_22_9384577").
coom_attribute_value("Frame","FR_22_9384577","size",22).
coom_attribute_value("Frame","FR_22_9384577","materialNumber","9384577").
coom_attribute_value("Frame","FR_22_9384577","comment","standard").
coom_option("Frame", "FR_22_8437599").
coom_attribute_value("Frame","FR_22_8437599","size",22).
coom_attribute_value("Frame","FR_22_8437599","materialNumber","8437599").
coom_attribute_value("Frame","FR_22_8437599","comment","strong").

coom_enumeration("Grinder_Material").
coom_option("Grinder_Material", "steel").
coom_option("Grinder_Material", "ceramic").

coom_enumeration("MAT_Brewing_Pump").
coom_attribute("MAT_Brewing_Pump","weight","num").
coom_attribute("MAT_Brewing_Pump","materialNumber","str").
coom_option("MAT_Brewing_Pump", "M_BP23492387").
coom_attribute_value("MAT_Brewing_Pump","M_BP23492387","weight",60).
coom_attribute_value("MAT_Brewing_Pump","M_BP23492387","materialNumber","23492387").
coom_option("MAT_Brewing_Pump", "M_BP24895734").
coom_attribute_value("MAT_Brewing_Pump","M_BP24895734","weight",75).
coom_attribute_value("MAT_Brewing_Pump","M_BP24895734","materialNumber","24895734").

coom_enumeration("MAT_Brewing_Controller").
coom_attribute("MAT_Brewing_Controller","weight","num").
coom_attribute("MAT_Brewing_Controller","materialNumber","str").
coom_option("MAT_Brewing_Controller", "M_BCN843523948").
coom_attribute_value("MAT_Brewing_Controller","M_BCN843523948","weight",150).
coom_attribute_value("MAT_Brewing_Controller","M_BCN843523948","materialNumber","843523948").
coom_option("MAT_Brewing_Controller", "M_BCN349829383").
coom_attribute_value("MAT_Brewing_Controller","M_BCN349829383","weight",200).
coom_attribute_value("MAT_Brewing_Controller","M_BCN349829383","materialNumber","349829383").

coom_enumeration("Brewing_Chamber").
coom_option("Brewing_Chamber", "M").
coom_option("Brewing_Chamber", "L").
coom_option("Brewing_Chamber", "XL").

coom_enumeration("Pump").
coom_option("Pump", "M").
coom_option("Pump", "L").
coom_option("Pump", "XL").

coom_enumeration("Pressure_Tank").
coom_attribute("Pressure_Tank","pressure","num").
coom_option("Pressure_Tank", "P30").
coom_attribute_value("Pressure_Tank","P30","pressure",30000).
coom_option("Pressure_Tank", "P40").
coom_attribute_value("Pressure_Tank","P40","pressure",40000).
coom_option("Pressure_Tank", "P50").
coom_attribute_value("Pressure_Tank","P50","pressure",50000).

coom_enumeration("Heating_System").
coom_attribute("Heating_System","steamDensity","num").
coom_option("Heating_System", "H16").
coom_attribute_value("Heating_System","H16","steamDensity",1600).
coom_option("Heating_System", "H20").
coom_attribute_value("Heating_System","H20","steamDensity",2000).
coom_option("Heating_System", "H22").
coom_attribute_value("Heating_System","H22","steamDensity",2200).

coom_enumeration("Available").
coom_option("Available", "n/a").
coom_option("Available", "available").

coom_enumeration("MAT_Cup_Warmer").
coom_option("MAT_Cup_Warmer", "without").
coom_option("MAT_Cup_Warmer", "M_CW_1a_590503").
coom_option("MAT_Cup_Warmer", "M_CW_1p_534566").
coom_option("MAT_Cup_Warmer", "M_CW_3a_593453").
coom_option("MAT_Cup_Warmer", "M_CW_3p_593666").
coom_option("MAT_Cup_Warmer", "M_CW_5a_534553").
coom_option("MAT_Cup_Warmer", "M_CW_5p_593666").
coom_option("MAT_Cup_Warmer", "M_CW_EXT_48966").

coom_enumeration("Heating_Plate_Size").
coom_option("Heating_Plate_Size", "without").
coom_option("Heating_Plate_Size", "one_cup").
coom_option("Heating_Plate_Size", "three_cups").
coom_option("Heating_Plate_Size", "five_cups").

coom_enumeration("Active_Heating_Plate").
coom_option("Active_Heating_Plate", "without").
coom_option("Active_Heating_Plate", "standard").
coom_option("Active_Heating_Plate", "extended").

coom_enumeration("MAT_Water_Filter").
coom_attribute("MAT_Water_Filter","max_capacity","num").
coom_option("MAT_Water_Filter", "M_WF012039").
coom_attribute_value("MAT_Water_Filter","M_WF012039","max_capacity",1000).
coom_option("MAT_Water_Filter", "M_WF012990").
coom_attribute_value("MAT_Water_Filter","M_WF012990","max_capacity",5000).

coom_enumeration("MAT_Coin_Slot").
coom_option("MAT_Coin_Slot", "n/a").
coom_option("MAT_Coin_Slot", "M_CS0122").
coom_option("MAT_Coin_Slot", "M_C00101").

coom_behavior(0).
coom_context(0,"Brew_Unit").
coom_combinations(0,0,"brewing_chamber").
coom_combinations(0,1,"brew_pump").
coom_path("brewing_chamber",0,"brewing_chamber").
coom_path("brew_pump",0,"brew_pump").
coom_allow(0,(0,0),"M").
coom_allow(0,(1,0),"M").
coom_allow(0,(1,0),"L").
coom_allow(0,(0,1),"L").
coom_allow(0,(1,1),"L").
coom_allow(0,(1,1),"XL").
coom_allow(0,(0,2),"XL").
coom_allow(0,(1,2),"XL").

coom_behavior(1).
coom_context(1,"Cup_Warmer").
coom_combinations(1,0,"heating_plate").
coom_combinations(1,1,"size").
coom_path("heating_plate",0,"heating_plate").
coom_path("size",0,"size").
coom_allow(1,(0,0),"without").
coom_allow(1,(1,0),"without").
coom_allow(1,(0,1),"standard").
coom_allow(1,(1,1),"one_cup").
coom_allow(1,(1,1),"three_cups").
coom_allow(1,(0,2),"extended").
coom_allow(1,(1,2),"five_cups").
coom_allow(1,(1,2),"three_cups").

coom_behavior(2).
coom_context(2,"Milk_System").
coom_combinations(2,0,"milk_foamer").
coom_combinations(2,1,"milk_warmer").
coom_path("milk_foamer",0,"milk_foamer").
coom_path("milk_warmer",0,"milk_warmer").
coom_allow(2,(0,0),"available").
coom_allow(2,(1,0),"available").
coom_allow(2,(0,1),"n/a").

coom_behavior(3).
coom_context(3,"Water_Tank").
coom_combinations(3,0,"water_pipe_connection").
coom_combinations(3,1,"tank_volume").
coom_path("water_pipe_connection",0,"water_pipe_connection").
coom_path("tank_volume",0,"tank_volume").
coom_allow(3,(0,0),"true").
coom_allow(3,(1,0),"L").
coom_allow(3,(1,0),"M").
coom_allow(3,(0,1),"false").

coom_behavior(4).
coom_context(4,"Grinding_Unit").
coom_default(4,"noise_level","quiet").
coom_path("noise_level",0,"noise_level").
coom_path("quiet",0,"quiet").

coom_behavior(5).
coom_context(5,"Grinding_Unit").
coom_condition(5,0,"noise_level=quiet").
coom_binary("noise_level=quiet","noise_level","=","quiet").
coom_path("noise_level",0,"noise_level").
coom_path("quiet",0,"quiet").
coom_default(5,"type","cone_cropping").
coom_path("type",0,"type").
coom_path("cone_cropping",0,"cone_cropping").

coom_behavior(6).
coom_context(6,"Grinding_Unit").
coom_condition(6,0,"(noise_level=medium||noise_level=noisy)").
coom_unary("(noise_level=medium||noise_level=noisy)","()","noise_level=medium||noise_level=noisy").
coom_binary("noise_level=medium||noise_level=noisy","noise_level=medium","||","noise_level=noisy").
coom_binary("noise_level=medium","noise_level","=","medium").
coom_path("noise_level",0,"noise_level").
coom_path("medium",0,"medium").
coom_binary("noise_level=noisy","noise_level","=","noisy").
coom_path("noise_level",0,"noise_level").
coom_path("noisy",0,"noisy").
coom_default(6,"type","disc_cropping").
coom_path("type",0,"type").
coom_path("disc_cropping",0,"disc_cropping").

coom_behavior(7).
coom_context(7,"Brew_Unit").
coom_explanation(7,"KM").
coom_condition(7,0,"brew_pump=M").
coom_binary("brew_pump=M","brew_pump","=","M").
coom_path("brew_pump",0,"brew_pump").
coom_constant("M").
coom_condition(7,1,"(brewing_chamber=M||brewing_chamber=L)").
coom_unary("(brewing_chamber=M||brewing_chamber=L)","()","brewing_chamber=M||brewing_chamber=L").
coom_binary("brewing_chamber=M||brewing_chamber=L","brewing_chamber=M","||","brewing_chamber=L").
coom_binary("brewing_chamber=M","brewing_chamber","=","M").
coom_path("brewing_chamber",0,"brewing_chamber").
coom_constant("M").
coom_binary("brewing_chamber=L","brewing_chamber","=","L").
coom_path("brewing_chamber",0,"brewing_chamber").
coom_constant("L").
coom_require(7,"heating_system=H16").
coom_binary("heating_system=H16","heating_system","=","H16").
coom_path("heating_system",0,"heating_system").
coom_constant("H16").

coom_behavior(8).
coom_context(8,"Brew_Unit").
coom_explanation(8,"KM").
coom_condition(8,0,"brew_pump=M").
coom_binary("brew_pump=M","brew_pump","=","M").
coom_path("brew_pump",0,"brew_pump").
coom_constant("M").
coom_condition(8,1,"(brewing_chamber=M||brewing_chamber=L)").
coom_unary("(brewing_chamber=M||brewing_chamber=L)","()","brewing_chamber=M||brewing_chamber=L").
coom_binary("brewing_chamber=M||brewing_chamber=L","brewing_chamber=M","||","brewing_chamber=L").
coom_binary("brewing_chamber=M","brewing_chamber","=","M").
coom_path("brewing_chamber",0,"brewing_chamber").
coom_constant("M").
coom_binary("brewing_chamber=L","brewing_chamber","=","L").
coom_path("brewing_chamber",0,"brewing_chamber").
coom_constant("L").
coom_require(8,"pressure_tank=P30").
coom_binary("pressure_tank=P30","pressure_tank","=","P30").
coom_path("pressure_tank",0,"pressure_tank").
coom_constant("P30").

coom_behavior(9).
coom_context(9,"Brew_Unit").
coom_explanation(9,"KM").
coom_condition(9,0,"brew_pump=L").
coom_binary("brew_pump=L","brew_pump","=","L").
coom_path("brew_pump",0,"brew_pump").
coom_constant("L").
coom_condition(9,1,"brewing_chamber=L").
coom_binary("brewing_chamber=L","brewing_chamber","=","L").
coom_path("brewing_chamber",0,"brewing_chamber").
coom_constant("L").
coom_require(9,"heating_system=H20").
coom_binary("heating_system=H20","heating_system","=","H20").
coom_path("heating_system",0,"heating_system").
coom_constant("H20").

coom_behavior(10).
coom_context(10,"Brew_Unit").
coom_explanation(10,"KM").
coom_condition(10,0,"brew_pump=L").
coom_binary("brew_pump=L","brew_pump","=","L").
coom_path("brew_pump",0,"brew_pump").
coom_constant("L").
coom_condition(10,1,"brewing_chamber=L").
coom_binary("brewing_chamber=L","brewing_chamber","=","L").
coom_path("brewing_chamber",0,"brewing_chamber").
coom_constant("L").
coom_require(10,"pressure_tank=P40").
coom_binary("pressure_tank=P40","pressure_tank","=","P40").
coom_path("pressure_tank",0,"pressure_tank").
coom_constant("P40").

coom_behavior(11).
coom_context(11,"Brew_Unit").
coom_explanation(11,"KM").
coom_condition(11,0,"brew_pump=XL").
coom_binary("brew_pump=XL","brew_pump","=","XL").
coom_path("brew_pump",0,"brew_pump").
coom_constant("XL").
coom_condition(11,1,"brewing_chamber=L").
coom_binary("brewing_chamber=L","brewing_chamber","=","L").
coom_path("brewing_chamber",0,"brewing_chamber").
coom_constant("L").
coom_require(11,"heating_system=H22").
coom_binary("heating_system=H22","heating_system","=","H22").
coom_path("heating_system",0,"heating_system").
coom_constant("H22").

coom_behavior(12).
coom_context(12,"Brew_Unit").
coom_explanation(12,"KM").
coom_condition(12,0,"brew_pump=XL").
coom_binary("brew_pump=XL","brew_pump","=","XL").
coom_path("brew_pump",0,"brew_pump").
coom_constant("XL").
coom_condition(12,1,"brewing_chamber=L").
coom_binary("brewing_chamber=L","brewing_chamber","=","L").
coom_path("brewing_chamber",0,"brewing_chamber").
coom_constant("L").
coom_require(12,"pressure_tank=P50").
coom_binary("pressure_tank=P50","pressure_tank","=","P50").
coom_path("pressure_tank",0,"pressure_tank").
coom_constant("P50").

coom_behavior(13).
coom_context(13,"Brew_Unit").
coom_explanation(13,"KM").
coom_condition(13,0,"brew_pump=XL").
coom_binary("brew_pump=XL","brew_pump","=","XL").
coom_path("brew_pump",0,"brew_pump").
coom_constant("XL").
coom_condition(13,1,"brewing_chamber=M").
coom_binary("brewing_chamber=M","brewing_chamber","=","M").
coom_path("brewing_chamber",0,"brewing_chamber").
coom_constant("M").
coom_require(13,"heating_system=H20").
coom_binary("heating_system=H20","heating_system","=","H20").
coom_path("heating_system",0,"heating_system").
coom_constant("H20").

coom_behavior(14).
coom_context(14,"Brew_Unit").
coom_explanation(14,"KM").
coom_condition(14,0,"brew_pump=XL").
coom_binary("brew_pump=XL","brew_pump","=","XL").
coom_path("brew_pump",0,"brew_pump").
coom_constant("XL").
coom_condition(14,1,"brewing_chamber=M").
coom_binary("brewing_chamber=M","brewing_chamber","=","M").
coom_path("brewing_chamber",0,"brewing_chamber").
coom_constant("M").
coom_require(14,"pressure_tank=P40").
coom_binary("pressure_tank=P40","pressure_tank","=","P40").
coom_path("pressure_tank",0,"pressure_tank").
coom_constant("P40").

coom_behavior(15).
coom_context(15,"Brew_Unit").
coom_explanation(15,"KM").
coom_condition(15,0,"brew_pump=XL").
coom_binary("brew_pump=XL","brew_pump","=","XL").
coom_path("brew_pump",0,"brew_pump").
coom_constant("XL").
coom_condition(15,1,"brewing_chamber=XL").
coom_binary("brewing_chamber=XL","brewing_chamber","=","XL").
coom_path("brewing_chamber",0,"brewing_chamber").
coom_constant("XL").
coom_require(15,"heating_system=H22").
coom_binary("heating_system=H22","heating_system","=","H22").
coom_path("heating_system",0,"heating_system").
coom_constant("H22").

coom_behavior(16).
coom_context(16,"Brew_Unit").
coom_explanation(16,"KM").
coom_condition(16,0,"brew_pump=XL").
coom_binary("brew_pump=XL","brew_pump","=","XL").
coom_path("brew_pump",0,"brew_pump").
coom_constant("XL").
coom_condition(16,1,"brewing_chamber=XL").
coom_binary("brewing_chamber=XL","brewing_chamber","=","XL").
coom_path("brewing_chamber",0,"brewing_chamber").
coom_constant("XL").
coom_require(16,"pressure_tank=P50").
coom_binary("pressure_tank=P50","pressure_tank","=","P50").
coom_path("pressure_tank",0,"pressure_tank").
coom_constant("P50").

coom_behavior(17).
coom_context(17,"Brew_Unit").
coom_explanation(17,"KM").
coom_condition(17,0,"(brew_pump=L||brew_pump=M)").
coom_unary("(brew_pump=L||brew_pump=M)","()","brew_pump=L||brew_pump=M").
coom_binary("brew_pump=L||brew_pump=M","brew_pump=L","||","brew_pump=M").
coom_binary("brew_pump=L","brew_pump","=","L").
coom_path("brew_pump",0,"brew_pump").
coom_constant("L").
coom_binary("brew_pump=M","brew_pump","=","M").
coom_path("brew_pump",0,"brew_pump").
coom_constant("M").
coom_condition(17,1,"brewing_chamber=XL").
coom_binary("brewing_chamber=XL","brewing_chamber","=","XL").
coom_path("brewing_chamber",0,"brewing_chamber").
coom_constant("XL").
coom_require(17,"heating_system=H16").
coom_binary("heating_system=H16","heating_system","=","H16").
coom_path("heating_system",0,"heating_system").
coom_constant("H16").

coom_behavior(18).
coom_context(18,"Brew_Unit").
coom_explanation(18,"KM").
coom_condition(18,0,"(brew_pump=L||brew_pump=M)").
coom_unary("(brew_pump=L||brew_pump=M)","()","brew_pump=L||brew_pump=M").
coom_binary("brew_pump=L||brew_pump=M","brew_pump=L","||","brew_pump=M").
coom_binary("brew_pump=L","brew_pump","=","L").
coom_path("brew_pump",0,"brew_pump").
coom_constant("L").
coom_binary("brew_pump=M","brew_pump","=","M").
coom_path("brew_pump",0,"brew_pump").
coom_constant("M").
coom_condition(18,1,"brewing_chamber=XL").
coom_binary("brewing_chamber=XL","brewing_chamber","=","XL").
coom_path("brewing_chamber",0,"brewing_chamber").
coom_constant("XL").
coom_require(18,"pressure_tank=P40").
coom_binary("pressure_tank=P40","pressure_tank","=","P40").
coom_path("pressure_tank",0,"pressure_tank").
coom_constant("P40").

coom_behavior(19).
coom_context(19,"Brew_Unit").
coom_explanation(19,"KM").
coom_condition(19,0,"brew_pump=L").
coom_binary("brew_pump=L","brew_pump","=","L").
coom_path("brew_pump",0,"brew_pump").
coom_constant("L").
coom_condition(19,1,"brewing_chamber=M").
coom_binary("brewing_chamber=M","brewing_chamber","=","M").
coom_path("brewing_chamber",0,"brewing_chamber").
coom_constant("M").
coom_require(19,"heating_system=H20").
coom_binary("heating_system=H20","heating_system","=","H20").
coom_path("heating_system",0,"heating_system").
coom_constant("H20").

coom_behavior(20).
coom_context(20,"Brew_Unit").
coom_explanation(20,"KM").
coom_condition(20,0,"brew_pump=L").
coom_binary("brew_pump=L","brew_pump","=","L").
coom_path("brew_pump",0,"brew_pump").
coom_constant("L").
coom_condition(20,1,"brewing_chamber=M").
coom_binary("brewing_chamber=M","brewing_chamber","=","M").
coom_path("brewing_chamber",0,"brewing_chamber").
coom_constant("M").
coom_require(20,"pressure_tank=P30").
coom_binary("pressure_tank=P30","pressure_tank","=","P30").
coom_path("pressure_tank",0,"pressure_tank").
coom_constant("P30").

coom_behavior(21).
coom_context(21,"Grinding_Unit").
coom_explanation(21,"KM").
coom_default(21,"grinding_frame","FR_20_3453897").
coom_path("grinding_frame",0,"grinding_frame").
coom_constant("FR_20_3453897").

coom_behavior(22).
coom_context(22,"Grinding_Unit").
coom_explanation(22,"KM").
coom_default(22,"grinding_frame","FR_20_4758238").
coom_path("grinding_frame",0,"grinding_frame").
coom_constant("FR_20_4758238").

coom_behavior(23).
coom_context(23,"Additional_Equipment").
coom_explanation(23,"KM").
coom_condition(23,0,"coin_slot=available").
coom_binary("coin_slot=available","coin_slot","=","available").
coom_path("coin_slot",0,"coin_slot").
coom_path("available",0,"available").
coom_require(23,"bom_ae.mat_coin_slot=M_CS0122").
coom_binary("bom_ae.mat_coin_slot=M_CS0122","bom_ae.mat_coin_slot","=","M_CS0122").
coom_path("bom_ae.mat_coin_slot",0,"bom_ae").
coom_path("bom_ae.mat_coin_slot",1,"mat_coin_slot").
coom_constant("M_CS0122").

coom_behavior(24).
coom_context(24,"Additional_Equipment").
coom_explanation(24,"KM").
coom_condition(24,0,"coin_slot=n/a").
coom_binary("coin_slot=n/a","coin_slot","=","n/a").
coom_path("coin_slot",0,"coin_slot").
coom_path("n/a",0,"n/a").
coom_require(24,"bom_ae.mat_coin_slot=n/a").
coom_binary("bom_ae.mat_coin_slot=n/a","bom_ae.mat_coin_slot","=","n/a").
coom_path("bom_ae.mat_coin_slot",0,"bom_ae").
coom_path("bom_ae.mat_coin_slot",1,"mat_coin_slot").
coom_path("n/a",0,"n/a").

coom_behavior(25).
coom_context(25,"Grinding_Unit").
coom_explanation(25,"KM").
coom_condition(25,0,"noise_level=quiet").
coom_binary("noise_level=quiet","noise_level","=","quiet").
coom_path("noise_level",0,"noise_level").
coom_path("quiet",0,"quiet").
coom_condition(25,1,"type=impact_cropping").
coom_binary("type=impact_cropping","type","=","impact_cropping").
coom_path("type",0,"type").
coom_path("impact_cropping",0,"impact_cropping").
coom_require(25,"bom_gu.mat_grind_drive=M_CD872463").
coom_binary("bom_gu.mat_grind_drive=M_CD872463","bom_gu.mat_grind_drive","=","M_CD872463").
coom_path("bom_gu.mat_grind_drive",0,"bom_gu").
coom_path("bom_gu.mat_grind_drive",1,"mat_grind_drive").
coom_constant("M_CD872463").

coom_behavior(26).
coom_context(26,"Grinding_Unit").
coom_explanation(26,"KM").
coom_condition(26,0,"(noise_level=medium||noise_level=noisy)").
coom_unary("(noise_level=medium||noise_level=noisy)","()","noise_level=medium||noise_level=noisy").
coom_binary("noise_level=medium||noise_level=noisy","noise_level=medium","||","noise_level=noisy").
coom_binary("noise_level=medium","noise_level","=","medium").
coom_path("noise_level",0,"noise_level").
coom_path("medium",0,"medium").
coom_binary("noise_level=noisy","noise_level","=","noisy").
coom_path("noise_level",0,"noise_level").
coom_path("noisy",0,"noisy").
coom_condition(26,1,"type=impact_cropping").
coom_binary("type=impact_cropping","type","=","impact_cropping").
coom_path("type",0,"type").
coom_path("impact_cropping",0,"impact_cropping").
coom_require(26,"bom_gu.mat_grind_drive=M_CD453798").
coom_binary("bom_gu.mat_grind_drive=M_CD453798","bom_gu.mat_grind_drive","=","M_CD453798").
coom_path("bom_gu.mat_grind_drive",0,"bom_gu").
coom_path("bom_gu.mat_grind_drive",1,"mat_grind_drive").
coom_constant("M_CD453798").

coom_behavior(27).
coom_context(27,"Grinding_Unit").
coom_explanation(27,"KM").
coom_condition(27,0,"(noise_level=quiet||noise_level=medium||noise_level=noisy)").
coom_unary("(noise_level=quiet||noise_level=medium||noise_level=noisy)","()","noise_level=quiet||noise_level=medium||noise_level=noisy").
coom_binary("noise_level=quiet||noise_level=medium||noise_level=noisy","noise_level=quiet","||","noise_level=medium||noise_level=noisy").
coom_binary("noise_level=medium||noise_level=noisy","noise_level=medium","||","noise_level=noisy").
coom_binary("noise_level=quiet","noise_level","=","quiet").
coom_path("noise_level",0,"noise_level").
coom_path("quiet",0,"quiet").
coom_binary("noise_level=medium","noise_level","=","medium").
coom_path("noise_level",0,"noise_level").
coom_path("medium",0,"medium").
coom_binary("noise_level=noisy","noise_level","=","noisy").
coom_path("noise_level",0,"noise_level").
coom_path("noisy",0,"noisy").
coom_condition(27,1,"(type=disc_cropping||type=cone_cropping)").
coom_unary("(type=disc_cropping||type=cone_cropping)","()","type=disc_cropping||type=cone_cropping").
coom_binary("type=disc_cropping||type=cone_cropping","type=disc_cropping","||","type=cone_cropping").
coom_binary("type=disc_cropping","type","=","disc_cropping").
coom_path("type",0,"type").
coom_path("disc_cropping",0,"disc_cropping").
coom_binary("type=cone_cropping","type","=","cone_cropping").
coom_path("type",0,"type").
coom_path("cone_cropping",0,"cone_cropping").
coom_require(27,"bom_gu.mat_grind_drive=M_CD348573").
coom_binary("bom_gu.mat_grind_drive=M_CD348573","bom_gu.mat_grind_drive","=","M_CD348573").
coom_path("bom_gu.mat_grind_drive",0,"bom_gu").
coom_path("bom_gu.mat_grind_drive",1,"mat_grind_drive").
coom_constant("M_CD348573").

coom_behavior(28).
coom_context(28,"Grinding_Unit").
coom_explanation(28,"KM").
coom_condition(28,0,"material=steel").
coom_binary("material=steel","material","=","steel").
coom_path("material",0,"material").
coom_path("steel",0,"steel").
coom_require(28,"bom_gu.mat_grinder=M_CR283742").
coom_binary("bom_gu.mat_grinder=M_CR283742","bom_gu.mat_grinder","=","M_CR283742").
coom_path("bom_gu.mat_grinder",0,"bom_gu").
coom_path("bom_gu.mat_grinder",1,"mat_grinder").
coom_constant("M_CR283742").

coom_behavior(29).
coom_context(29,"Grinding_Unit").
coom_explanation(29,"KM").
coom_condition(29,0,"material=ceramic").
coom_binary("material=ceramic","material","=","ceramic").
coom_path("material",0,"material").
coom_path("ceramic",0,"ceramic").
coom_require(29,"bom_gu.mat_grinder=M_CR384583").
coom_binary("bom_gu.mat_grinder=M_CR384583","bom_gu.mat_grinder","=","M_CR384583").
coom_path("bom_gu.mat_grinder",0,"bom_gu").
coom_path("bom_gu.mat_grinder",1,"mat_grinder").
coom_constant("M_CR384583").

coom_behavior(30).
coom_context(30,"Water_Tank").
coom_explanation(30,"KM").
coom_condition(30,0,"tank_volume=S").
coom_binary("tank_volume=S","tank_volume","=","S").
coom_path("tank_volume",0,"tank_volume").
coom_constant("S").
coom_condition(30,1,"water_pipe_connection=false").
coom_binary("water_pipe_connection=false","water_pipe_connection","=","false").
coom_path("water_pipe_connection",0,"water_pipe_connection").
coom_require(30,"bom_wt.mat_water_tank=M_TA5739520").
coom_binary("bom_wt.mat_water_tank=M_TA5739520","bom_wt.mat_water_tank","=","M_TA5739520").
coom_path("bom_wt.mat_water_tank",0,"bom_wt").
coom_path("bom_wt.mat_water_tank",1,"mat_water_tank").
coom_constant("M_TA5739520").

coom_behavior(31).
coom_context(31,"Water_Tank").
coom_explanation(31,"KM").
coom_condition(31,0,"tank_volume=M").
coom_binary("tank_volume=M","tank_volume","=","M").
coom_path("tank_volume",0,"tank_volume").
coom_constant("M").
coom_condition(31,1,"water_pipe_connection=false").
coom_binary("water_pipe_connection=false","water_pipe_connection","=","false").
coom_path("water_pipe_connection",0,"water_pipe_connection").
coom_require(31,"bom_wt.mat_water_tank=M_TA3486935").
coom_binary("bom_wt.mat_water_tank=M_TA3486935","bom_wt.mat_water_tank","=","M_TA3486935").
coom_path("bom_wt.mat_water_tank",0,"bom_wt").
coom_path("bom_wt.mat_water_tank",1,"mat_water_tank").
coom_constant("M_TA3486935").

coom_behavior(32).
coom_context(32,"Water_Tank").
coom_explanation(32,"KM").
coom_condition(32,0,"tank_volume=L").
coom_binary("tank_volume=L","tank_volume","=","L").
coom_path("tank_volume",0,"tank_volume").
coom_constant("L").
coom_condition(32,1,"water_pipe_connection=false").
coom_binary("water_pipe_connection=false","water_pipe_connection","=","false").
coom_path("water_pipe_connection",0,"water_pipe_connection").
coom_require(32,"bom_wt.mat_water_tank=M_TA3253577").
coom_binary("bom_wt.mat_water_tank=M_TA3253577","bom_wt.mat_water_tank","=","M_TA3253577").
coom_path("bom_wt.mat_water_tank",0,"bom_wt").
coom_path("bom_wt.mat_water_tank",1,"mat_water_tank").
coom_constant("M_TA3253577").

coom_behavior(33).
coom_context(33,"Water_Tank").
coom_explanation(33,"KM").
coom_condition(33,0,"tank_volume=L").
coom_binary("tank_volume=L","tank_volume","=","L").
coom_path("tank_volume",0,"tank_volume").
coom_constant("L").
coom_condition(33,1,"water_pipe_connection=true").
coom_binary("water_pipe_connection=true","water_pipe_connection","=","true").
coom_path("water_pipe_connection",0,"water_pipe_connection").
coom_require(33,"bom_wt.mat_water_tank=M_TA3456370").
coom_binary("bom_wt.mat_water_tank=M_TA3456370","bom_wt.mat_water_tank","=","M_TA3456370").
coom_path("bom_wt.mat_water_tank",0,"bom_wt").
coom_path("bom_wt.mat_water_tank",1,"mat_water_tank").
coom_constant("M_TA3456370").

coom_behavior(34).
coom_context(34,"Water_Tank").
coom_explanation(34,"KM").
coom_condition(34,0,"tank_volume=M").
coom_binary("tank_volume=M","tank_volume","=","M").
coom_path("tank_volume",0,"tank_volume").
coom_constant("M").
coom_condition(34,1,"water_pipe_connection=true").
coom_binary("water_pipe_connection=true","water_pipe_connection","=","true").
coom_path("water_pipe_connection",0,"water_pipe_connection").
coom_require(34,"bom_wt.mat_water_tank=M_TA3456370").
coom_binary("bom_wt.mat_water_tank=M_TA3456370","bom_wt.mat_water_tank","=","M_TA3456370").
coom_path("bom_wt.mat_water_tank",0,"bom_wt").
coom_path("bom_wt.mat_water_tank",1,"mat_water_tank").
coom_constant("M_TA3456370").

coom_behavior(35).
coom_context(35,"Bean_Container").
coom_explanation(35,"KM").
coom_condition(35,0,"volume_bean_chamber=S").
coom_binary("volume_bean_chamber=S","volume_bean_chamber","=","S").
coom_path("volume_bean_chamber",0,"volume_bean_chamber").
coom_constant("S").
coom_require(35,"bom_bc.mat_bean_container=M_BC5290520").
coom_binary("bom_bc.mat_bean_container=M_BC5290520","bom_bc.mat_bean_container","=","M_BC5290520").
coom_path("bom_bc.mat_bean_container",0,"bom_bc").
coom_path("bom_bc.mat_bean_container",1,"mat_bean_container").
coom_constant("M_BC5290520").

coom_behavior(36).
coom_context(36,"Bean_Container").
coom_explanation(36,"KM").
coom_condition(36,0,"volume_bean_chamber=M").
coom_binary("volume_bean_chamber=M","volume_bean_chamber","=","M").
coom_path("volume_bean_chamber",0,"volume_bean_chamber").
coom_constant("M").
coom_require(36,"bom_bc.mat_bean_container=M_BC2059800").
coom_binary("bom_bc.mat_bean_container=M_BC2059800","bom_bc.mat_bean_container","=","M_BC2059800").
coom_path("bom_bc.mat_bean_container",0,"bom_bc").
coom_path("bom_bc.mat_bean_container",1,"mat_bean_container").
coom_constant("M_BC2059800").

coom_behavior(37).
coom_context(37,"Bean_Container").
coom_explanation(37,"KM").
coom_condition(37,0,"volume_bean_chamber=L").
coom_binary("volume_bean_chamber=L","volume_bean_chamber","=","L").
coom_path("volume_bean_chamber",0,"volume_bean_chamber").
coom_constant("L").
coom_require(37,"bom_bc.mat_bean_container=M_BC2059345").
coom_binary("bom_bc.mat_bean_container=M_BC2059345","bom_bc.mat_bean_container","=","M_BC2059345").
coom_path("bom_bc.mat_bean_container",0,"bom_bc").
coom_path("bom_bc.mat_bean_container",1,"mat_bean_container").
coom_constant("M_BC2059345").

coom_behavior(38).
coom_context(38,"Cup_Warmer").
coom_explanation(38,"KM").
coom_condition(38,0,"heating_plate=without").
coom_binary("heating_plate=without","heating_plate","=","without").
coom_path("heating_plate",0,"heating_plate").
coom_path("without",0,"without").
coom_condition(38,1,"size=without").
coom_binary("size=without","size","=","without").
coom_path("size",0,"size").
coom_path("without",0,"without").
coom_require(38,"bom_cw.mat_cup_warmer=without").
coom_binary("bom_cw.mat_cup_warmer=without","bom_cw.mat_cup_warmer","=","without").
coom_path("bom_cw.mat_cup_warmer",0,"bom_cw").
coom_path("bom_cw.mat_cup_warmer",1,"mat_cup_warmer").
coom_path("without",0,"without").

coom_behavior(39).
coom_context(39,"Cup_Warmer").
coom_explanation(39,"KM").
coom_condition(39,0,"heating_plate=standard").
coom_binary("heating_plate=standard","heating_plate","=","standard").
coom_path("heating_plate",0,"heating_plate").
coom_path("standard",0,"standard").
coom_condition(39,1,"size=one_cup").
coom_binary("size=one_cup","size","=","one_cup").
coom_path("size",0,"size").
coom_path("one_cup",0,"one_cup").
coom_require(39,"bom_cw.mat_cup_warmer=M_CW_1a_590503").
coom_binary("bom_cw.mat_cup_warmer=M_CW_1a_590503","bom_cw.mat_cup_warmer","=","M_CW_1a_590503").
coom_path("bom_cw.mat_cup_warmer",0,"bom_cw").
coom_path("bom_cw.mat_cup_warmer",1,"mat_cup_warmer").
coom_constant("M_CW_1a_590503").

coom_behavior(40).
coom_context(40,"Cup_Warmer").
coom_explanation(40,"KM").
coom_condition(40,0,"heating_plate=without").
coom_binary("heating_plate=without","heating_plate","=","without").
coom_path("heating_plate",0,"heating_plate").
coom_path("without",0,"without").
coom_condition(40,1,"size=one_cup").
coom_binary("size=one_cup","size","=","one_cup").
coom_path("size",0,"size").
coom_path("one_cup",0,"one_cup").
coom_require(40,"bom_cw.mat_cup_warmer=M_CW_1p_534566").
coom_binary("bom_cw.mat_cup_warmer=M_CW_1p_534566","bom_cw.mat_cup_warmer","=","M_CW_1p_534566").
coom_path("bom_cw.mat_cup_warmer",0,"bom_cw").
coom_path("bom_cw.mat_cup_warmer",1,"mat_cup_warmer").
coom_constant("M_CW_1p_534566").

coom_behavior(41).
coom_context(41,"Cup_Warmer").
coom_explanation(41,"KM").
coom_condition(41,0,"heating_plate=standard").
coom_binary("heating_plate=standard","heating_plate","=","standard").
coom_path("heating_plate",0,"heating_plate").
coom_path("standard",0,"standard").
coom_condition(41,1,"size=three_cups").
coom_binary("size=three_cups","size","=","three_cups").
coom_path("size",0,"size").
coom_path("three_cups",0,"three_cups").
coom_require(41,"bom_cw.mat_cup_warmer=M_CW_3a_593453").
coom_binary("bom_cw.mat_cup_warmer=M_CW_3a_593453","bom_cw.mat_cup_warmer","=","M_CW_3a_593453").
coom_path("bom_cw.mat_cup_warmer",0,"bom_cw").
coom_path("bom_cw.mat_cup_warmer",1,"mat_cup_warmer").
coom_constant("M_CW_3a_593453").

coom_behavior(42).
coom_context(42,"Cup_Warmer").
coom_explanation(42,"KM").
coom_condition(42,0,"heating_plate=without").
coom_binary("heating_plate=without","heating_plate","=","without").
coom_path("heating_plate",0,"heating_plate").
coom_path("without",0,"without").
coom_condition(42,1,"size=three_cups").
coom_binary("size=three_cups","size","=","three_cups").
coom_path("size",0,"size").
coom_path("three_cups",0,"three_cups").
coom_require(42,"bom_cw.mat_cup_warmer=M_CW_3p_593666").
coom_binary("bom_cw.mat_cup_warmer=M_CW_3p_593666","bom_cw.mat_cup_warmer","=","M_CW_3p_593666").
coom_path("bom_cw.mat_cup_warmer",0,"bom_cw").
coom_path("bom_cw.mat_cup_warmer",1,"mat_cup_warmer").
coom_constant("M_CW_3p_593666").

coom_behavior(43).
coom_context(43,"Cup_Warmer").
coom_explanation(43,"KM").
coom_condition(43,0,"heating_plate=standard").
coom_binary("heating_plate=standard","heating_plate","=","standard").
coom_path("heating_plate",0,"heating_plate").
coom_path("standard",0,"standard").
coom_condition(43,1,"size=five_cups").
coom_binary("size=five_cups","size","=","five_cups").
coom_path("size",0,"size").
coom_path("five_cups",0,"five_cups").
coom_require(43,"bom_cw.mat_cup_warmer=M_CW_5a_534553").
coom_binary("bom_cw.mat_cup_warmer=M_CW_5a_534553","bom_cw.mat_cup_warmer","=","M_CW_5a_534553").
coom_path("bom_cw.mat_cup_warmer",0,"bom_cw").
coom_path("bom_cw.mat_cup_warmer",1,"mat_cup_warmer").
coom_constant("M_CW_5a_534553").

coom_behavior(44).
coom_context(44,"Cup_Warmer").
coom_explanation(44,"KM").
coom_condition(44,0,"heating_plate=without").
coom_binary("heating_plate=without","heating_plate","=","without").
coom_path("heating_plate",0,"heating_plate").
coom_path("without",0,"without").
coom_condition(44,1,"size=five_cups").
coom_binary("size=five_cups","size","=","five_cups").
coom_path("size",0,"size").
coom_path("five_cups",0,"five_cups").
coom_require(44,"bom_cw.mat_cup_warmer=M_CW_5p_593666").
coom_binary("bom_cw.mat_cup_warmer=M_CW_5p_593666","bom_cw.mat_cup_warmer","=","M_CW_5p_593666").
coom_path("bom_cw.mat_cup_warmer",0,"bom_cw").
coom_path("bom_cw.mat_cup_warmer",1,"mat_cup_warmer").
coom_constant("M_CW_5p_593666").

coom_behavior(45).
coom_context(45,"Cup_Warmer").
coom_explanation(45,"KM").
coom_condition(45,0,"heating_plate=extended").
coom_binary("heating_plate=extended","heating_plate","=","extended").
coom_path("heating_plate",0,"heating_plate").
coom_path("extended",0,"extended").
coom_condition(45,1,"(size=without||size=one_cup||size=three_cups||size=five_cups)").
coom_unary("(size=without||size=one_cup||size=three_cups||size=five_cups)","()","size=without||size=one_cup||size=three_cups||size=five_cups").
coom_binary("size=without||size=one_cup||size=three_cups||size=five_cups","size=without","||","size=one_cup||size=three_cups||size=five_cups").
coom_binary("size=one_cup||size=three_cups||size=five_cups","size=one_cup","||","size=three_cups||size=five_cups").
coom_binary("size=three_cups||size=five_cups","size=three_cups","||","size=five_cups").
coom_binary("size=without","size","=","without").
coom_path("size",0,"size").
coom_path("without",0,"without").
coom_binary("size=one_cup","size","=","one_cup").
coom_path("size",0,"size").
coom_path("one_cup",0,"one_cup").
coom_binary("size=three_cups","size","=","three_cups").
coom_path("size",0,"size").
coom_path("three_cups",0,"three_cups").
coom_binary("size=five_cups","size","=","five_cups").
coom_path("size",0,"size").
coom_path("five_cups",0,"five_cups").
coom_require(45,"bom_cw.mat_cup_warmer=M_CW_EXT_48966").
coom_binary("bom_cw.mat_cup_warmer=M_CW_EXT_48966","bom_cw.mat_cup_warmer","=","M_CW_EXT_48966").
coom_path("bom_cw.mat_cup_warmer",0,"bom_cw").
coom_path("bom_cw.mat_cup_warmer",1,"mat_cup_warmer").
coom_constant("M_CW_EXT_48966").

coom_behavior(46).
coom_context(46,"Grinding_Unit").
coom_explanation(46,"KM").
coom_condition(46,0,"type=impact_cropping").
coom_binary("type=impact_cropping","type","=","impact_cropping").
coom_path("type",0,"type").
coom_path("impact_cropping",0,"impact_cropping").
coom_condition(46,1,"material=steel").
coom_binary("material=steel","material","=","steel").
coom_path("material",0,"material").
coom_path("steel",0,"steel").
coom_require(46,"noise_level=noisy").
coom_binary("noise_level=noisy","noise_level","=","noisy").
coom_path("noise_level",0,"noise_level").
coom_path("noisy",0,"noisy").

coom_behavior(47).
coom_context(47,"Grinding_Unit").
coom_explanation(47,"KM").
coom_condition(47,0,"type=disc_cropping").
coom_binary("type=disc_cropping","type","=","disc_cropping").
coom_path("type",0,"type").
coom_path("disc_cropping",0,"disc_cropping").
coom_condition(47,1,"material=steel").
coom_binary("material=steel","material","=","steel").
coom_path("material",0,"material").
coom_path("steel",0,"steel").
coom_require(47,"noise_level=medium").
coom_binary("noise_level=medium","noise_level","=","medium").
coom_path("noise_level",0,"noise_level").
coom_path("medium",0,"medium").

coom_behavior(48).
coom_context(48,"Grinding_Unit").
coom_explanation(48,"KM").
coom_condition(48,0,"type=cone_cropping").
coom_binary("type=cone_cropping","type","=","cone_cropping").
coom_path("type",0,"type").
coom_path("cone_cropping",0,"cone_cropping").
coom_condition(48,1,"material=steel").
coom_binary("material=steel","material","=","steel").
coom_path("material",0,"material").
coom_path("steel",0,"steel").
coom_require(48,"noise_level=medium").
coom_binary("noise_level=medium","noise_level","=","medium").
coom_path("noise_level",0,"noise_level").
coom_path("medium",0,"medium").

coom_behavior(49).
coom_context(49,"Grinding_Unit").
coom_explanation(49,"KM").
coom_condition(49,0,"type=impact_cropping").
coom_binary("type=impact_cropping","type","=","impact_cropping").
coom_path("type",0,"type").
coom_path("impact_cropping",0,"impact_cropping").
coom_condition(49,1,"material=ceramic").
coom_binary("material=ceramic","material","=","ceramic").
coom_path("material",0,"material").
coom_path("ceramic",0,"ceramic").
coom_require(49,"noise_level=medium").
coom_binary("noise_level=medium","noise_level","=","medium").
coom_path("noise_level",0,"noise_level").
coom_path("medium",0,"medium").

coom_behavior(50).
coom_context(50,"Grinding_Unit").
coom_explanation(50,"KM").
coom_condition(50,0,"type=disc_cropping").
coom_binary("type=disc_cropping","type","=","disc_cropping").
coom_path("type",0,"type").
coom_path("disc_cropping",0,"disc_cropping").
coom_condition(50,1,"material=ceramic").
coom_binary("material=ceramic","material","=","ceramic").
coom_path("material",0,"material").
coom_path("ceramic",0,"ceramic").
coom_require(50,"noise_level=medium").
coom_binary("noise_level=medium","noise_level","=","medium").
coom_path("noise_level",0,"noise_level").
coom_path("medium",0,"medium").

coom_behavior(51).
coom_context(51,"Grinding_Unit").
coom_explanation(51,"KM").
coom_condition(51,0,"type=cone_cropping").
coom_binary("type=cone_cropping","type","=","cone_cropping").
coom_path("type",0,"type").
coom_path("cone_cropping",0,"cone_cropping").
coom_condition(51,1,"material=ceramic").
coom_binary("material=ceramic","material","=","ceramic").
coom_path("material",0,"material").
coom_path("ceramic",0,"ceramic").
coom_require(51,"noise_level=quiet").
coom_binary("noise_level=quiet","noise_level","=","quiet").
coom_path("noise_level",0,"noise_level").
coom_path("quiet",0,"quiet").

coom_behavior(52).
coom_context(52,"Grinding_Unit").
coom_explanation(52,"KM").
coom_combinations(52,0,"type").
coom_combinations(52,1,"material").
coom_path("type",0,"type").
coom_path("material",0,"material").
coom_allow(52,(0,0),"impact_cropping").
coom_allow(52,(0,0),"disc_cropping").
coom_allow(52,(0,0),"cone_cropping").
coom_allow(52,(1,0),"steel").
coom_allow(52,(0,1),"cone_cropping").
coom_allow(52,(0,1),"impact_cropping").
coom_allow(52,(1,1),"ceramic").

coom_behavior(53).
coom_context(53,"Grinding_Unit").
coom_explanation(53,"KM").
coom_imply(53,"weight","(bom_gu.mat_grinder.weight+bom_gu.mat_grind_drive.weight)").
coom_path("weight",0,"weight").
coom_unary("(bom_gu.mat_grinder.weight+bom_gu.mat_grind_drive.weight)","()","bom_gu.mat_grinder.weight+bom_gu.mat_grind_drive.weight").
coom_binary("bom_gu.mat_grinder.weight+bom_gu.mat_grind_drive.weight","bom_gu.mat_grinder.weight","+","bom_gu.mat_grind_drive.weight").
coom_path("bom_gu.mat_grinder.weight",0,"bom_gu").
coom_path("bom_gu.mat_grinder.weight",1,"mat_grinder").
coom_path("bom_gu.mat_grinder.weight",2,"weight").
coom_path("bom_gu.mat_grind_drive.weight",0,"bom_gu").
coom_path("bom_gu.mat_grind_drive.weight",1,"mat_grind_drive").
coom_path("bom_gu.mat_grind_drive.weight",2,"weight").

coom_behavior(54).
coom_context(54,"Grinding_Unit").
coom_explanation(54,"KM").
coom_condition(54,0,"type=cone_cropping").
coom_binary("type=cone_cropping","type","=","cone_cropping").
coom_path("type",0,"type").
coom_path("cone_cropping",0,"cone_cropping").
coom_require(54,"grinding_frame.size=22").
coom_binary("grinding_frame.size=22","grinding_frame.size","=","22").
coom_path("grinding_frame.size",0,"grinding_frame").
coom_path("grinding_frame.size",1,"size").
coom_number("22",22).

coom_behavior(55).
coom_context(55,"Grinding_Unit").
coom_explanation(55,"KM").
coom_condition(55,0,"weight>1100").
coom_binary("weight>1100","weight",">","1100").
coom_path("weight",0,"weight").
coom_number("1100",1100).
coom_require(55,"(grinding_frame=FR_20_4758238||grinding_frame=FR_22_9384577)").
coom_unary("(grinding_frame=FR_20_4758238||grinding_frame=FR_22_9384577)","()","grinding_frame=FR_20_4758238||grinding_frame=FR_22_9384577").
coom_binary("grinding_frame=FR_20_4758238||grinding_frame=FR_22_9384577","grinding_frame=FR_20_4758238","||","grinding_frame=FR_22_9384577").
coom_binary("grinding_frame=FR_20_4758238","grinding_frame","=","FR_20_4758238").
coom_path("grinding_frame",0,"grinding_frame").
coom_constant("FR_20_4758238").
coom_binary("grinding_frame=FR_22_9384577","grinding_frame","=","FR_22_9384577").
coom_path("grinding_frame",0,"grinding_frame").
coom_constant("FR_22_9384577").

coom_behavior(56).
coom_context(56,"Water_Tank").
coom_explanation(56,"KM").
coom_condition(56,0,"water_pipe_connection=true").
coom_binary("water_pipe_connection=true","water_pipe_connection","=","true").
coom_path("water_pipe_connection",0,"water_pipe_connection").
coom_condition(56,1,"tank_volume=S").
coom_binary("tank_volume=S","tank_volume","=","S").
coom_path("tank_volume",0,"tank_volume").
coom_constant("S").
coom_imply(56,"water_pump.required_water_pressure","2").
coom_path("water_pump.required_water_pressure",0,"water_pump").
coom_path("water_pump.required_water_pressure",1,"required_water_pressure").
coom_number("2",2).

coom_behavior(57).
coom_context(57,"Water_Tank").
coom_explanation(57,"KM").
coom_condition(57,0,"water_pipe_connection=true").
coom_binary("water_pipe_connection=true","water_pipe_connection","=","true").
coom_path("water_pipe_connection",0,"water_pipe_connection").
coom_condition(57,1,"tank_volume=M").
coom_binary("tank_volume=M","tank_volume","=","M").
coom_path("tank_volume",0,"tank_volume").
coom_constant("M").
coom_imply(57,"water_pump.required_water_pressure","4").
coom_path("water_pump.required_water_pressure",0,"water_pump").
coom_path("water_pump.required_water_pressure",1,"required_water_pressure").
coom_number("4",4).

coom_behavior(58).
coom_context(58,"Water_Tank").
coom_explanation(58,"KM").
coom_condition(58,0,"water_pipe_connection=true").
coom_binary("water_pipe_connection=true","water_pipe_connection","=","true").
coom_path("water_pipe_connection",0,"water_pipe_connection").
coom_condition(58,1,"tank_volume=L").
coom_binary("tank_volume=L","tank_volume","=","L").
coom_path("tank_volume",0,"tank_volume").
coom_constant("L").
coom_imply(58,"water_pump.required_water_pressure","6").
coom_path("water_pump.required_water_pressure",0,"water_pump").
coom_path("water_pump.required_water_pressure",1,"required_water_pressure").
coom_number("6",6).
