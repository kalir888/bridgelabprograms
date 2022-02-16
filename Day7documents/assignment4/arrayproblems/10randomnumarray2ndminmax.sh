##!/bin/bash -x

#assigning a random value
declare -a rA
for (( i=0; i<10; i++ ))
do
	rA[i]=$((RANDOM))
done
echo "${rA[@]}"
#function to find that given number is lessthan howmany values in the array
functionmini()
{
	lessThan=0;
	for (( i=0; i<10; i++ ))
	do
		if [ $1 -lt ${rA[$i]} ]
		then
			lessThan=$(($lessThan+1));
		fi
	done
	echo $lessThan
}
#making a lessthan array
declare -a lessThan
for (( j=0; j<10; j++ ))
do
	lessThan[j]=$( functionmini ${rA[j]} )
done
echo "${lessThan[@]}"
#finding the second largest and second smallest
#constants
SECOND_LARGEST=1;
SECOND_SMALLEST=8;
for (( k=0; k<10; k++ ))
do
	case ${lessThan[k]} in
		$SECOND_LARGEST)
			echo " ${rA[k]} is the second largest number ";
			;;
		$SECOND_SMALLEST)
			echo " ${rA[k]} is the second smallest number ";
			;;
		*)
			;;
	esac
done


