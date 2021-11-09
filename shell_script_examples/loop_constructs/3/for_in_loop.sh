#!/bin/bash
for i in 1 2 3;do
	echo $i
done
echo
for i in {a..c};do
	echo $i
done
echo
for i in $(seq 3);do
	echo $i
done
echo 
for i in $(seq 3 1 6);do
        echo $i
done
echo 
for i in $(ls -l);do
	echo $i
done
