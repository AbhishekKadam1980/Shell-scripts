#!/bin/bash
function show_arguments(){
	echo $@
	echo $1 
	echo $2
	echo $*
}

show_arguments a b c
