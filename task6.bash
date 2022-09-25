#!bin/sh

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

for i in $( seq 1 $num );
do
space=` expr $num - $i`
  for x in $( seq 0 `expr $space / 2` );
    do
      echo -n " "
    done
  for y in $( seq 1 $i );
    do
      echo -n "*"
    done
  for z in $( seq 0 `expr $space / 2` );
