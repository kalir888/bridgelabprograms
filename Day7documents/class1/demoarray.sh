#!/bin/bash -x

demoArray[0]=12
demoArray[1]=123
demoArray[2]=1564
demoArray[3]="mango"
demoArray[4]=4564
demoArray[5]="K"

echo ${demoArray[@]}
a=$((${demoArray[2]}+${demoArray[1]}));
echo $a
echo "${demoArray[3]} is my favourite fruit"
