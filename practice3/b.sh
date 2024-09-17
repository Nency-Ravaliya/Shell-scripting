#! /bin/bash

echo "start"
sudo cat /etc/shadow
if [ $? -eq 0 ]; then
        echo "status is 0"
        exit 0
else 
        echo "exit with 1"
        exit 1
fi 
