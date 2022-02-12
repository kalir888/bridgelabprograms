#!/bin/bash -x

read -p "enter a (maximum four digit) number:" A

case $A in
	[0-9])
		echo "The given number have only unit digit";
		unit=$A;
		echo "The unit digit is = $unit";
		;;
	[1-9][0-9])
		echo "The given number is a two digit number";
		unit=$(($A%10));
		echo "The unit digit is = $unit";
		tens=$(($A/10));
		echo "The tens digit is = $tens";
		;;
	[1-9][0-9][0-9])
   	echo "The given number is a three digit number";
   	B=$(($A%100));
		unit=$(($B%10));
   	echo "The unit digit is = $unit";
   	tens=$(($B/10));
   	echo "The tens digit is = $tens";
		hundreds=$(($A/100));
		echo "The hundreds digit is = $hundreds";
		;;
	[1-9][0-9][0-9][0-9])
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
		;;
	*)
		echo "The given number is more than a four digit number"
		;;
esac
