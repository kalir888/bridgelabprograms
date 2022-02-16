#!/bin/bash -x

#constants
IS_DIVISIBLE=0;

declare -a repNumber

for (( i=1; $i<100; i++ ))
do
	test=$(( $i%11 ))
	if [ $test -eq $IS_DIVISIBLE ]
	then
		index=$(( ($i/11)-1 ));
		repNumber[$index]=$i;
	fi
done
echo ${repNumber[@]}
