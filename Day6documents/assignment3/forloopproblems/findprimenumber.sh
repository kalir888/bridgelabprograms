#!/bin/bash -x

b=0;
IS_PRIME=0;
read -p "Enter a number : " a
for (( n=2; n<$a; n++ ))
do
	d=$(($a%$n))
	if [ $d -eq 0 ]
	then
		b=1;
	fi
done
if [ $b -eq $IS_PRIME ]
then
	echo "The given number is prime number";
else
	echo "The given number is not a prime number";
fi

