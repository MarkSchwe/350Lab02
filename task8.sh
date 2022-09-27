#!/bin/sh

if [ $# = 0 ]; then
    echo "Must contain parameters"
    exit 1
fi

if [ $# -gt 1 ]; then
    echo "Too many parameters"
    exit 1
fi

total=0
curr=0
len=`expr length $1`
for i in $( seq 1 $len );
do
curr=`expr substr $1 $i 1`
total=`expr $total + $curr`
done

echo "The total sum for the input is" $total

exit 0
