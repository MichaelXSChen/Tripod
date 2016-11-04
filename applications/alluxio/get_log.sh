#!/bin/bash
ssh 202.45.128.160 'echo 931209 | sudo cat /var/log/syslog > ~/syslog'
scp xusheng@202.45.128.160:syslog .
ssh 202.45.128.160 'rm syslog'
sed -n '/alluxio/p' syslog > app.log
rm syslog
sed '/reconciliation/d' -i app.log
sed '/offers/d' -i app.log
sed '/DECLINE/d' -i app.log 
