#!/bin/bash

echo "Create mapreduce directories on HDFS in /mapred/history/ location"
echo "These commands need to be run as HDFS superuser"

su - hdfs -c "hadoop fs -mkdir -p /mr-history/tmp"
su - hdfs -c "hadoop fs -chmod -R 1777 /mr-history/tmp"
su - hdfs -c "hadoop fs -mkdir -p /mr-history/done"
su - hdfs -c "hadoop fs -chmod -R 1777 /mr-history/done"
su - hdfs -c "hadoop fs -chown -R mapred:hdfs /mr-history"

su - hdfs -c "hadoop fs -mkdir -p /app-logs"
su - hdfs -c "hadoop fs -chmod -R 1777 /app-logs"
su - hdfs -c "hadoop fs -chown yarn /app-logs"

