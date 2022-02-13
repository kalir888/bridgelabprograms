#!/bin/bash -x

echo "The given value is = $1" ;
echo "1";
echo "2";
base=2;
val=2;
b=$(($1+1))
while	[ $base -lt $b -a $base -lt 9 ]
do
	val=$(($val*2))
	echo "$val";
	base=$(($base+1));
done

