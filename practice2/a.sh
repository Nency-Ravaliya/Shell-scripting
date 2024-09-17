#! /bin/bash

echo "script exit with status 0"

read -p "enter the file name: " FILE
if [ -e $FILE ]; then
	if [ -d $FILE ]; then
	echo "$FILE is a directory."
	exit 0
	elif [ -f $FILE ]; then
	echo "$FILE is a file."
	exit 1
	else
	echo "not a file not a dir."
	exit 2
	fi
fi
echo "start"
cat /etc/shadow
echo "done"
if [ $? -eq 0 ]; then
	echo "status is 0"
	exit 0
else 
	echo "exit with 1"
	exit 1
fi 
