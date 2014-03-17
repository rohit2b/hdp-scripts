#!/bin/bash

su - hdfs -c "hadoop fs -mkdir -p /apps/hbase"
su - hdfs -c "hadoop fs -chown -R hbase:hdfs /apps/hbase"
