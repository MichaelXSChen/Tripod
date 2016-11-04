#!/bin/bash
export MESOS_NATIVE_JAVA_LIBRARY=/usr/local/lib/libmesos.so
export SPARK_EXECUTOR_URI=http://202.45.128.160:80/spark-2.0.1-bin-hadoop2.7.tgz
./bin/spark-shell --master mesos://zk://202.45.128.160:2181,202.45.128.160:2181,202.45.128.160:2181/mesos
