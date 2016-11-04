#!/bin/bash
if [ $# -eq 0 ]
  then
	echo "this is a very naive brute kill, Please provide a server ip" 
exit
fi
ssh 202.45.128.161 'logger brute-kill'
ssh $1 'docker rm -f $(docker ps -aq); docker rmi -f $(docker images -aq)'
