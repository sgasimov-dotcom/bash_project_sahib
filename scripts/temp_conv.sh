#!/bin/bash
# f - farenheit c - celcius
# cal - calendar   cal -A 1  means how many months after 1 months you want to display: for ex cal -A 2, cal -A 3

while getopts "c:f:" opt; do
case "$opt" in
c) # convert from celsius to farenheit
result=$(echo "scale=2; ($OPTARG * (9 / 5)) + 32" | bc)
;;
f) # convert from fahrenheit to celsius
result=$(echo "scale=2; ($OPTARG - 32) * (5/9)" | bc)
;;
\?)
Echo "Invalid option provided"
;;
esac
echo "$result"
done