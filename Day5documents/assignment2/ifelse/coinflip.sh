#!/bin/bash -x

N=0;
P=2;
read -p "press any single digit number to flip the coin" N
if [ $N -lt 10 ]
then
	coin=$(($RANDOM%$P));
else
	coin=2;
fi
if [ $coin -eq 0 ]
then
	echo "heads";
elif [ $coin -eq 1 ]
then
	echo "tails";
else
	echo "you have entered more than a single digit number";
fi
