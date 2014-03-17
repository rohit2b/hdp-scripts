#!/bin/bash

echo "Download and set up HDP repo"
wget -nv http://dev.hortonworks.com.s3.amazonaws.com/HDP-2.0.4.0/repos/centos6/hdp.repo -O /etc/yum.repos.d/hdp.repo 

echo "List installed repos"
yum repolist
