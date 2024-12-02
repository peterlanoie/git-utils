#!/bin/bash

# Get the current date and time in the format yyyy-mm-dd-hh-mm-ss
timestamp=$(date +"%Y-%m-%d-%H-%M-%S")

# Define the filename with the word "bookmark" and the timestamp
#filename=".bookmark-$timestamp"

# Create the file
#echo "This is a marker file." >> $filename
#echo "It's here so a commit can be made to provide a marking point to indicate where commits will be rebased after previous PRs are merged." >> $filename
#echo "This file will be removed as part of rebasing." >> $filename

# Optionally, print the filename
#echo ">>>> created git bookmark file: $filename"

#git add $filename
git commit --no-verify --message ">>>> git bookmark - rebase to commits from below this - $timestamp <<<<" --allow-empty
