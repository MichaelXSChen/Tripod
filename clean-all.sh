#!/bin/bash
servers=("202.45.128.160" "202.45.128.161" "202.45.128.162")
for host in ${servers[@]} 
do
echo $host
	ssh "${host}" '
	echo 931209 | sudo -S rm -rf /var/lib/mesos/*
	echo 931209 | sudo -S rm -rf /var/log/mesos'
done
