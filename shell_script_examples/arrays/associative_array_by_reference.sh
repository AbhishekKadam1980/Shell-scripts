#!/bin/bash 

declare -A msgs=([11]=john [22]="Smith Jr" [33]=pope)

show_ref_arrray(){
	local -n msgs=$1
	echo $(msgs[@])
}
