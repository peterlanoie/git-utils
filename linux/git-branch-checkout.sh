#!/bin/bash

# Fetch all local branches except 'main'
branches=$(git branch --list)

# Convert branches into an array
branch_array=()
while IFS= read -r line; do
    branch_array+=("$line")
done <<< "$branches"

# List branches with numbers
echo ""
echo "Git branch checkout:"
for i in "${!branch_array[@]}"; do
    echo "$((i + 1))) ${branch_array[$i]}"
done
echo "[q] / [ENTER] to exit"
echo ""

# Prompt the user for input
read -p "Branch #: " branch_number

# Handle "q" to quit
if [ "$branch_number" == "q" ] || [ "$branch_number" == "" ]; then
#    echo "Exiting the script. Goodbye!"
    exit 0
fi

# Validate the input
if ! [[ $branch_number =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid number."
    exit 1
fi

if [ "$branch_number" -lt 1 ] || [ "$branch_number" -gt "${#branch_array[@]}" ]; then
    echo "Invalid number. Please select a number from the list."
    exit 1
fi

# Delete the selected branch
selected_branch=${branch_array[$((branch_number - 1))]}
selected_branch=${selected_branch//\*/} # Remove '*' if the branch is currently checked out
selected_branch=$(echo "$selected_branch" | xargs) # Trim whitespace
echo "Checking out branch: $selected_branch"

git checkout "$selected_branch"

exit 0
