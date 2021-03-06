#!/usr/bin/env bash

# coloring
bold=$(tput bold)
green=$(tput setaf 2)
normal=$(tput sgr0)

echo "${bold}mypy${normal}"
mypy --ignore-missing-imports src/{{ cookiecutter.project_slug }} tests \
    && echo "${green}OK${normal}" \
    || exit 1
echo

echo "${bold}tests${normal}"
{%- if cookiecutter.use_pytest == 'y' %}
py.test
{%- else %}
python -m unittest{%- endif %} \
    && echo "${green}OK${normal}" \
    || exit 1
echo

echo "${bold}pylint${normal}"
pylint src/{{ cookiecutter.project_slug }} tests \
    && echo -e "${green}OK${normal}\n" \
    || exit 1

echo "${green}All OK${normal}"
