#!/bin/bash -x

#function for finding whether the number is prime or not
functionprime()
{
	#CONSTANTS
	IS_PRIME=0;
	NOT_PRIME=1;
	b=0;
	for (( n=2; n<$1; n++ ))
	do
		d=$(($1%$n))
		if [ $d -eq 0 ]
		then
			b=$NOT_PRIME;
		fi
	done
	if [ $b -eq $IS_PRIME ]
	then
		echo "The $1 is prime number";
	else
		echo "The $1 is not a prime number";
	fi
}

#function to find whether the number is palindrome or not
functionpal()
{
   n=$1;
   sd=0;
   rev=0;
   while [ $n -gt 0 ]
   do
      sd=$(( $n % 10 ));
      rev=$(( $rev *10 + $sd ));
      n=$(( $n / 10 ))
   done
   case $rev in
      $1)
         echo " $1 is a palindrome ";
         ;;
      *)
         echo " $1 is not a palindrome ";
         ;;
   esac

}
#function for pal and prime
functionprimeandpal()
{
	if [ $b -eq $IS_PRIME -a $1 -eq $rev ]
	then
		echo " $1 is prime and palindrome ";
	elif [ $b -eq $IS_PRIME -a $1 != $rev ]
	then
		echo " $1 is prime not palindrome ";
	elif [ $b != $IS_PRIME -a $1 -eq $rev ]
	then
		echo " $1 is palindrome not prime ";
	else
		echo " $1 is neither prime nor palindrome ";
	fi
}
#starting the program
read -p " Enter the number " X

functionprime $X
functionpal $X
functionprimeandpal $X
