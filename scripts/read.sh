#!/bin/bash
# -t 5 goes to other questions after 5 second 
# -s not to display what user types in the terminal PASSWORD
# -N  this will wait 4 character

read -p "Input your fist name please: " firstname
read -p "What is your surname/family name?: " lastname 
read -N 4 -p "What is your current extension number? (must be 4 digits): " ext
echo
read -N 4 -s -p "What access code would you like to use when dialing in? (must be 4 digits): " access
echo
echo "My first name is $name"
echo "My last name is $lastname"
echo "Extension is $ext"
echo "PIN Code is: $access" 
echo "$firstname,$lastname,$ext,$access"  >> extensions.txt