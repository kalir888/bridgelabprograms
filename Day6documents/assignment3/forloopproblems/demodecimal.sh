#!/bin/bash -x

ft=0.092903
read -p "Enter length in ft:" len
read -p "Enter breadth in ft:" brd
area=`echo $len $brd  $ft | awk '{num1=$1;num2=$2;num3=$3; print num1*num2*num3}'`
