#!/bin/bash

while true; do
    # Fetch all local branches except 'main'
    branches=$(git branch --list | grep -v 'main')

    # Convert branches into an array
    branch_array=()
    while IFS= read -r line; do
        branch_array+=("$line")
    done <<< "$branches"

    # Check if there are branches to process
    if [ ${#branch_array[@]} -eq 0 ]; then
        echo "No local branches available except 'main'. Exiting."
        exit 0
    fi

    # List branches with numbers
    echo "Available branches:"
    for i in "${!branch_array[@]}"; do
        echo "$((i + 1))) ${branch_array[$i]}"
    done
    echo "q) Quit"

    # Prompt the user for input
    read -p "Enter the number of the branch to delete, or 'q' to quit: " input

    # Handle "q" to quit
    if [ "$input" == "q" ]; then
        echo "Exiting the script. Goodbye!"
        exit 0
    fi

    # Validate the input
    if ! [[ $input =~ ^[0-9]+$ ]]; then
        echo "Invalid input. Please enter a valid number or 'q' to quit."
        continue
    fi

    if [ "$input" -lt 1 ] || [ "$input" -gt "${#branch_array[@]}" ]; then
        echo "Invalid number. Please select a number from the list."
        continue
    fi

    # Delete the selected branch
    selected_branch=${branch_array[$((input - 1))]}
    selected_branch=${selected_branch//\*/} # Remove '*' if the branch is currently checked out
    selected_branch=$(echo "$selected_branch" | xargs) # Trim whitespace
    echo "Deleting branch: $selected_branch"

    git branch -d "$selected_branch"

    echo "================================================================================"
done
