#!/bin/bash

source ./directories.sh
source ./users.sh

rm -rf $WEBHCAT_CONF_DIR*

mkdir -p $WEBHCAT_CONF_DIR
chown -R $WEBHCAT_USER:$HADOOP_GROUP $WEBHCAT_CONF_DIR
chmod -R 755 $WEBHCAT_CONF_DIR
