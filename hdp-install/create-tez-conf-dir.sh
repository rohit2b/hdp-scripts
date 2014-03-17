#!/bin/bash

source ./users.sh
source ./directories.sh

mkdir -p /etc/tez/conf
chown -R tez:$HADOOP_GROUP /etc/tez/conf;
chmod -R 755 /etc/tez/conf;
