# pylint: disable=redefined-outer-name
{% if cookiecutter.use_pytest == 'y' -%}import pytest{% else %}import unittest{%- endif %}

import {{ cookiecutter.project_slug }}

{%- if cookiecutter.use_pytest == 'y' %}


@pytest.fixture
def response():
    """Sample pytest fixture.

    See more at: http://doc.pytest.org/en/latest/fixture.html
    """
    # import requests
    # return requests.get('https://github.com/audreyr/cookiecutter-pypackage')


def test_content(response):
    """Sample pytest test function with the pytest fixture as an argument."""
    # from bs4 import BeautifulSoup
    # assert 'GitHub' in BeautifulSoup(response.content).title.string
    assert response is None
    assert {{ cookiecutter.project_slug }}

{%- else %}


class TestExample(unittest.TestCase):
    def setUp(self):
        """Set up test fixtures, if any."""

    def tearDown(self):
        """Tear down test fixtures, if any."""

    def test_000_something(self):
        """Test something."""
        assert {{cookiecutter.project_slug}}
{%- endif %}
