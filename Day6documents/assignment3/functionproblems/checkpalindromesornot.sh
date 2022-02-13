#!/bin/bash -x

#function to find whether the given two numbers are palindromes or not
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
	m=$2;
   od=0;
   pal=0;
   while [ $m -gt 0 ]
   do
      od=$(( $m % 10 ));
      pal=$(( $pal *10 + $od ));
      m=$(( $m / 10 ))
   done
   case $pal in
      $2)
         echo " $2 is a palindrome ";
         ;;
      *)
         echo " $2 is not a palindrome ";
         ;;
   esac

}
read -p " Enter any two numbers " A B
functionpal $A $B
