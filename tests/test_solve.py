"""
Test cases for solving.
"""

from typing import Any, Tuple
from unittest import TestCase

from . import run_test
from .tests import TESTS_SOLVE

# pylint: disable=deprecated-method


def unpack_test(test_name: str, fclingo: bool = False) -> Tuple[Any, Any, Any]:
    """
    Unpacks a clintest.Test with parameters in a dictionary.

    Args:
        test_name (str): The dictionary key of the test.
    """
    test_dict = TESTS_SOLVE[test_name]
    program = test_dict.get("program", None)
    files = test_dict.get("files", None)
    if fclingo:
        test = test_dict.get("ftest", test_dict["test"])
    else:
        test = test_dict["test"]
    return test, program, files


class TestClingo(TestCase):
    """
    Test cases for the clingo encoding.
    """

    def run_test(self, test_name: str) -> None:
        """
        Runs a clintest test with the clingo encoding.
        """
        test, program, files = unpack_test(test_name)
        run_test(test, files=files, program=program, ctl_args=["0"], solver="clingo", preprocess="False")

    def test_sanity_checks(self) -> None:
        """
        Simply sanity check test cases (clingo).
        """

        self.run_test("formula_undef")
        self.run_test("table_undef")
        self.run_test("empty_table")

    def test_structure(self) -> None:
        """
        Test structure generation (clingo).
        """
        self.run_test("empty")
        self.run_test("optional_part")
        self.run_test("mandatory_part")
        self.run_test("part_with_cardinality")
        self.run_test("optional_part_with_subpart")

    def test_attributes(self) -> None:
        """
        Test attribute generation (clingo).
        """
        self.run_test("simple_discrete")
        self.run_test("optional_discrete")
        self.run_test("multiple_discrete")

        self.run_test("simple_integer")
        self.run_test("optional_integer")
        self.run_test("multiple_integer")


class TestFclingo(TestCase):
    """
    Test cases for the fclingo encoding.
    """

    def run_test(self, test_name: str) -> None:
        """
        Runs a clintest test with the fclingo encoding.
        """
        test, program, files = unpack_test(test_name, fclingo=True)
        run_test(test, files=files, program=program, ctl_args=["0"], solver="fclingo", preprocess="False")

    def test_sanity_checks(self) -> None:
        """
        Simply sanity check test cases (fclingo).
        """

        self.run_test("formula_undef")
        self.run_test("table_undef")
        self.run_test("empty_table")

    def test_structure(self) -> None:
        """
        Test structure generation (fclingo).
        """
        self.run_test("empty")
        self.run_test("optional_part")
        self.run_test("mandatory_part")
        self.run_test("part_with_cardinality")
        self.run_test("optional_part_with_subpart")

    def test_attributes(self) -> None:
        """
        Test attribute generation (fclingo).
        """
        self.run_test("simple_discrete")
        self.run_test("optional_discrete")
        self.run_test("multiple_discrete")

        self.run_test("simple_integer")
        self.run_test("optional_integer")
        self.run_test("multiple_integer")


# class TestClingo(TestCase):
#     """
#     Test cases for the clingo encoding.
#     """

#     def run_test(self, test_name: str) -> None:
#         """
#         Runs a clintest test with the clingo encoding.
#         """
#         test, program, files = unpack_test(test_name)
#         run_test(test, files=files, program=program, ctl_args=["0"], solver="clingo")

#     def test_boolean_constraints(self) -> None:
#         """
#         Test solving boolean constraints (clingo).
#         """
#         # require
#         self.run_test("require_with_number")
#         self.run_test("require_with_number_ge")
#         self.run_test("require_with_constant")
#         self.run_test("require_two_wheels")

#         # condition
#         self.run_test("condition")

#         # Boolean formulas

# def test_table_constraints(self) -> None:
#     """
#     Test solving table constraints (cclingo).
#     """
#     self.run_test("combination")

# def test_enumeration(self) -> None:
#     """
#     Test solving enumeration features (clingo).
#     """
#     self.run_test("enumeration")
#     self.run_test("bool_enumeration")

# def test_attribute(self) -> None:
#     """
#     Test solving enumeration features with attributes (clingo).
#     """
#     self.run_test("attribute")

# def test_partonomy(self) -> None:
#     """
#     Test solving partonomy features (clingo).
#     """
#     self.run_test("structure")
#     self.run_test("structure_optional")
#     self.run_test("structure_nested")
#     self.run_test("structure_nested_optional")

# def test_require_with_partonomy(self) -> None:
#     """
#     Test solving require constraints with partonomy involved (clingo).
#     """
#     self.run_test("require_multiple_instances")
#     self.run_test("require_with_partonomy")
#     self.run_test("require_with_partonomy2")
#     self.run_test("require_with_partonomy_multiple_instances")

# def test_table_constraints_with_partonomy(self) -> None:
#     """
#     Test solving table constraints with partonomy involve (clingo).
#     """
#     self.run_test("combination_with_structure")
#     self.run_test("combination_at_part_with_wildcard")
#     self.run_test("combination_at_part_multiple_instances")

