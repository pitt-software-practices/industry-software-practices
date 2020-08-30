

setup:

```
mkdir extramath
cd extramath
git init
atom .
```

as a practice for test-driven-development, lets start out by writing a test
- setup a new venv for this package and activate
- create the file requirements.txt that contains just `pytest` and then run `pip install -r requirements.txt`
- create the directory tests and the file tests/test_sqrt.py. write the following code in this file:
-
```
from extramath.sqrt import sqrt

def test_sqrt():
  assert sqrt(4.0) == approx(2.0)
```
- if you run pytest right now, it will fail. try it!

- create the file `extramath/__init__.py`
- create the file `extramath/sqrt.py` and write the following:

```
def sqrt(x):
  pass
```
- now if you run pytest, it will error, as expected.
- now edit sqrt.py:

```
def sqrt(x):
  return x ** 0.5
```
- run pytest
- does it pass? let's commit!

```
# to see what files are changed:
git status

# to see what changes were made to the files
git diff

# to add files to the staging area for committing
git add {add all the files here}

# to double-check that you got what you intended to, and you didn't leave a bunch of messy stuff in there:
git diff --staging

# to commit
git commit -m "write your best commit message here"
```

now lets refactor the sqrt function. Change sqrt.py to be:
```
def sqrt(x):
  return x ** (1/2)
```
run pytest. does it still work?
run `git diff`. does it show what you expect?
add and commit the change.
let's change it one more time:
```
import math

def sqrt(x):
  return math.sqrt(x)
```

run pytest. does it still work?
run `git diff`. does it show what you expect?
add and commit the change.

The point of tests is that it frees you to make changes to the code, knowing that you can rely on the tests to determine whether the code behaves the same.






-
-
-
