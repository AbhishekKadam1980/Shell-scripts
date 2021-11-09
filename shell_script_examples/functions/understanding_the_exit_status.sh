#!/bin/bash 
my_func(){
	echo $1
}

my_func 0

(( $? == 0)) && echo "EXIT CODE 0, SUCCESS"

my_func 1

(( $? != 0)) && echo "EXIT CODE NOT ZERO, FAIL"
