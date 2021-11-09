#!/bin/bash 




calculate_leap_year(){

year=$1
test1=$((year%4))
test2=$((year%100))
test3=$((year%400))
	
if (($test1==0));then 
	if (($test2==0));then 
		if (($test3==0));then 
			echo "Yes"
		else
			echo "NO"
		fi
	fi
fi 
}

