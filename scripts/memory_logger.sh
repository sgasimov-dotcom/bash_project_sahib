#!/bin/bash

# Step 1: Create a bash script called memory_logger
# Step 2: Create an if statement
# ● This will check if the folder $HOME/performance exists and if it doesn’t then
# create it
# ● If the folder exists then echo out a statement confirming it exists
# Hint: Use the mkdir command to create the folder if it does not exist
# Step 3: After your if statement
# Append the output of the free command to $HOME/performance/memory.log
# Hint : The free command in Linux outputs the current memory usage of the computer

if [ -d $HOME/performance ] ; then
        echo "$HOME/performance folder exists"
else
        mkdir $HOME/performance
        echo "$HOME/performance folder has been created"
fi
free -m >> $HOME/performance/memory.log && echo DATE: $(date +%d-%m-%Y_%H:%M:%S) >> $HOME/performance/memory.log

