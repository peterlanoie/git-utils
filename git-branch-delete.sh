#!/bin/bash

while true; do
    # Fetch all local branches except 'main'
    branches=$(git branch --list | grep -v 'main')

    # Convert branches into an array
    branch_array=()
    while IFS= read -r line; do
        if [ -z "$line" ]; then
            continue
        fi
        branch_array+=("$line")
    done <<< "$branches"

    echo ""
    # List branches with numbers
    echo "Git branch delete:"

    # Check if there are branches to process
    if [ ${#branch_array[@]} -eq 0 ]; then
        echo "   No local branches available except 'main'."
        exit 0
    fi

    for i in "${!branch_array[@]}"; do
        echo "$((i + 1))) ${branch_array[$i]}"
    done
    echo "[q] / [ENTER] to quit"
    echo ""

    # Prompt the user for input
    read -p "Delete branch #: " branch_number

    # Handle "q" to quit
    if [ "$branch_number" == "q" ] || [ "$branch_number" == "" ]; then
#        echo "Exiting the script. Goodbye!"
        exit 0
    fi

    # Validate the input
    if ! [[ $branch_number =~ ^[0-9]+$ ]]; then
        echo "Invalid input. Please enter a valid number or 'q' to quit."
        continue
    fi

    if [ "$branch_number" -lt 1 ] || [ "$branch_number" -gt "${#branch_array[@]}" ]; then
        echo "Invalid number. Please select a number from the list."
        continue
    fi

    # Delete the selected branch
    selected_branch=${branch_array[$((branch_number - 1))]}
    selected_branch=${selected_branch//\*/} # Remove '*' if the branch is currently checked out
    selected_branch=$(echo "$selected_branch" | xargs) # Trim whitespace
    echo "Deleting branch: $selected_branch"

    git branch -d "$selected_branch"

    echo "================================================================================"
done
