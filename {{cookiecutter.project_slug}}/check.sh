#!/usr/bin/env bash

# coloring
bold=$(tput bold)
green=$(tput setaf 2)
normal=$(tput sgr0)

echo "${bold}mypy${normal}"
mypy --ignore-missing-imports {{ cookiecutter.project_slug }} tests \
    && echo "${green}OK${normal}" \
    || exit 1
echo

echo "${bold}tests${normal}"
{%- if cookiecutter.use_pytest == 'y' %}
py.test
{%- else %}
python setup.py test{%- endif %} \
    && echo "${green}OK${normal}" \
    || exit 1
echo

echo "${bold}pylint${normal}"
pylint {{ cookiecutter.project_slug }} tests \
    && echo -e "${green}OK${normal}\n" \
    || exit 1

echo 'All OK'
