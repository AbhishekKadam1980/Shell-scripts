#!/bin/bash
validate_arguments(){
	if [[ $@ <1 ]];then
		echo "Please provide a parameter"
	else
		exit 0
	fi
}
