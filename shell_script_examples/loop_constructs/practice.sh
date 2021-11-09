!/bin/bash
#i(i=1;i<10;i++));do
#	echo $i 
#done
#for ((a=1,b=1;
#	a<3 & b<5;
#	a++,b++));do
#	echo $a
#	echo $b
#done
#
#for i in $(seq 3);do
#	echo $i 
#one
#
#
i=0
while (( i < 10 )); do
	echo $i 
	if (( i == 8));then 
		echo "Limit reached"
	break
	fi
	((i++))

done

j=0
until (( j >=7 ));do
	echo $j
	((j++))
	break
	echo "Loop completed"
done;

