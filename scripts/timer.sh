#!/bin/bash
# bash timer.sh -s 10
# bash timer.sh -s 5 -m 1
# Step 1: You need to add getopts into your script to provide two options to your user.
# The script should accept a -m option minutes and a -s option for seconds.
# You will also need to use arithmetic expansion to calculate the total number of
# seconds, and save this value into a variable called total_seconds
# Step 2: You then need to create a while loop that prints out the total number of
# seconds remaining, once per second, until there are no seconds left.
# Note: You can use the command “ sleep 1s ” to make your loop pause for 1 second before looping again.
# Step 3: Finally, when the script ends, make sure to echo out the statement “Time’s Up!”

total_seconds=""

while getopts "m:s:" opt; do
   case "$opt" in
      m) total_seconds=$(( $total_seconds + $OPTARG * 60 )) ;;
      s) total_seconds=$(( $total_seconds + $OPTARG )) ;;
   esac
done

while [ $total_seconds -gt 0 ]; do
    echo "$total_seconds"
    total_seconds=$(( $total_seconds - 1 ))
    sleep 1s
done

echo "Time's up!"