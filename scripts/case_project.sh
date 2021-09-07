# Step 1: Firstly you need to create a select statement in your script that will present to
# the user a list of the below cities to choose from.
# Tokyo, London, Los Angeles, Moscow, Dubai, Manchester, New York, Paris
# Bangalore, Johannesburg, Istanbul, Milan, Abu Dhabi, Pune, Nairobi, Berlin, Karachi
# Step 2: Secondly you need to set up a case statement that will match each of these
# cities as cases to their respective countries and echo out the country name to the
# user of the script.
# Note : You need to place your case statement inside of the select statement.
# Note : Some of the cities are in the same country. You can use a | to separate these
# within the same case rather than creating separate cases for each.
# For example: A|B) commands ;;

#!/bin/bash
PS3="Please enter the city number for the list: "
select city in Tokyo London "Los Angeles" Moscow Dubai Manchester "New York" Paris Bangalore Johannesburg Istanbul Milan "Abu Dhabi" Pune Nairobi Berlin Karachi Madrid; do
        case "$city" in
            Tokyo) 
                country="Japan" ;;
            London|Manchester)
                country="United Kingdom" ;;
            "Los Angeles"|"New York")
                country="United States" ;;
            Moscow)
                country=Russia ;;
            Dubai|"Abu Dhabi")
                country="United Arab Emirates" ;;
            Paris)
                country="France" ;;
            Bangalore|Pune)
                country="India" ;;
            Johannesburg)
                country="South Africa" ;;
            Istanbul)
                country="Turkey" ;;
            Milan)
                country="Italy" ;;
            Nairobi)
                country="Kenya" ;;
            Berlin)
                country="Germany" ;;
            Karachi)
                country="Pakistan" ;;
            Madrid)
                country="Spain" ;;
        esac
        echo "$city is in $country"
        break
done