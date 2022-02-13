#!/bin/bash -x

echo "The given value is = $1" ;
echo "1";
echo "2";
val=2;
for (( base=2; base<=$1; base++ ))
do
	val=$((val*2));
	echo "$val";
done

