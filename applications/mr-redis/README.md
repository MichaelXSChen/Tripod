
**Build from the source code, the release is outdated**
The binary here are (hard) links to the binary built in /home/xusheng/golang/src/github.com/mesos/mr-redis/
*Golang* is a fully built language, which means the binary should be directly started, but not tested. 

The `start.sh` will start the scheduler
The `create....sh` will create a Redis cluster
The `kill.sh` will take a server as parameter and kill the redis excutor on it. Before it do that, it will log the time into the system log in server-1.
The `get_log.sh` will pull the log from syslog and sed some useful information out. 

It will take 13 secs to restart on failure(kill)
Start time about 45-50 secs, based on the network speed.

However, the new started node will lost all the previous memory state. The developer said 
the desgin is to make them as a *chache* and data lost simply means a *miss* in cache. The performance downgrade will be really large.
