#!/bin/bash 
global_counter=1987 
local_counter(){
	local_counter=2020 
	year_difference=$((local_counter-global_counter))
	echo "Thats a $year_difference year difference"
}

local_counter


