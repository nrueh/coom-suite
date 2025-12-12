"""
Test cases for checking the user input for validity.
"""

from typing import Optional
from unittest import TestCase

from coomsuite.preprocess import check_user_input
from coomsuite.utils.logging import get_logger

from .clintests.tests_solve import TESTS_SOLVE

log = get_logger("main")


class TestUserInputCheck(TestCase):
    """
    Test user input check
    """

    def run_test(self, test_name: str, expected_msg: Optional[str] = None) -> None:
        """
        Runs a test checking if the correct warning is logged for invalid user input
        and the correct consistent/1 and consistent/2 predicates are returned for consistent user input.
        """
        program = TESTS_SOLVE[test_name]["program"]
        test = TESTS_SOLVE[test_name]["user_test"]
        for a in test:
            program.replace(a, "")

        if expected_msg is None:
            with self.assertNoLogs(log, level="WARNING") as ctx:
                consistent_inputs = check_user_input(program)
        else:
            with self.assertLogs(log, level="WARNING") as ctx:
                consistent_inputs = check_user_input(program)
            self.assertEqual(ctx.output, [f"WARNING:main:{expected_msg}"])
        self.assertEqual(set(consistent_inputs), test)

    def test_user_input(self) -> None:
        """
        Test user input check
        """
        self.run_test("add_part")
        self.run_test("add_attribute")
        self.run_test("set_value_discrete")
        self.run_test("set_value_integer")
        self.run_test("set_value_integer_no_range")

        self.run_test("set_invalid_variable", "Invalid user input.\nVariable root.color[0] does not exist.")
        self.run_test("add_invalid_variable", "Invalid user input.\nVariable root.basket[0] does not exist.")
        self.run_test(
            "set_invalid_type",
            "Invalid user input.\nNo value can be set for variable root.basket[0]. Variable exists but is a part.",
        )
        # self.run_test(
        #     "add_invalid_type", "Invalid user input.\nVariable root.basket[0] cannot be added: Not a part."
        # )
        self.run_test(
            "set_invalid_value_discrete",
            "Invalid user input.\nValue 'Yellow' is not in domain of variable root.color[0].",
        )
        self.run_test(
            "set_greater_value_int", "Invalid user input.\nValue '11' is not in domain of variable root.size[0]."
        )
        self.run_test(
            "set_lesser_value_int", "Invalid user input.\nValue '1' is not in domain of variable root.size[0]."
        )
        self.run_test(
            "set_greater_value_float", "Invalid user input.\nValue '3.2' is not in domain of variable root.size[0]."
        )
        self.run_test(
            "set_lesser_value_float", "Invalid user input.\nValue '1.7' is not in domain of variable root.size[0]."
        )
