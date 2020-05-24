function isPallindrome() {
temp=$1
reverseNum=0
while [ $temp -ne 0 ]
do
	reverseNum=$(( temp%10+ reverseNum*10 ))
	temp=$((temp/10))
done
echo $reverseNum

if [ $reverseNum -eq $1 ]
then
  echo "palindrome"
else
  echo "not a palindrome"
fi
}

echo "enter first number to check : "
read n1

isPallindrome $n1

echo "enter second number to check : "
read n2

isPallindrome $n2
