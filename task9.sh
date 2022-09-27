#!/bin/sh

echo "Input directory you want to head to:"
read direc


if [ -d $direc ];
then
cd $direc
else
echo "That is not an available directory"
exit 1;
fi
echo "CD successful"
echo "Input filename to be searched: "
read file


fail=0
while [ $fail -lt 3 ];
do
if [ -e $file ]; 
then
echo "File found"
break
else
fail=`expr $fail + 1`
if [ $fail -eq 3 ];
then
echo "fails: 3/3; too many incorrect searches"
exit 2;
fi
echo "file not found, tries: $fail / 3" 
echo "Input new filename: "
read file
fi
done


if [ -r $file ]; 
then
echo "file is readable"
else
echo "file is not readable"
exit 3;
fi

echo "Input the word to be searched in " $file
read word
if [ $(grep -c $word $file) -gt 0 ]; 
then
echo "word found!"
else 
echo "word not found"
exit 4;
fi



exit 0;
