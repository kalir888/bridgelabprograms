#!/bin/bash -x

N=0;
P=2;
H=0;
T=0;
while [ $H != 11 -a $T != 11 ]
do
	coin=$(($RANDOM%$P));

	if [[ $coin -eq 0 ]];
	then
		echo "heads";
		H=$(($H+1));
	else
		echo "tails";
		T=$(($T+1));
	fi
done
