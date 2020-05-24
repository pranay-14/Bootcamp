#! /bin/bash
 
read -p "Enter the nth number: " number
 
harmonic_sum=0
harmonic_numbers="1"
 
for ((count=1; count<=number; count++))
do
        harmonic_num=`echo  1 /$count`
        harmonic_sum=`echo  $harmonic_sum +$harmonic_num`
        if ((count>1))
        then
                harmonic_numbers=$harmonic_numbers"+1/$count"
        fi
done
echo $harmonic_numbers
echo $harmonic_sum 
