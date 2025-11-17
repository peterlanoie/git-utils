#!/bin/bash

# Fetch all local branches
branch_array=$(git branch --list)

selected_branch=$(echo "$branch_array" | fzf --height=50% --border --layout=reverse-list --border-label="Checkout Git Branch" --prompt="Select branch and [ENTER] or [ESC]: ")

if [ -n "$selected_branch" ]; then
    selected_branch=${selected_branch//\*/} # Remove '*' if the branch is currently checked out
    selected_branch=$(echo "$selected_branch" | xargs) # Trim whitespace
    echo "Checking out branch: $selected_branch"

    git checkout "$selected_branch"
    exit 0
else
    echo "No selected selected."
    exit 1
fi
