#!/bin/bash -x

read -p "Enter a number : " a

#constants
IS_DIVISIBLE=0;
IS_PRIME=0;
NOT_PRIME=1;

#variables
half=$(($a/2));
j=0;
for (( i=2; i<=$half; i++ ))
do
	divCheck1=$(($a%$i))
	if [ $divCheck1 -eq $IS_DIVISIBLE ]
	then
		n=2;
		primeCheck=0;
		while [ $n -lt $i -a $primeCheck -eq $IS_PRIME ]
		do
			divCheck2=$(($i%$n))
			if [ $divCheck2 -eq $IS_DIVISIBLE ]
         then
				primeCheck=$NOT_PRIME;
			else
				primeCheck=$IS_PRIME;
				n=$(($n+1));
         fi
		done
		declare -a primeFactor
		if [ $primeCheck -eq $IS_PRIME ]
		then
			primeFactor[j]=$i
			j=$(($j+1));
		fi
	fi
done
echo ${primeFactor[@]}
