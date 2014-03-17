#!/bin/bash

echo "Check HDFS health with -report"
su - hdfs -c "hadoop dfsadmin -report"
