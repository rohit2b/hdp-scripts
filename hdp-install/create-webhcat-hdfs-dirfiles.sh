#!/bin/bash

source ./directories.sh
source ./users.sh

su - hdfs -c "hadoop fs -mkdir /user/hcat"
su - hdfs -c "hadoop fs -chown -R hcat:hdfs /user/hcat"
su - hdfs -c "hadoop fs -mkdir -p /apps/webhcat"

su - hdfs -c "hadoop fs -copyFromLocal /usr/share/HDP-webhcat/pig.tar.gz /apps/webhcat/"
su - hdfs -c "hadoop fs -copyFromLocal /usr/share/HDP-webhcat/hive.tar.gz /apps/webhcat/"
su - hdfs -c "hadoop fs -copyFromLocal /usr/lib/hadoop-mapreduce/hadoop-streaming*.jar /apps/webhcat/"

su - hdfs -c "hadoop fs -chown -R hcat:hdfs /apps/webhcat "
su - hdfs -c "hadoop fs -chmod -R 755 /apps/webhcat"
