"""
Contains a dictionary with all clintest tests for checking user input
and the corresponding files or programs they should be run with.
These tests have corresponding tests in `tests_solve.py` but with different outputs.

The key of the dictionary corresponds to the name of the test.

Since the tests are for preprocessing,
they are supposed to work with clingo only.
"""

from typing import Any

TESTS_USER: dict[str, dict[str, Any]] = {
    "add_part": {
        "test": {'consistent("root.a[0]").'},
        "program": """
            type("root","product").
            type("root.a[0]","A").
            index("root.a[0]",0).
            parent("root.a[0]","root").
            part("product").
            part("A").
            user_include("root.a[0]").""",
    },
    "add_attribute": {
        "test": {'consistent("root.basket[0]").'},
        "program": """
            part("product").
            discrete("Basket",str).
            domain("Basket","Black").
            domain("Basket","White").
            type("root.basket[0]","Basket").
            parent("root.basket[0]","root").
            index("root.basket[0]",0).
            user_include("root.basket[0]").""",
    },
    "set_value_discrete": {
        "test": {'consistent("root.a[0]","A1").'},
        "program": """
            type("root","product").
            type("root.a[0]","A").
            discrete("A",str).
            domain("A","A1").
            domain("A","A2").
            index("root.a[0]",0).
            parent("root.a[0]","root").
            constraint(("root.a",1),"lowerbound").
            set("root.a","root.a[0]").
            part("product").
            user_value("root.a[0]","A1").""",
    },
    "set_value_integer": {
        "test": {'consistent("root.a[0]",1).'},
        "program": """
            type("root","product").
            type("root.a[0]","A").
            numeric("A",int).
            range("A",1,2).
            index("root.a[0]",0).
            parent("root.a[0]","root").
            constraint(("root.a",1),"lowerbound").
            set("root.a","root.a[0]").
            part("product").
            user_value("root.a[0]",1).""",
    },
    "set_value_integer_no_range": {
        "test": {'consistent("root.a[0]",1).'},
        "program": """
            type("root","product").
            type("root.a[0]","A").
            numeric("A",int).
            index("root.a[0]",0).
            parent("root.a[0]","root").
            constraint(("root.a",1),"lowerbound").
            set("root.a","root.a[0]").
            part("product").
            user_value("root.a[0]",1).""",
    },
    "set_value_float": {
        "test": {'consistent("root.a[0]","1.2").'},
        "program": """
            type("root","product").
            type("root.a[0]","A").
            numeric("A",float).
            precision("A",1).
            range("A",1,2).
            index("root.a[0]",0).
            parent("root.a[0]","root").
            constraint(("root.a",1),"lowerbound").
            set("root.a","root.a[0]").
            part("product").
            user_value("root.a[0]","1.2").""",
    },
    "set_value_float_no_range": {
        "test": {'consistent("root.a[0]","1.2").'},
        "program": """
            type("root","product").
            type("root.a[0]","A").
            numeric("A",float).
            precision("A",1).
            index("root.a[0]",0).
            parent("root.a[0]","root").
            constraint(("root.a",1),"lowerbound").
            set("root.a","root.a[0]").
            part("product").
            user_value("root.a[0]","1.2").""",
    },
    # "set_value_int_to_float": {  # Constraint handler only
    #     "test": {'value("root.a[0]","1.0").'},
    #     "program": """
    #         type("root","product").
    #         type("root.a[0]","A").
    #         numeric("A",float).
    #         precision("A",1).
    #         range("A",1,2).
    #         index("root.a[0]",0).
    #         parent("root.a[0]","root").
    #         constraint(("root.a",1),"lowerbound").
    #         set("root.a","root.a[0]").
    #         part("product").
    #         user_value("root.a[0]",1).""",
    # },
    "add_invalid_variable": {
        "test": set(),
        "program": """
            user_include("root.basket[0]").""",
    },
    "set_invalid_variable": {"test": set(), "program": """user_value("root.color[0]","Yellow")."""},
    "set_invalid_type": {
        "test": set(),
        "program": """
            part("product").
            part("Basket").
            type("root.basket[0]","Basket").
            parent("root.basket[0]","root").
            index("root.basket[0]",0).
            user_value("root.basket[0]","Yellow").""",
    },
    "set_invalid_value_discrete": {
        "test": set(),
        "program": """
            part("product").
            discrete("Color",str).
            domain("Color","Red").
            type("root.color[0]","Color").
            parent("root.color[0]","root").
            index("root.color[0]",0).
            user_value("root.color[0]","Yellow").
            constraint(("root.color",1),"lowerbound").
            set("root.color","root.color[0]").""",
    },
    "set_greater_value_int": {
        "test": set(),
        "program": """
            part("product").
            numeric("product.size",int).
            range("product.size",1,3).
            type("root","product").
            type("root.size[0]","product.size").
            parent("root.size[0]","root").
            index("root.size[0]",0).
            constraint(("root.size",1),"lowerbound").
            set("root.size","root.size[0]").
            user_value("root.size[0]",11).""",
    },
    "set_lesser_value_int": {
        "test": set(),
        "program": """
            part("product").
            numeric("product.size",int).
            range("product.size",2,4).
            type("root","product").
            type("root.size[0]","product.size").
            parent("root.size[0]","root").
            index("root.size[0]",0).
            constraint(("root.size",1),"lowerbound").
            set("root.size","root.size[0]").
            user_value("root.size[0]",1).""",
    },
    "set_greater_value_float": {
        "test": set(),
        "program": """
            part("product").
            numeric("product.size",float).
            range("product.size",2,3).
            precision("product.size",1).
            type("root","product").
            type("root.size[0]","product.size").
            parent("root.size[0]","root").
            index("root.size[0]",0).
            constraint(("root.size",1),"lowerbound").
            set("root.size","root.size[0]").
            user_value("root.size[0]","3.2").""",
    },
    "set_lesser_value_float": {
        "test": set(),
        "program": """
            part("product").
            numeric("product.size",float).
            range("product.size",2,3).
            precision("product.size",1).
            type("root","product").
            type("root.size[0]","product.size").
            parent("root.size[0]","root").
            index("root.size[0]",0).
            constraint(("root.size",1),"lowerbound").
            set("root.size","root.size[0]").
            user_value("root.size[0]","1.7").""",
    },
}
