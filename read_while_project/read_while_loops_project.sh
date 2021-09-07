#!/bin/bash
#Step 1: Then, you will need to create a read-while loop which will process a file and create all of the directories.
# Step 2: Your script should allow the user to enter the path to the folders_to_create.txt file as a command line argument.
# Hint: Beware of Word Splitting!
# READY: run read_while_loops_project.sh  folders_to_create.txt  so then it'll create folders with the names mentioned in .txt

while read line; do
mkdir "$line" 
done < "$1"