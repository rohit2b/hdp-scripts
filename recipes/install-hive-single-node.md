# Recipe to install Hive on single node

### Pre-Req: MySQL is setup

env/install-mysql.sh

### Install packages

1. Install hive core packages from yum

        yum install -y hive hcatalog

### Create directories

Create directories for Hive Server.
Start inside the hdp-install directory.

        cd hdp-install

1. Create Hive Server log and pid dirs

        sh create-hive-log-pid-dirs.sh

### Prepare the hive core configs

Use hdp-configs/hive

1. Update the hostname to match yours

        sed -i 's/rohithdp2/<hostname>/g' *

1. Delete default conf files

        rm -rf /etc/hive/conf.dist
        mkdir -p /etc/hive/conf.dist

1. Copy your conf files to the Hive location

        cp /root/hdp-install/hdp-configs/hive/* /etc/hive/conf.dist/

### Create Directories on HDFS

        cd hdp-install
        sh create-hive-dirs-onhdfs.sh

### Start services

1. Start the Hive Metastore service

        sh hdp-manage/start-hive-metastore.sh
