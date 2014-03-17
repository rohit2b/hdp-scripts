#!/bin/bash

source ./users.sh
source ./directories.sh

echo "Create apps directory for tez on HDFS"
su - $HDFS_USER -c "hadoop fs -mkdir -p /apps/tez/"
su - $HDFS_USER -c "hadoop fs -chmod -R 755 /apps/tez/"
su - $HDFS_USER -c "hadoop fs -chown hive:hdfs /apps/tez/"

echo "Load tez libraries on to HDFS"
su - $HIVE_USER -c "hadoop fs -mkdir -p /apps/tez/tez-0.1.0.2.0.4.0/lib/"
su - $HIVE_USER -c "hadoop fs -chmod -R 755 /apps/tez/"
su - $HIVE_USER -c "hadoop fs -put /usr/lib/tez/*.jar /apps/tez/tez-0.1.0.2.0.4.0/"
su - $HIVE_USER -c "hadoop fs -put /usr/lib/tez/lib/*.jar /apps/tez/tez-0.1.0.2.0.4.0/lib/"
su - $HIVE_USER -c "hadoop fs -chmod 444 /apps/tez/tez-0.1.0.2.0.4.0/*.jar"
su - $HIVE_USER -c "hadoop fs -chmod 444 /apps/tez/tez-0.1.0.2.0.4.0/lib/*.jar"
