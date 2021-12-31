#!/bin/bash

#How to declare an indexed array
declare -a names=(Kashinath Geeta Abhishek Shubham)

#How to unset an array 
#unset names 

#How to declare an associative array
#declare -A age

#How to check if a declared array is empty 
#[[ -z $age ]] && echo "EMPTY" 

#How to list each element in an indexed array individually
#An indexed array always starts from 0
#echo ${names[0]}

#How to append an element to the start of the array
names+=(Guddu)
#echo ${names[@]}

#How to append an element to the end of the array
names=(${names[@]} Namrata)
#echo ${names[@]}

#How to find the length of an array
#echo ${#names[@]}

#How to add elements to and associative array
#age[0]=70;

#How to list the elements in an associative array
#echo ${age[@]}

#How to use a for loop to iterate array one element at a time 
#for i in "${names[@]}";do
#	echo $i
#done

#How to print indexes of an array 
#echo ${!names[@]}

#Slicing elements in an array
#echo ${names[@]}

#How to create a read only array
#declare -ra read_only_array=(Deelip Manda Akshay Aniket )
#echo ${read_only_array[@]}

#NOTE: We cannot append or remove any element from a read_only_array
#read_only_array+=Abhishek

