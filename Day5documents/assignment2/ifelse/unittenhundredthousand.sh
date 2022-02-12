#!/bin/bash -x

read -p "enter a (maximum four digit) number:" A
if [ $A -lt 10 ]
then
	echo "The given number have only unit digit";
	unit=$A;
	echo "The unit digit is = $unit";
elif [ $A -lt 100 -a $A -gt 9 ]
then
	echo "The given number is a two digit number";
	unit=$(($A%10));
	echo "The unit digit is = $unit";
	tens=$(($A/10));
	echo "The tens digit is = $tens";
elif [ $A -lt 1000 -a $A -gt 99 ]
then
   echo "The given number is a three digit number";
   B=$(($A%100));
	unit=$(($B%10));
   echo "The unit digit is = $unit";
   tens=$(($B/10));
   echo "The tens digit is = $tens";
	hundreds=$(($A/100));
	echo "The hundreds digit is = $hundreds";
elif [ $A -lt 10000 -a $A -gt 999 ]
then
	echo "The given number is a four digit number";
	C=$(($A%1000));
	B=$(($C%100));
	unit=$(($B%10));
	echo "The unit digit is = $unit";
	tens=$(($B/10));
	echo "The tens digit is = $tens";
	hundreds=$(($C/100));
	echo "The hundreds digit is = $hundreds";
	thousands=$(($A/1000));
	echo "The thousands digit is = $thousands";
fi

