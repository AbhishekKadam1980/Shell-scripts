#!/bin/bash 

declare -a fruits
fruits=(apple orange banana)

echo ${#fruits[@]};

echo $(seq ${#fruits[@]});


#for i in $(seq 3);do
#	echo $i
#done

