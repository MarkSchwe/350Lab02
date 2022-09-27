#!/bin/sh

set -f

echo "Input a number to see its factorial: " 
read num
num2=`expr $num - 1`
total=$num

while [ $num2 -ne 0 ];
do
    total=`expr $total * $num2 `
    num2=` expr $num2 - 1`
done
echo $total

exit 0
