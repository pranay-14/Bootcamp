#! /bin/bash

read -p "enter the number to find prime factors : " n

isPrime=1
count=0

for ((i=2; i<=n; i++))
do
	num=`echo $i /2|bc`
	result=`echo $n %$i|bc`
	if [ $result -eq 0 ]
	then
		for ((j=2; j<=num; j++))
		do
			result1=`echo $i %$j|bc`
			if [ $result1 -eq 0 ]
			then
				isPrime=0
				break
			fi
		done
		if [ $isPrime -eq 1 ]
		then	
			count=`echo $count +1|bc`
			echo "$i is aprime factor"
			prime_factor[count]=$i
		fi
	fi
done

echo ${prime_factor[@]}
