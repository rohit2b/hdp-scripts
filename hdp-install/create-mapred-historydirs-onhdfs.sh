#!/bin/bash

echo "Create mapreduce directories on HDFS in /mapred/history/ location"
echo "These commands need to be run as HDFS superuser"

hadoop fs -mkdir -p /mr-history/tmp
hadoop fs -chmod -R 1777 /mr-history/tmp
hadoop fs -mkdir -p /mr-history/done
hadoop fs -chmod -R 1777 /mr-history/done
hadoop fs -chown -R mapred:hdfs /mr-history

hadoop fs -mkdir -p /app-logs
hadoop fs -chmod -R 1777 /app-logs 
hadoop fs -chown yarn /app-logs 

