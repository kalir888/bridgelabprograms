#!/bin/bash -x

#function to find the number is prime or not
#constants
IS_PRIME=0;
NOT_PRIME=1;

#variables
functionprime()
{
	b=0;
	for (( i=2; i<$1; i++ ))
	do
		d=$(( $1%$i ));
		if [ $d -eq 0 ]
		then
			b=$NOT_PRIME;
		fi
	done
	case $b in
		$IS_PRIME)
			echo " $1 is a prime number ";
			;;
		*)
			echo " $1 is not a prime number ";
			;;
	esac
}

#function to find the number is palindrome or not
functionpal()
{
	n=$1;
	singleDigit=0;
	rev=0;
	while (( $n!=0 ))
	do
		singleDigit=$(( $n%10 ));
		rev=$(( (rev*10) + singleDigit ));
		n=$(( n/10 ));
	done
	case $1 in
		$rev)
			echo " $1 is a palindrome number ";
			;;
		*)
			echo " $1 is not a palindrome number ";
			;;
	esac
}
read -p " Enter a number " N

functionprime $N
functionpal $N

if [ $b -eq $IS_PRIME -a $N -eq $rev ]
then
	echo " $N is prime and palindrome ";
elif [ $b -eq $IS_PRIME -a $N != $rev ]
then
   echo " $N is prime not palindrome ";
elif [ $b != $IS_PRIME -a $N -eq $rev ]
then
   echo " $N is palindrome not prime ";
else
	echo " $N is neither prime nor palindrome ";
fi

