======================
Cookiecutter PyPackage
======================

Cookiecutter_ template for a Python package.

* GitHub repo: https://github.com/swarmer/cookiecutter-pypackage-medium/
* Free software: BSD license


Features
--------

* Testing setup with ``unittest`` and ``python setup.py test`` or ``py.test``
* Tox_ testing: Setup to easily test for different python versions
* Sphinx_ docs: Documentation ready for generation with, for example, ReadTheDocs_

.. _Cookiecutter: https://github.com/audreyr/cookiecutter


Quickstart
----------

Install the latest Cookiecutter if you haven't installed it yet (this requires
Cookiecutter 1.4.0 or higher)::

    pip install -U cookiecutter

Generate a Python package project::

    cookiecutter https://github.com/swarmer/cookiecutter-pypackage-medium.git

Then:

* Create a repo and put it there.
* Install the dev requirements into a virtualenv. (``pip install -r requirements_dev.txt``)
* Install the project into your environment. (``pip install -e .``)
* Register_ your project with PyPI.
* Add the repo to your ReadTheDocs_ account + turn on the ReadTheDocs service hook.
* Add a `requirements.txt` file that specifies the packages you will need for
  your project and their versions. For more info see the `pip docs for requirements files`_.

.. _`pip docs for requirements files`: https://pip.pypa.io/en/stable/user_guide/#requirements-files
.. _Register: https://packaging.python.org/distributing/#register-your-project


Acknowledgements
----------------

Based on https://github.com/audreyr/cookiecutter-pypackage


.. _Tox: http://testrun.org/tox/
.. _Sphinx: http://sphinx-doc.org/
.. _ReadTheDocs: https://readthedocs.io/
.. _Punch: https://github.com/lgiordani/punch
.. _PyPi: https://pypi.python.org/pypi
