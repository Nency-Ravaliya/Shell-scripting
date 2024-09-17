#! /bin/bash

echo "Jay Shree Krishna"
HOST=$(hostname)

echo "HOSTNAME is $HOST with \"$HOST\" where \"Jsk\" "

if [ -e /etc/shadow ]; then
 echo "Shadow passwords are enabled."
fi

if [ -w /etc/shadow ]; then
echo "I can edit"
else 
echo "You do NOT have permissions to edit /etc/shadow."
fi

for name in "man", "bear", "pig", "dog", "cat", "sheep"
do
echo "print in  new line $name"
done

read -p "enter the file name: " FILE
echo "this the file: $FILE"

if [[ -e $FILE && -d $FILE ]]; then
	echo "it's aregular directory"
	ls -l $FILE
elif [ -f $FILE ]; then
	echo "It's a regular file"
	cat $FILE
fi

if [ $# -eq 0 ]; then
	echo "no arguments are specified..."
	exit 1
else
	echo "Arguments are specified"
fi
 
FILE1=$1

if [[ -e $FILE1 && -d $FILE1 ]]; then
        echo "it's aregular directory"
        ls -l $FILE1
elif [ -f $FILE1 ]; then
        echo "It's a regular file"
        cat $FILE1
fi

for i in $@ 
do
if [[ -e $i && -d $i ]]; then
        echo "it's aregular directory"
        ls -l $i
elif [ -f $i ]; then
        echo "It's a regular file"
        cat $i
fi

done
