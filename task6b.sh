#!/bin/sh

echo Input an odd number greater than 3:
read num
if [ `expr $num % 2` -eq 0 ]; then
  echo "Invalid response"
  exit 1
elif [ $num -lt 4 ]; then
  echo "Invalid response"
  exit 1
else
  echo "$num is a valid response"
fi

echo "Input a number for the base:"
read baseNum


for i in $( seq 1 `expr $num - 1` );
do
space=` expr $num - $i`
if [ `expr $i % 2` = 1 ]; then
  for x in $( seq 0 `expr $space - 1 ` );
    do
      echo -n " "
    done
  for y in $( seq 1 $i );
    do
      echo -n "*"
    done
  echo -n "\n"
fi
done

for i in $(seq 1 `expr $num + $baseNum` ); 
do
    echo -n "*"
done
    echo -n "\n"

num2=$num
for i in $( seq 0 $num);
do
  num2=`expr $num2 - 1`
  space=`expr $num - $num2`
  if [ `expr $i % 2` = 1 ]; then
    for x in $( seq 0 `expr $space - 1` );
      do
        echo -n " "
      done
    for y in $( seq 1 $num2 );
      do
        echo -n "*"
      done
    echo -n "\n"
  fi
done
  
exit 0
