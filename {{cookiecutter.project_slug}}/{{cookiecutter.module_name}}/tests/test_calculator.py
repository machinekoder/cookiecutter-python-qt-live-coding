# -*- coding: utf-8 -*-
import pytest

from {{cookiecutter.module_name}} import Calculator


@pytest.fixture
def calc():
    return Calculator()


@pytest.mark.parametrize("a,b,expected", [(1, 1, 2), -1, 2, 1])
def test_sum_is_calculated_correctly(calc, a, b, expected):
    calc.a = a
    calc.b = b
    assert calc.out == expected
