#!/bin/bash
i=0
for i in $(seq 5);do
	if (( $i == 3 )); then
		break
	fi
	echo $i
done
