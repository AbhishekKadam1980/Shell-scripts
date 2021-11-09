#!/bin/bash 


validate_arguments(){
	(( $# != 2 )) && {
		echo "$0 <string> <substring>"
		exit 1
	}
}
main(){
	
	validate_arguments "$@"

	local string=$1
	local substring=$2
	
	local left=${string%$substring*}
	echo $left

#	[[ $left != $string ]] && echo ${#left} || echo -1
}

main "$@"
