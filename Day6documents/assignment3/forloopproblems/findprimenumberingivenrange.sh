##!/bin/bash -x

read -p "Enter the starting point of the range" s
read -p "Enter the ending point of the range" e
b=0;
for (( n=$s; n<=$e; n++ ))
do
	for (( i=2; i<$n; i++ ))
	do
		d=$(($n%$i))
		if [ $d -eq 0 ]
		then
				b=1;
		fi
	done
	if [ $b -eq 0 ]
	then
			echo "$n is a prime number"
	else
			echo "$n is not a prime number"
	fi
	b=0;
done
