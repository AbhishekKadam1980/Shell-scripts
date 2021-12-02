#!/bin/bash
fname=${1:-default_value_1}
lname=${2:-default_value_2}
if [[ $fname == "Abhishek" && $lname == "kadam" ]]; then  
        echo "Hello $fname $lname"

elif [[ $fname == "Abhishek" || $fname == "kadam" ]]; then 
	echo "Hello $fname"

elif [[ $lname == "kadam" ]]; then
	echo "Hello $lname"

else 
	echo "Incorrect credentials"
fi
	
