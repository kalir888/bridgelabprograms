##!/bin/bash -x

declare -a userArray

read -p " Enter the count of numbers you are going to input " length
for (( i=0; $i<$length; i++ ))
do
	read userArray[$i];
done
#CONSTANTS

FOUND=1;
NOT_FOUND=0;

#VARIABLES
comb=$NOT_FOUND;

echo ${userArray[@]}

for (( i=0; i<($length-2); i++ ))
do
	for (( j=($i+1); j<($length-1); j++ ))
	do
		for (( k=($j+1); k<$length; k++ ))
		do
			 zeroCheck=$((${userArray[$i]}+${userArray[$j]}+${userArray[$k]}))
			if [ $zeroCheck -eq 0 ]
			then
				declare -a combijk
				combijk[0]=${userArray[$i]}
				combijk[1]=${userArray[$j]}
				combijk[2]=${userArray[$k]}
				echo ${combijk[@]}
				comb=$FOUND;
			fi
		done
	done
done

if [ $comb -eq $NOT_FOUND ]
then
	echo " no such combos found in the given set of numbers ";
fi

