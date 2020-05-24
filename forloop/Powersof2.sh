#! /bin/bash 

read -p "enter the value of n : " n
power=2

for ((i=1; i<=n; i++))
do
	result=$(($power**$i))
	echo $result
done
 
