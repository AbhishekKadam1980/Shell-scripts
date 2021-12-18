#!/bin/bash 
parameter_count(){
	echo "Number of parameters passed to the function is $#"
}

parameter_count $@
