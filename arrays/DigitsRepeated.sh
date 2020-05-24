#! /bin/bash

counter=0
for i in {1..99}
do
	unit=`echo $i %10|bc`
	tenth=`echo $i %100|bc`
	tdigit=`echo $tenth /10|bc`
	if [ $unit -eq $tdigit ]
	then
		number_array[ ((counter++)) ]=$i
	fi
done

echo ${number_array[*]}
