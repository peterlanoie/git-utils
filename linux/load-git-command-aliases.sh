#!/bin/bash

SCRIPT_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

echo "Loading git-utils command aliases from $SCRIPT_DIR"
echo "   (https://github.com/peterlanoie/git-utils)"

# General helpers for existing git commands
alias gc='git checkout "$@"'
alias gcm='git checkout main'
alias gb='git branch "$@"'
alias gs='git status'
alias gp='git pull "$@"'
alias gpm='git pull origin main'
alias gl='git log'
alias gls='git log --oneline --decorate "$@"'
alias gll='git log --stat --pretty=short --graph "$@"'
alias grp='git remote prune origin'

# Makes a commit with no content to provide an obvious bookmark for rebasing
# This is useful when you have a series of commits that contribute to multiple PRs that you need 
# to rebase before each separate PR
alias bkm='timestamp=$(date +"%Y-%m-%d-%H-%M-%S") && git commit --no-verify --message ">>>> git bookmark - rebase to commits from below this - $timestamp <<<<" --allow-empty'

# Utility scripts
alias gbc="$SCRIPT_DIR/git-branch-checkout.sh"
alias gbd="$SCRIPT_DIR/git-branch-delete.sh"
