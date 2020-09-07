# in git: practices

git status



#### recommended commit process

# to see what files are changed:
git status

# to see what changes were made to the files
git diff

# to add files to the staging area for committing
git add {files to commit}
# or
git add --patch {file to commit part of}

# to double-check that you got what you intended to, and you didn't leave a bunch of messy stuff in there:
git diff --staging

# to commit
git commit -m "commit message that includes not only what you did, but WHY you did it"

# to push to your remote repo
git push


#### recommended edit process for anything complex enough it requires more than one commit, or you
#### need a PR because you are editing someone else's code.

git checkout master #or whatever the branch is you are editing

# start with the most recent code
git pull

# create a new branch for your changes and switch to it
git branch {name of your branch}
git checkout {name of your branch}

# make your changes to the code and commit them

# if you are doing merges locally, then use `git merge`, otherwise
git push # follow the instructions to push a new branch

# set up a PR on github




#### how to ignore files

atom .gitignore

## add patterns to ignore in the .gitignore file for example .DS_store
