# Git Utilities

Simple helpers for working with Git.

## Bash shortcuts

Simple shortcuts to streamline regular git commands.

* `gc`: `git checkout "$@"` (takes additional args)
* `gcm`: `git checkout main`
* `gb`: `git branch "$@"` (takes additional args)
* `gs`: `git status`
* `gp`: `git pull "$@"` (takes additional args)
* `gpm`: `git pull origin main`
* `gl`: `git log`
* `gls`: `git log --oneline --decorate "$@"` (takes additional args)
* `gll`: `git log --stat --pretty=short --graph "$@"` (takes additional args)
* `grp`: `git remote prune origin`

See the [load script](load-git-command-aliases.sh) for complete details.

## Utility scripts
Scripts for slightly more complex operations

### [Git Branch Checkout](git-branch-checkout.sh) (alias: `gbc`)
Lists all local branches with numbers for simple checkout without having to list them, copy and paste, etc.

![](docs/git-utils-checkout.gif)

### [Git Branch Delete](git-branch-delete.sh) (alias: `gbd`)
Lists all local branches with numbers for simple deleting without having to list them, copy and paste, etc.

![](docs/git-utils-delete.gif)

# Usage
* Check out this repo into your Linux home dir (defaults to `git-utils`)
* ensure all scripts have execute rights
* add the following to your `.bashrc` and reload:

```source ~/git-utils/load-git-command-aliases.sh```