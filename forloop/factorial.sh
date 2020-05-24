#! /bin/bash

num=0
fact=1

read -p "enter the number to find factorial: " n

num=$n

for ((i=1; i<=num; i++))
do
	fact=`echo $fact *$i|bc`
done

echo $fact
