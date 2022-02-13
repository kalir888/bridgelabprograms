#!/bin/bash -x

#function of  celcius to farenheit
function degCtodegF(){
	degF=$(echo | awk "BEGIN {print $1 * 9/5 + 32}");
	echo $degF
}

#function of farenheit to celcius
function degFtodegC(){
	degC=$(echo | awk "BEGIN {print $(( $1 - 32 )) * 5/9}");
	echo $degC
}

#program starting

echo "in what terms you have the temperature value??";
read -p "if celcius press C if farenheit press F" T
case $T in
	C)
		read -p "Enter temperature in celsius between 0*C to 100*C: " temp
		degF=" $( degCtodegF $temp ) "
		echo " farenheit degF=$degF ";
		;;

	F)
		read -p "Enter tempertaure in Farenheit between 32*F to 212*F: " temp
		degC=" $( degFtodegC $temp ) ";
		echo " celcius degC=$degC ";
		;;
	*)
		echo " invalid value ";
		;;
esac
