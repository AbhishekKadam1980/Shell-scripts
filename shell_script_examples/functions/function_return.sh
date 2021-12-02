#!/bin/bash 
global_counter=$1 
local_counter(){
	#Note that this variable is available within this function only
	local_counter=2021 
	year_difference=$((local_counter-global_counter))
	echo "Thats a $year_difference year difference"
}

local_counter


