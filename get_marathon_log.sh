#!/bin/bash
ssh 202.45.128.161 'echo 931209 | sudo cat /var/log/syslog > ~/syslog'
scp xusheng@202.45.128.161:syslog .
ssh 202.45.128.161 'rm syslog'
sudo cat syslog | grep marathon > marathon.log
rm syslog
sed '/master.cpp/d' -i marathon.log
sed '/Chrome/d' -i marathon.log
sed '/heartbeat/d' -i marathon.log
sed -n '/INFO/p' -i marathon.log
