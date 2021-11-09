#!/bin/bash
validate_arguments(){
	(( $# < 3 )) && {
		echo "$0 <string> <pattern> <replace>"
}
}
main(){
	
	validate_arguments "$@"

	local string=$1
	local pattern=$2
	local replace=$3

	echo ${string%$pattern*}${replace}${string##*$pattern}
}

main "$@"
