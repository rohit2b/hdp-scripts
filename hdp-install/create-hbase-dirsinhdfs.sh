#!/bin/bash

su - hdfs -c "/tmp/hdp/hadoop/bin/hadoop fs -mkdir -p /apps/hbase"
su - hdfs -c "/tmp/hdp/hadoop/bin/hadoop fs -chown -R hbase:hdfs /apps/hbase"
