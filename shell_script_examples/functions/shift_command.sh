#!/bin/bash
show_arguments(){
	local p1=$1
	local p2=$2
       		
	
	echo "p1=$p1"
 	echo "p2=$p2"
	
}

show_arguments a b


echo "writing the same fuction with a different name using a shift variable"


show_same_arguments(){
	local p1=$1
	echo "p1=$1"
	shift
	local p1=$1

	echo $p1 
}

show_same_arguments a b c 

