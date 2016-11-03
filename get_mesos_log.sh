#!/bin/bash
scp xusheng@server-1:/var/log/mesos/mesos-master.INFO ./mesos-master-$(date +"%T")
scp xusheng@server-1:/var/log/mesos/mesos-slave.INFO ./mesos-slave-$(date +"%T")

