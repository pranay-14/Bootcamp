#! /bin/bash

read -p "enter the number to check prime or not : " n

count=0

for ((i=1; i<=n; i++))
do
	result=`echo $n %$i|bc`
		if [ $result -eq 0 ]
			then
				((count++))	
		fi
done

if [ $count -eq 2 ]
then
	echo "$n is a prime"
else
	echo "$n is not a prime"
fi

