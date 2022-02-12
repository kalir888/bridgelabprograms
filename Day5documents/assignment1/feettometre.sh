#!/bin/bash -x
ft=0.3048;
Area=`echo $Area | awk '{print (60*0.3048*40*0.3048)}'`
echo "Therefore the area of given rectangle plot is ${Area}M^2";
Area25=`echo $Area25 | awk '{print (60*0.3048*0.3048*40*25)}'`
echo "Therefore the area of 25 such plots is ${Area25}M^2";


