#!/bin/bash

echo "Create YARN Timeline Server directories on HDFS in /yarn/generic-history/ location"
echo "These commands need to be run as HDFS superuser"

su - hdfs -c "/tmp/hdp/hadoop/bin/hadoop fs -mkdir -p /yarn/generic-history"
su - hdfs -c "/tmp/hdp/hadoop/bin/hadoop fs -chmod -R 1777 /yarn/generic-history"
# su - hdfs -c "/tmp/hdp/hadoop/bin/hadoop fs -mkdir -p /mr-history/done"
# su - hdfs -c "/tmp/hdp/hadoop/bin/hadoop fs -chmod -R 1777 /mr-history/done"
su - hdfs -c "/tmp/hdp/hadoop/bin/hadoop fs -chown -R yarn:hdfs /yarn"

# su - hdfs -c "/tmp/hdp/hadoop/bin/hadoop fs -mkdir -p /app-logs"
# su - hdfs -c "/tmp/hdp/hadoop/bin/hadoop fs -chmod -R 1777 /app-logs"
# su - hdfs -c "/tmp/hdp/hadoop/bin/hadoop fs -chown yarn /app-logs"

