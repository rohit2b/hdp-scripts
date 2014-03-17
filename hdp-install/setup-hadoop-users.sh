#!/bin/bash

source usersAndGroups.sh

groupadd $HADOOP_GROUP;

useradd -G $HADOOP_GROUP $HDFS_USER;
useradd -G $HADOOP_GROUP $YARN_USER;
useradd -G $HADOOP_GROUP $MAPRED_USER;
