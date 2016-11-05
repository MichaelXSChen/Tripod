#!/bin/bash
if [ $# -eq 0 ]
  then
        echo "this is a very naive brute kill, Please provide a server ip" 
exit
fi
ssh xusheng@202.45.128.160 'logger MrRedis task killed'
ssh xusheng@$1 'ID=$(pgrep MrRedis)
	echo $ID
	kill $ID'
