# Undo Add
The opposite instruction of `add` (staging files) is `reset` (unstaging files). Use `git reset FILE` to just unstage `FILE` or `git reset` to unstage everything.

!!! example
	```shell
	git add main.py
	git reset main.py
	```

# Undo Commit
To undo the last commit without resetting the worktree and index use `git reset --soft HEAD^` which is equivalent to `git reset --soft HEAD~1`

!!! example
	```shell
	git commit -m "Add something"
	git reset --soft HEAD^
	git commit -a -c ORIG_HEAD
	```

## Soft vs. Mixed vs. Hard Reset
`--soft`
:   uncommit changes, changes are left staged (index).
 
`--mixed (default)`
:   uncommit + unstage changes, changes are left in working tree.
 
`--hard:`
:   uncommit + unstage + delete changes, nothing left.

# References
* [git-reset documentation](https://git-scm.com/docs/git-reset)
* [How do I undo 'git add' before commit?](https://stackoverflow.com/a/348234)
* [What's the difference between git reset --mixed, --soft, and --hard?](https://stackoverflow.com/a/50022436)
