# Git Utilities

Simple helpers for working with Git.

## Bash shortcuts
Simple shortcuts to streamline regular git commands.

See the [load script](load-git-command-aliases.sh) for complete details.

## Utility scripts
Scripts for slightly more complex operations

### [Git Branch Checkout](git-branch-checkout.sh) (alias: `gbc`)
Lists all local branches with numbers for simple checkout without having to list them, copy and paste, etc.

### [Git Branch Delete](git-branch-delete.sh) (alias: `gbd`)
Lists all local branches with numbers for simple deleting without having to list them, copy and paste, etc.

# Usage
* Check out this repo into your Linux home dir (defaults to `git-utils`)
* ensure all scripts have execute rights
* add the following to your `.bashrc` and reload:

```~/git-utils/load-git-command-aliases.sh```