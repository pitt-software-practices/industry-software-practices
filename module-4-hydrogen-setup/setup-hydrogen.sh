# how to setup hydrogen

# simple instructions for Ubuntu / OSX:

# 1. activate your build env!
source ~/venv/{asdfasd}/bin/activate

# 2. then install jupyter notebook
pip3 install jupyterlab

# pay attention to any warnings! you may need to add a directory to your PATH, something like:
# edit ~/.bash_profile or ~/.bashrc
# export PATH=/{your home dir here}/.local/bin:$PATH

# 3. check to make sure jupyter notebook works! exit out when done
jupyter notebook

# 4. install a kernel for your venv into
python -m ipykernel install --user --name {asdfasd}

# 5. run commands in atom using cntl-enter, cntl-shift-enter, cmd-shift-p, etc.

# Q: should jupyterlab be in your requirements.txt?


# Now, how to get this to work on windows / WSL???
# something like this:
https://stackoverflow.com/questions/53350435/use-atoms-hydrogen-package-with-conda-environments-in-wsl
https://nteract.gitbooks.io/hydrogen/content/docs/Usage/RemoteKernelConnection.html

# 1. follow steps above, then if not still running, run jupyter in your terminal:

jupyter notebook

# 2. copy url from output, and modify the following YAML:

[{
  "name": "Remote server",
  "options": {
    "baseUrl": "http://example.com:8888",
    "token": "my_secret_token"
  }
}]

# you may want to adjust the password so you don't have to edit your token every time. Follow the
# instructions in the stack_overflow page!

# 3. in atom, go to installed packages -> hydrogen -> settings and paste the above YAML in the Kernel
# Gateways field.


# 4. in atom, go Packages -> Hydrogen -> Connect to Remote Kernel
# you may need to open an ipython notebook in the web-based jupyter notebook first
