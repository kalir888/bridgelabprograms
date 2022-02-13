#!/bin/bash -x

read -p "Enter a number" a
f=1;
for(( i=a; i>1; i=i-2 ))
do
	j=$(($i-1))
	f=$(($f*$i*$j))
done
echo "The factorial of given number is = $f"

