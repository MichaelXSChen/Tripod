#!/bin/bash
ssh 202.45.128.161 'echo 931209 | sudo cat /var/log/syslog > ~/syslog'
scp xusheng@202.45.128.161:syslog .
ssh 202.45.128.161 'rm syslog'
sed -n '/marathon/p; /brute-kill/p' syslog > marathon.log
rm syslog
sed '/master.cpp/d' -i marathon.log
sed '/Chrome/d' -i marathon.log
sed '/heartbeat/d' -i marathon.log
sed -n '/INFO/p; /brute-kill/p' -i marathon.log
source rand-id
sed -n '/bridged-webapp'${RandID}'/p; /brute-kill/p' marathon.log > marathon-log-detail
rm marathon.log
sed '/health result/d' -i marathon-log-detail
sed '/health check/d' -i marathon-log-detail 
sed -n '/new/p; /Success/p; /Need to scale/p; /receiveTaskUpdate/p; /brute-kill/p' marathon-log-detail > app.log
