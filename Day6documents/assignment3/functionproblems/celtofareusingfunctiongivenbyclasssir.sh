#!/bin/bash -x

#CONSTANT
IS_CEL_TO_FAR=1;
IS_FAR_TO_CEL=2;

#VARIABLES
conversionaResults=0;


#functions
function celToFar()
{
	conversionaResults=$(echo |awk "BEGIN {print $1 * 9/5 + 32}");
	echo "$1*C in F is: $conversionaResults*F"
}

function farToCel()
{
	conversionaResults=$(echo |awk "BEGIN {print $(( $1 - 32 )) * 5/9}");
	echo "$1*F in C is: $conversionaResults*C"
}


echo -e  "\nSelect any of the below options: "
echo     "1. Celsius to Fahrenheit."
read -p  "2. Fahrenheit to Celsius " opt


	case $opt in 
		1)
			read -p "Enter temperature in Celsius between O*C to 100*C: " deg
	      celToFar $deg
			;;
		2)
			read -p "Enter temperature in Fahrenheit between 32*F to 212*F: " deg
	      farToCel $deg
			;;
		*)
			echo -e "Invalid Input. Please try again."
			;;
	esac
