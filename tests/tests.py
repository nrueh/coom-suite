"""
Contains a dictionary with all clintest tests
and the corresponding files or programs they should be run with.

The key of the dictionary corresponds to the name of the test.

Most tests run with clingo and fclingo.
All other tests contain a "ftest" entry which is a test modified for fclingo.
"""

from typing import Any as AnyType

from clintest.assertion import Contains, Equals, False_, Implies, SubsetOf, SupersetOf, True_
from clintest.quantifier import All, Any, Exact
from clintest.test import And as AndTest
from clintest.test import Assert

from . import ContainsTheory, SupersetOfTheory

TESTS: dict[str, dict[str, AnyType]] = {
    "empty": {"test": Assert(All(), SubsetOf(set()))},
    "root_only": {"test": Assert(All(), Equals({'instance((),":root")'}))},
    "unsat": {"test": Assert(Exact(0), False_)},  # type: ignore # falsely views False_ as not of type Assertion
    "require_with_number": {
        "test": Assert(All(), Contains(("val((size,((wheel,((),0)),0)),27)"))),
        "ftest": Assert(All(), ContainsTheory("val((size,((wheel,((),0)),0)),27)", check_theory=True)),
        "files": ["require_with_number.lp"],
    },
    "require_with_number_ge": {
        "test": Assert(All(), Contains(("val((size,((wheel,((),0)),0)),28)"))),
        "ftest": Assert(All(), ContainsTheory("val((size,((wheel,((),0)),0)),28)", check_theory=True)),
        "files": ["require_with_number_ge.lp"],
    },
    "require_with_constant": {
        "test": Assert(All(), Contains(('val((wheel,((),0)),"W28")'))),
        "files": ["require_with_constant.lp"],
    },
    "require_two_wheels": {
        "test": AndTest(
            Assert(
                Exact(1),
                SupersetOf({("val((size,((frontWheel,((),0)),0)),27)"), ("val((size,((rearWheel,((),0)),0)),27)")}),
            ),
            Assert(
                Exact(1),
                SupersetOf({("val((size,((frontWheel,((),0)),0)),28)"), ("val((size,((rearWheel,((),0)),0)),28)")}),
            ),
        ),
        "files": ["require_two_wheels.lp"],
    },
    "condition": {
        "test": Assert(
            All(), Implies(Contains('val((wheelSupport,((),0)),"True")'), Contains('val((wheel,((),0)),"Small")'))
        ),
        "files": ["condition.lp"],
    },
    "combination": {
        "test": AndTest(
            Assert(Any(), SupersetOf({'val((wheelSupport,((),0)),"False")', 'val((wheel,((),0)),"W20")'})),
            Assert(Any(), SupersetOf({'val((wheelSupport,((),0)),"False")', 'val((wheel,((),0)),"W18")'})),
            Assert(Any(), SupersetOf({'val((wheelSupport,((),0)),"True")', 'val((wheel,((),0)),"W16")'})),
            Assert(Any(), SupersetOf({'val((wheelSupport,((),0)),"True")', 'val((wheel,((),0)),"W14")'})),
            Assert(Exact(4), True_()),
        ),
        "files": ["combination.lp"],
    },
    "enumeration": {
        "test": AndTest(
            Assert(Exact(1), Contains('val((color,((),0)),"Red")')),
            Assert(Exact(1), Contains('val((color,((),0)),"Green")')),
            Assert(Exact(1), Contains('val((color,((),0)),"Blue")')),
            Assert(Exact(3), True_()),
        ),
        "program": """
            structure(":root").
            feature(":root",color,"Color",1,1).

            enumeration("Color").
            option("Color", "Red").
            option("Color", "Green").
            option("Color", "Blue").""",
    },
    "bool_enumeration": {
        "test": AndTest(
            Assert(Exact(1), Contains('val((boolean,((),0)),"True")')),
            Assert(Exact(1), Contains('val((boolean,((),0)),"False")')),
            Assert(Exact(2), True_()),
        ),
        "program": """
        structure(":root").
        feature(":root",boolean,"bool",1,1).""",
    },
    "attribute": {
        "test": Assert(Exact(1), SupersetOf({"val((size,((wheel,((),0)),0)),14)", 'val(((wheel,((),0))),"W14")'})),
        "ftest": Assert(
            Exact(1),
            SupersetOfTheory({"val((size,((wheel,((),0)),0)),14)", 'val(((wheel,((),0))),"W14")'}, check_theory=True),
        ),
        "program": """
        structure(":root").
        feature(":root",wheel,"Wheel",1,1).

        enumeration("Wheel").
        attribute("Wheel",size,"num").
        option("Wheel", "W14").
        attr_value("Wheel","W14",size,14).""",
    },
    "structure": {
        "test": AndTest(
            Assert(Exact(1), Contains('instance((wheel,((),0)),"Wheel")')),
            Assert(Exact(1), True_()),
        ),
        "program": """
        structure(":root").
        feature(":root",wheel,"Wheel",1,1).
        structure("Wheel").""",
    },
    "structure_optional": {
        "test": AndTest(
            Assert(Exact(1), Contains('instance((basket,((),0)),"Basket")')),
            Assert(Exact(2), True_()),
        ),
        "program": """
        structure(":root").
        feature(":root",basket,"Basket",0,1).
        structure("Basket").""",
    },
    "structure_nested": {
        "test": AndTest(
            Assert(
                Exact(1),
                SupersetOf({'instance((carrier,((),0)),"Carrier")', 'instance((bag,((carrier,((),0)),0)),"Bag")'}),
            ),
            Assert(Exact(1), True_()),
        ),
        "program": """
        structure(":root").
        feature(":root",carrier,"Carrier",1,1).
        structure("Carrier").
        feature("Carrier",bag,"Bag",1,1).
        structure("Bag").""",
    },
    "structure_nested_optional": {
        "test": AndTest(
            Assert(Exact(3), Contains('instance((carrier,((),0)),"Carrier")')),
            Assert(Exact(2), Contains('instance((bag,((carrier,((),0)),0)),"Bag")')),
            Assert(
                Exact(1),
                SupersetOf(
                    {
                        'instance((carrier,((),0)),"Carrier")',
                        'instance((bag,((carrier,((),0)),0)),"Bag")',
                        'instance((bag,((carrier,((),0)),1)),"Bag")',
                    }
                ),
            ),
            Assert(Exact(4), True_()),
        ),
        "program": """
        structure(":root").
        feature(":root",carrier,"Carrier",0,1).
        structure("Carrier").
        feature("Carrier",bag,"Bag",0,2).
        structure("Bag").""",
    },
}
