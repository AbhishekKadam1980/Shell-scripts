#!/bin/bash 
my_counter=5
show_local_variable(){
	local my_counter=3
	echo "local variable is $my_counter"
}

show_local_variable 

echo "file level variable is $my_counter"

