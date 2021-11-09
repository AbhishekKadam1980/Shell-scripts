#!/bin/bash 

validate_string(){
	
	(( $# != 2 )) && {
		echo "$0 <string> <substring>"
	}
}

main(){
	
	validate_string "$@"
	
	local string=$1
	local substring=$2

	local left=${string%%$substring*}
    
	echo $left

#	[[ $left != $string ]] && echo ${#left} || echo -1 
}


main "$@"
