#!/bin/bash

echo "This script assumes jdk download is in home directory of current user"

mkdir -p /usr/jdk1.6.0_31
cd /usr/jdk1.6.0_31
chmod u+x ~/jdk-6u31-linux-x64.bin
mv ~/jdk-6u31-linux-x64.bin .
./jdk-6u31-linux-x64.bin

mkdir /usr/java
ln -s /usr/jdk1.6.0_31/jdk1.6.0_31 /usr/java/default
ln -s /usr/java/default/bin/java /usr/bin/java

export JAVA_HOME=/usr/java/default
export PATH=$JAVA_HOME/bin:$PATH

rm-f ~/sun-javadb-*
rm -f ~/jdk-6u30-linux-*
