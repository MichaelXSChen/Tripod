#!/bin/bash
servers=("202.45.128.160" "202.45.128.161" "202.45.128.162")
for host in ${servers[@]} 
do
echo $host
	ssh "${host}" '
	echo 931209 | sudo -S service mesos-master start 
	echo 931209 | sudo -S service mesos-slave start 
	echo 931209 | sudo -S service marathon start'
done
