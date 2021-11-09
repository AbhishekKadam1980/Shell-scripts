#!/bin/bash
fname=${1:-sample.txt}
cond1=sample1.txt
cond2=sample2.txt
case $fname in
	sample.txt)
		echo text matches default value pattern
		;;
	$cond1|$cond2)
		echo condition satisfied
		;;
	*)
		echo pattern not recognized
		;;
esac
