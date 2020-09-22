

git clone https://github.com/monshap/plepy.git

# we are checking out a specific commit, because we are only going to clean
# the commits Monica PR'd from last week.

git checkout 5246cf9

git switch -c pr

# decide what you need to do to clean it up! Usually I do this by looking at the github commits.
# look at the log to find the oldest commit we need to change, which is this one: "Changed default
# solver to non-academic solver." The commit BEFORE THAT is: 4c39d87 (see below).

# 5246cf9 (HEAD -> pr) Merge branch 'develop'
# f8e53fa Fixed pathing issues in test scripts, so they can be run from main package directory.
# a15a015 Merge branch 'develop'
# 8b0e391 Updated naming of non-public functions to match PEP8. => split comment commit, rollback changing to _*
# 4fd5958 Updated .gitignore
# f8baeaf Fixed comments to match PEP8 max line length. => split whitespace from max line length
# f779468 Changed default solver to non-academic solver. => split out the whitespace commits
# 4c39d87 Update README.md

# now start a rebase to the commit prior to the oldest one to change

git rebase -i 4c39d87

# check the git log, are you where you expect to be?
git log --oneline

# change pick to edit for the three commits we are splitting up above.
# Then write and quit. (you are probably in vi, so :wq)

# remember git reset from last week? Let's rollback the last commit so that all changes
# are in the working directory.

git reset HEAD^

# check the git log, are you where you expect to be?
git log --oneline

git diff
# how do we separate out the two mixed purpose commits?

git add --patch plepy/PLEpy.py
# add either the whitespace OR the solver change

# now commit appropriately. I added the whitespace, so:
git add tests/rapidTEG/rapidTEG_example.py
git commit -m "whitespace"

# now commit the solver:
git add plepy/PLEpy.py
git commit -m "Changed default solver to non-academic solver"

git status

# alright, let's continue the rebase!
git rebase --continue

# here we go again!
git log --oneline
git reset HEAD^
git diff
git add --patch plepy/helper.py
git commit -m "whitespace"
git commit -am "Fixed comments to match PEP8 max line length"
git rebase --continue

# here we go again!
git log --oneline
git reset HEAD^
git diff
git add --patch plepy/PLEpy.py
git commit -m "docstrings"
git commit -am "Updated naming of non-public functions to match PEP8"
git rebase --continue

# you should be done with the first rebase!

# check the git log, are you where you expect to be?
git log --oneline

# what happened to the merge commits??
# are the commit SHAs the same or different than before?


# That was fun but we now have a couple more things to do:
# 1. we have two whitespace commits which is sloppy, so lets join those.
# 2. we meant to roll back the change where we renamed functions to use _functionname()
# so let's rebase again!

# you probably want to BRANCH at this point so if you mess up the second rebase
# you don't lose your work!!

git branch pr2
git checkout pr2

# my git log looks like this (yours will be a bit different):

# 49dddac (HEAD -> pr) Fixed pathing issues in test scripts, so they can be run from main package directory.
# cb4e6ad Updated naming of non-public functions to match PEP8 => drop this commit
# 21f2b3d docstrings
# 73519b6 Updated .gitignore
# a3f4e34 Fixed comments to match PEP8 max line length
# 95de960 whitespace  => SQUASH with other whitespace commit
# 772d954 Changed default solver to non-academic solver
# 6020322 whitespace => SQUASH with other whitespace commit
# 4c39d87 Update README.md

git rebase -i 4c39d87

# move the first whitespace line down near the second, and prefix with 'fixup'
# prefix the "Updated naming of non-public" with 'drop'

# your commits should be clean, atomic, and beautiful now!
# So now you would push and PR this branch.
# You can push it it to the older branch where you PRd, but keep in mind that this will
# overwrite everything there (and will require you to force push using -f). If you are
# confident, this is recommended. If you haven't received any reviews on the old branch then
# you can also close the original PR and push this to a new branch and create a new PR.
