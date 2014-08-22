#!/bin/bash

su - hive -c "/tmp/hdp/hadoop/bin/hadoop fs -mkdir -p /apps/hive/install"
su - hive -c "/tmp/hdp/hadoop/bin/hadoop fs -put /usr/lib/hive/lib/hive-exec-0.11.0* /apps/hive/install/hive-exec-0.11.0.jar"
