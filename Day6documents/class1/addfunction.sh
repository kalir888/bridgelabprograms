#!/bin/bash -x

function AdditionofTwoNumbers()
{
	add=$(($1+$2));
	echo $add;
}

num1=15;
num2=30;

total=$(AdditionofTwoNumbers $num1 $num2 );
echo $total
