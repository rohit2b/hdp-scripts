#!/bin/bash

source ./users.sh
source ./directories.sh

echo "Create Secondary NN checkpoint dir"

mkdir -p $FS_CHECKPOINT_DIR;
chown -R $HDFS_USER:$HADOOP_GROUP $FS_CHECKPOINT_DIR;
chmod -R 755 $FS_CHECKPOINT_DIR;
