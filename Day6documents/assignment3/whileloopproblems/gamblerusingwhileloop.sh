#!/bin/bash -x
#constants
LOSS=0;
GAIN=200;
#variables
cap=100;
wins=0;
lose=o;
bet=0;
while [ $cap != $LOSS -a $cap != $GAIN ]
do
	game=$((RANDOM%2));
	if [ $game -eq 1 ]
	then
		echo "YOU WIN!!";
		wins=$(($wins+1));
		cap=$(($cap+1));
		bet=$(($bet+1));
	else
		echo "YOU LOSE"
		lose=$(($lose+1));
		cap=$(($cap-1));
		bet=$(($bet+1))
	fi
done
echo  "total number of times won = $wins";
echo	"total number of times lose = $lose";
echo	"total number of times bet = $bet";

