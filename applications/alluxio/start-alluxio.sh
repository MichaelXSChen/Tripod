#!/bin/sh
MASTER_IP="202.45.128.160"
ssh xusheng@202.45.128.160 'logger "alluxio started"'
MESOS_NATIVE_JAVA_LIBRARY=/home/xusheng/mesos-1.0.1/build/src/.libs/libmesos.so ./integration/bin/alluxio-mesos.sh 202.45.128.160:5050 

