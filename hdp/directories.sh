#!/bin/sh

#
# Directories Script
#
# 1. To use this script, you must edit the TODO variables below for your environment.
#
# 2. Warning: Leave the other parameters as the default values. Changing these default values will require you to
#    change values in other configuration files.
#

#
# Hadoop Service - HDFS
#

# Space separated list of directories where NameNode will store file system image.
DFS_NAME_DIR="/hdp/hdfs/nn" ;

# Space separated list of directories where DataNodes will store the blocks.
DFS_DATA_DIR="/hdp/hdfs/dn" ;

# Space separated list of directories where SecondaryNameNode will store checkpoint image.
FS_CHECKPOINT_DIR="/hdp/hdfs/snn" ;

# Directory to store the Hadoop configuration files.
HADOOP_CONF_DIR="/etc/hadoop/conf" ;

# Directory to store the HDFS logs.
HDFS_LOG_DIR="/var/log/hadoop/hdfs" ;

# Directory to store the HDFS process ID.
HDFS_PID_DIR="/var/run/hadoop/hdfs" ;

#
# Hadoop Service - YARN 
#

# Space separated list of directories where YARN will store temporary data.
YARN_LOCAL_DIR="/hdp/yarn/temp" ;

# Directory to store the YARN logs.
YARN_LOG_DIR="/var/log/hadoop/yarn" ; 

# Directory to store the YARN process ID.
YARN_PID_DIR="/var/run/hadoop/yarn" ;

#
# Hadoop Service - JobHistoryServer for MapReducev2
#

# Directory to store JobHistoryServer logs.
MAPRED_LOG_DIR="/var/log/hadoop/mapred";

# Directory to store JobHistoryServer process ID.
MAPRED_LOG_DIR="/var/pid/hadoop/mapred";

#
# Hadoop Service - Hive
#

# Directory to store the Hive configuration files.
HIVE_CONF_DIR="/etc/hive/conf" ;

# Directory to store the Hive logs.
HIVE_LOG_DIR="/var/log/hive" ;

# Directory to store the Hive process ID.
HIVE_PID_DIR="/var/run/hive" ;

#
# Hadoop Service - Templeton
#

# Directory to store the Templeton configuration files.
TEMPLETON_CONF_DIR="/etc/templeton" ;

# Directory to store the Templeton logs.
TEMPLETON_LOG_DIR="/var/log/templeton" ;

# Directory to store the Templeton process ID.
TEMPLETON_PID_DIR="/var/run/templeton" ;

#
# Hadoop Service - HBase
#

# Directory to store the HBase configuration files.
HBASE_CONF_DIR="/etc/hbase/conf" ;

# Directory to store the HBase logs.
HBASE_LOG_DIR="/var/log/hbase" ;

#
# Hadoop Service - ZooKeeper
#

# Directory where ZooKeeper will store data.
ZOOKEEPER_DATA_DIR="/hdp/zk/data" ;

# Directory to store the ZooKeeper configuration files.
ZOOKEEPER_CONF_DIR="/etc/zookeeper/conf" ;

# Directory to store the ZooKeeper logs.
ZOOKEEPER_LOG_DIR="/var/log/zookeeper" ;

# Directory to store the ZooKeeper process ID.
ZOOKEEPER_PID_DIR="/var/run/zookeeper" ;

#
# Hadoop Service - Pig
#

# Directory to store the Pig configuration files.
PIG_CONF_DIR="/etc/pig/conf" ;

# Directory to store the Pig logs.
PIG_LOG_DIR="/var/log/pig" ;

# Directory to store the Pig process ID.
PIG_PID_DIR="/var/run/pig" ;

#
# Hadoop Service - Oozie
#

# Directory to store the Oozie configuration files.
OOZIE_CONF_DIR="/etc/oozie/conf" ;

# Directory to store the Oozie logs.
OOZIE_LOG_DIR="/var/log/oozie" ;

# Directory to store the Oozie process ID.
OOZIE_PID_DIR="/var/run/oozie" ;

# Directory to store the Oozie temporary files.
OOZIE_TMP_DIR="/var/tmp/oozie" ;

#
# Hadoop Service - Sqoop
#
SQOOP_CONF_DIR="/usr/lib/sqoop/conf" ;

# Create Directories
