#!/bin/bash

SCRIPT_DIR=$(dirname "$(realpath "$0")")

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

# Utility scripts
alias gbc='$SCRIPT_DIR/git-branch-checkout.sh'
alias gbd='$SCRIPT_DIR/git-branch-delete.sh'
alias bkm='$SCRIPT_DIR/create-git-bookmark.sh'

