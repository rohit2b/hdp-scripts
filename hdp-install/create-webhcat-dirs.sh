#!/bin/bash

source ./directories.sh
source ./users.sh

mkdir -p $WEBHCAT_LOG_DIR;

chown -R $WEBHCAT_USER:$HADOOP_GROUP $WEBHCAT_LOG_DIR;
chmod -R 755 $WEBHCAT_LOG_DIR;

mkdir -p $WEBHCAT_PID_DIR;

chown -R $WEBHCAT_USER:$HADOOP_GROUP $WEBHCAT_PID_DIR;
chmod -R 755 $WEBHCAT_PID_DIR;
