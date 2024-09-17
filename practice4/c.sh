#! /bin/bash
#FILE=$(pwd)

#file_count() {
#local count=$(find . -type f | wc -l )
#echo "Number of files in the present working directory and its subdirectories: $count"
#}
#file_count

file_count1() {
#FILE=$(pwd)

if [ $# -eq 0 ]; then
        echo "byyyy"
        exit 1
fi

local dir="$1"

if [ ! -d "$dir" ]; then
	echo "not dir."
	exit 2
fi


local count=$(find "$dir" -type f | ls )
echo "Number of files in the present working directory and its subdirectories: $count"
echo "$dir:"
echo "$count"
}

file_count1 "$1"
