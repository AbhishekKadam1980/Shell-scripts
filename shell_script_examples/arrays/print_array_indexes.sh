#!/bin/bash 

declare -a fruits
fruits=(apple orange banana)

echo ${#fruits[@]};

echo $(seq ${#fruits[@]});

#The exclamation mark(!) prints the indices of the array in consecutive order
echo "${!fruits[@]}"

#for i in $(seq 3);do
#	echo $i
#done

