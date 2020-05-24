#! /bin/bash

read -p "enter the range to check prime or not : " n

count=0

if [ $n -eq 1 ]
then
	echo $n
else
	for ((j=1; j<=n; j++))
	do
		i=2
		q=1
		while [ $i -lt $j ]
		do
			q=`echo $j %$i|bc`
				if [ $q -eq 0 ]
					then
						break
				else
					i=`echo $i +1|bc`
				fi
		done
		if [ $q -ne 0 ]
		then
			echo $j
		fi
	done
fi


