

Read this:

[Eikonomega tutorial](https://eikonomega.medium.com/getting-started-with-sphinx-autodoc-part-1-2cebbbca5365)

This is also good: [Don't be afraid to commit tutorial](https://dont-be-afraid-to-commit.readthedocs.io/en/latest/documentation.html)


Roughly the steps are:

```bash
pip install sphinx
sphinx-quickstart
# adjust conf file to use autodoc
# update index.rst file to show autodoc docstrings
# (you should have already have an existing docstring)
make html
```

Get your docs onto [readthedocs](https://readthedocs.org/)!

Create an account on readthedocs and connect it to your git repo.

Bonus points for adding the badge to your project readme.
