#!/bin/bash

source /home/abhishek/Git/Shell-scripts/shell_script_examples/functions/validate_parameters.sh 

  if validate_arguments==0;then  
	calculate_leap_year(){
		if 
		local year=$1
		(($year%4==0))&&(($year%100!=0))||(($year%400==0));then
			echo "YES LEAP YEAR"
		else
			echo "NOT LEAP YEAR"
		fi
		}	
	fi
