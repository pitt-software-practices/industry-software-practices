this walkthrough is based on this document: https://godatadriven.com/blog/a-practical-guide-to-using-setup-py/


get the extramath repo we were previously working on

```bash
git clone https://github.com/pitt-software-practices/extramath.git
cd extramath
```

LOAD or create a venv for this project now!

create a file called setup.py that contains this:


```python
from setuptools import setup, find_packages

setup(
    name='extramath',
    version='0.1.0',
    packages=find_packages(include=['extramath', 'extramath.*'])
)
```

now you can install the the package into your venv with:

```bash
pip install -e ./
```

pip list

let's add our numpy dependency to the setup.py:

```python
setup(
    # ...,
    install_requires=['numpy']
)
```

```bash
pip install -e ./
```

What happens?

make sure to add any necessary commas!

let's setup a command line script with click. Update your setup.py:

```python
setup(
    # ...,
    install_requires=[
      'numpy',
      'click'
    ],
    entry_points={
        'console_scripts': [
          'sqrt=extramath.cli:sqrt_cli'
        ]
    }
)
```

create the file extramath/cli.py and add the code:

```python
import click
from extramath.sqrt import sqrt

@click.command()
@click.argument('num', type=int)
def sqrt_cli(num):
    return sqrt(num)
```

```bash
pip install -e ./
which sqrt
sqrt --help
sqrt 2
```

why does this return nothing?? Because you can't "return" something to the command line.

edit cli.py:

```
def sqrt_cli(num):
    print(sqrt(num))
    return 0 # success
```
