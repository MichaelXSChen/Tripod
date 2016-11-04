#!/bin/bash
servers=("202.45.128.160" "202.45.128.161" "202.45.128.162")
for host in ${servers[@]} 
do
echo $host
	ssh "${host}" '
	docker rm -f $(docker ps -aq)
	docker rmi -f $(docker images -aq)'
done


