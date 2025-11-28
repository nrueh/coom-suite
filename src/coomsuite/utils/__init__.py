"""
Utilities.
"""

from importlib.resources import as_file, files
from typing import List, Optional

from antlr4 import CommonTokenStream, InputStream
from clingo import Symbol

from coomsuite.utils.parse_coom import ASPModelVisitor, ASPUserInputVisitor

from .coom_grammar.model.ModelLexer import ModelLexer
from .coom_grammar.model.ModelParser import ModelParser
from .coom_grammar.user.UserInputLexer import UserInputLexer
from .coom_grammar.user.UserInputParser import UserInputParser

# mypy: allow-untyped-calls


SOLVERS = {
    "clingo": "encoding-base-clingo.lp",
    "flingo": "encoding-base-flingo.lp",
    "constraint-handler": "encoding-constraint-handler.lp",
}


def get_filename(solver: str, show: Optional[bool] = False) -> str:  # nocoverage
    """Gets the filename of a encoding

    Args:
        solver (str): The name of the solver
        show (Optional[bool]): Whether it is a encoding with show statements

    """
    if show:
        return f"show-{solver}.lp"
    return SOLVERS[solver]


def get_encoding(filename: str) -> str:  # nocoverage
    """Gets the full path to a given ASP encoding in the encodings folder

    Args:
        filename (str): The name of the ASP encoding with the extension

    Returns:
        str: The string for the path to the ASP encoding
    """
    with as_file(files("coomsuite") / "encodings" / filename) as file:
        return str(file)


def run_antlr4_visitor(coom_input_stream: InputStream, grammar: str) -> List[str]:
    """Runs the ANTLR4 Visitor.

    Args:
        coom_input_stream (antlr4.InputStream): The input COOM encoding as a file stream

    Returns:
        List[str]: The converted ASP instance

    """
    if grammar == "model":
        lexer = ModelLexer(coom_input_stream)
        stream = CommonTokenStream(lexer)
        parser = ModelParser(stream)
        tree = parser.root()
        visitor = ASPModelVisitor()
        visitor.visitRoot(tree)
    elif grammar == "user":
        lexer = UserInputLexer(coom_input_stream)
        stream = CommonTokenStream(lexer)
        parser = UserInputParser(stream)
        tree = parser.user_input()
        visitor = ASPUserInputVisitor()
        visitor.visitUser_input(tree)
    return visitor.output_asp


def asp2coom(s: Symbol) -> str:
    """
    Formats ASP output symbols to a more readable COOM format.
    """
    if s.name == "include":
        return s.arguments[0].string.removeprefix("root.")
    if s.name == "value":
        path = s.arguments[0].string.removeprefix("root.")
        value = s.arguments[-1]
        return f"{path} = {value}"
    raise ValueError(f"Unrecognized predicate: {s.name}")


def coom2asp(c: str) -> str:
    """
    Converts COOM facts to ASP facts.
    """
    if "=" in c:
        path, value = c.split("=")
        return f'value("root.{path.strip()}",{value.strip()})'
    path = c.strip()
    return f'include("root.{path}")'
