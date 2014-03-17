#!/bin/bash

su - hive -c "hadoop fs -mkdir -p /apps/hive/install"
su - hive -c "hadoop fs -put /usr/lib/hive/lib/hive-exec-0.11.0* /apps/hive/install/hive-exec-0.11.0.jar"
