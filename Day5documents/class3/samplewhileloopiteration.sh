#!/bin/bash -x

count=0;

while (( $count!=3 ))
do
	count=$((RANDOM%10))
	echo $count;
done

