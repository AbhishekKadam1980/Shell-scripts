#!/bin/bash
validate_arguments(){
	if [[ $@ <1 ]];then
		return 1
	else
		return 0 
	fi
}
