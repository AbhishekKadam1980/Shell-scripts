#!/bin/bash

age_calc(){	
		local year_born=$1
		
		local current_year=$(date +%Y)		

		result=$(( current_year - year_born ))
		
		return $result 
	   }


