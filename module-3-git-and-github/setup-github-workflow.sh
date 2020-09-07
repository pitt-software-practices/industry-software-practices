# First:
# 1. send link to your github to me so I can fork it to github.com/pitt-software-practices
# 2. set up your github SSH key! https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

# Quick intro to git: https://levelup.gitconnected.com/what-is-git-how-to-use-it-why-to-use-it-explained-in-depth-76a5066abaaa


# Note: if your repo is already local, some of these steps are unnecessary

git clone {your repo here - USE SSH link}
# git clone sets up a remote named "origin" to repo you specify

cd {your repo}

# Now lets add a new remote for pitt software practices
# psp is for "Pitt Software Practices"
git remote add psp {PSP fork of your repo here - either SSH or https link}

git fetch psp
# this syncs all code from the PSP repo to your local repository

# look at all available branches on the remote repositories, -r is for remote
git branch -r

# now we want your master branch to point to the PSP repo's master, not YOUR master on origin

# move existing master out of the way
git branch -m master mymaster

git checkout -t psp/master

# delete old master branch
git branch -d mymaster


# now get to work!
# git branch {name for what I'm about to work on}
# git commit...
