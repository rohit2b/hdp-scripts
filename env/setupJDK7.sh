#!/bin/bash

echo "Set up openJDK 7 from yum repo"
yum install java-1.7.0-openjdk
yum install java-1.7.0-openjdk-devel 

echo "On CentOS, open JDK will be installed to /usr/lib/jvm/"

echo "Setup links from /usr/java/default"
mkdir /usr/java
ln -s /usr/jdk1.6.0_31/jdk1.6.0_31 /usr/java/default
ln -s /usr/java/default/bin/java /usr/bin/java

echo "Setup java home variable"
export JAVA_HOME=/usr/java/default

