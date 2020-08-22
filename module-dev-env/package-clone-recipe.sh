# download software from github, set up an isolated virtual environment,
# install the required libraries, run the tests, and open the source code in a text editor.


## 1. DOWNLOAD CODE

git clone {get url from github}
cd {directory you just cloned}
git checkout {figure out correct branch}

## 2. SETUP ISOLATED VIRTUAL ENVIRONMENT
python3 -m venv ~/venv/{name of your new venv – often just the package name}
. ~/venv/{name of venv}/bin/activate

## 3. read README for special installation instructions

less README

## 4. INSTALL REQUIREMENTS
pip install -r requirements.txt


## 5. RUN TESTS

python -m unittest

# or

pytest

# or

# ??

## 6. INSTALL FOR EDITING

pip install -e ./