# def test_arithmetics(self) -> None:
#     """
#     Test arithmetic language features (clingo).
#     """
#     self.run_test("simple_numeric_feature")
#     self.run_test("simple_arithmetic_plus")
#     self.run_test("simple_arithmetic_minus")
#     self.run_test("simple_arithmetic_multiplication")
#     self.run_test("simple_arithmetic_plus_default_right")
#     self.run_test("simple_arithmetic_plus_default_left")
#     self.run_test("simple_arithmetic_minus_default_right")
#     self.run_test("simple_arithmetic_minus_default_left")
#     self.run_test("parentheses")

# def test_aggregates(self) -> None:
#     """
#     Test aggregate function language features (clingo).
#     """


# class TestFclingo(TestCase):
#     """
#     Test cases for the fclingo encoding.
#     """

#     def run_test(self, test_name: str) -> None:
#         """
#         Runs a clintest test with the fclingo encoding.
#         """
#         test, program, files = unpack_test(test_name, fclingo=True)
#         run_test(test, files=files, program=program, ctl_args=["0"], solver="fclingo")

#     def test_boolean_constraints(self) -> None:
#         """
#         Test solving boolean constraints (fclingo).
#         """
#         # require
#         self.run_test("require_with_number")
#         self.run_test("require_with_number_ge")
#         self.run_test("require_with_constant")
#         self.run_test("require_two_wheels")

#         # condition
#         self.run_test("condition")

#         # Boolean formulas

#     def test_table_constraints(self) -> None:
#         """
#         Test solving table constraints (fclingo).
#         """
#         self.run_test("combination")

#     def test_enumeration(self) -> None:
#         """
#         Test solving enumeration features (fclingo).
#         """
#         self.run_test("enumeration")
#         self.run_test("bool_enumeration")

#     def test_attribute(self) -> None:
#         """
#         Test solving enumeration features with attributes (fclingo).
#         """
#         self.run_test("attribute")

#     def test_partonomy(self) -> None:
#         """
#         Test solving partonomy features (fclingo).
#         """
#         self.run_test("structure")
#         self.run_test("structure_optional")
#         self.run_test("structure_nested")
#         self.run_test("structure_nested_optional")

#     def test_require_with_partonomy(self) -> None:
#         """
#         Test solving require constraints with partonomy involved (fclingo).
#         """
#         self.run_test("require_multiple_instances")
#         self.run_test("require_with_partonomy")
#         self.run_test("require_with_partonomy2")
#         self.run_test("require_with_partonomy_multiple_instances")

#     def test_table_constraints_with_partonomy(self) -> None:
#         """
#         Test solving table constraints with partonomy involve (fclingo).
#         """
#         self.run_test("combination_with_structure")
#         self.run_test("combination_at_part_with_wildcard")
#         self.run_test("combination_at_part_multiple_instances")

#     def test_arithmetics(self) -> None:
#         """
#         Test arithmetic language features (fclingo).
#         """
#         self.run_test("simple_numeric_feature")
#         self.run_test("simple_arithmetic_plus")
#         self.run_test("simple_arithmetic_minus")
#         # No multiplication and division of variables in fclingo
#         self.run_test("simple_arithmetic_plus_default_right")
#         self.run_test("simple_arithmetic_plus_default_left")
#         self.run_test("simple_arithmetic_minus_default_right")
#         self.run_test("simple_arithmetic_minus_default_left")
#         self.run_test("parentheses")

#     def test_aggregates(self) -> None:
#         """
#         Test aggregate function language features (fclingo).
#         """


# class TestUserInput(TestCase):
#     """
#     Test cases for COOM user input.
#     """

#     def run_test(self, test_name: str) -> None:
#         """
#         Runs a clintest test with the COOM user input.
#         """
#         test, program, files = unpack_test(test_name)
#         run_test(test, files=files, program=program, ctl_args=["0"])

#     def user_check(self, test: str, expected_msg: str) -> None:
#         """
#         Runs a test checking the user input for validity.
#         """
#         with self.assertRaises(ValueError) as ctx:
#             self.run_test(test)
#         self.assertEqual(str(ctx.exception), expected_msg)

#     def test_set(self) -> None:
#         """
#         Test setting a value by the user.
#         """
#         self.run_test("set_discrete")
#         self.run_test("set_num")

#     def test_add(self) -> None:
#         """
#         Test adding an object by the user.
#         """
#         self.run_test("add")
#         self.run_test("add2")

#     def test_checks(self) -> None:
#         """
#         Test checks for invalid user input
#         """
#         self.user_check("set_invalid_variable", "User input not valid.\nVariable root.color[0] is not valid.")
#         self.user_check("add_invalid_variable", "User input not valid.\nVariable root.basket[0] is not valid.")
#         self.user_check("set_invalid_type", "User input not valid.\nNo value can be set for variable root.basket[0].")
#         self.user_check("add_invalid_type", "User input not valid.\nVariable root.basket[0] cannot be added.")
#         self.user_check(
#             "set_invalid_value_discrete",
#             "User input not valid.\nValue 'Yellow' is not in domain of variable root.color[0].",
#         )
#         self.user_check(
#             "set_invalid_value_num", "User input not valid.\nValue '11' is not in domain of variable root.size[0]."
#         )
