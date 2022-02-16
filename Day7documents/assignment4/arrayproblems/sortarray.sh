#!/bin/bash -x

for ((i=0; $i<10; i++))
do
	a[$i]=$((RANDOM))
done
echo " array before sorting ";
echo ${a[@]}

#constants
DONE=1;
NOT_DONE=0
for ((i=0; $i<10; i++))
do
	swapCheck=$DONE;
	j=0;
	while [ $j -lt $((10-i-1)) -a swapCheck=$DONE ]
	do
		if [ ${a[$j]} -gt ${a[$((j+1))]} ]
		then
			temp=${a[$j]};
			a[$j]=${a[$((j+1))]};
			a[$((j+1))]=$temp;
			swapCheck=$DONE;
		else
			swapCheck=$NOTDONE;
		fi
		j=$(($j+1));
	done
done
echo "Array after sorting: "
echo ${a[@]}

echo " ${a[1]} is the second smallest number ";
echo " ${a[8]} is the second largest number ";

