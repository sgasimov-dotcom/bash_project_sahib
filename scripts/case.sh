#!/bin/bash
read -p "Please enter a number: " number
case "$number" in
        [0-9]) echo "you have entered a signle digit number";;
        [0-9][0-9]) echo "you ahve enter at wo digit number";;
    [0-9][0-9][0-9]) echo "you ahve enter a two digit number";;
    *) echo "YOu have entered a numner that is more than 3 digit";;
esac