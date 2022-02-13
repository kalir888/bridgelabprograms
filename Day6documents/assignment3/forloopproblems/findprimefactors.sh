##!/bin/bash -x

read -p "Enter a number : " a
for (( i=2; i<$a; i++ ))
do
	d=$(($a%$i))
	b=0;
	if [ $d -eq 0 ]
	then
		for (( n=2; n<$i; n++ ))
		do
			e=$(($i%$n))
			if [ $e -eq 0 ]
			then
				b=1;
			fi
		done
		if [ $b -eq 0 ]
		then
			echo " $i is prime factor of $a ";
		fi
	fi
done

