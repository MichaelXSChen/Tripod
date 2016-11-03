#!/bin/bash
scp xusheng@202.45.128.160:/var/log/mesos/mesos-master.INFO ./mesos-master-$(date +"%T")
scp xusheng@202.45.128.160:/var/log/mesos/mesos-slave.INFO ./mesos-slave-$(date +"%T")

