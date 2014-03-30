# Recipe to install Hadoop Core on single node

### Install packages

1. Install hadoop core packages from yum

        yum install -y hadoop hadoop-hdfs hadoop-libhdfs hadoop-yarn hadoop-mapreduce hadoop-client openssl

### Create directories

Create directories needed for NN, DN, and NM.
Start inside the hdp-install directory.

        cd hdp-install

1. Create NN directories

        sh create-core-nn-dir.sh

1. Create DN and NM directories

        sh create-core-dn-nm-dir.sh

1. Create Log and Pid dirs

        sh create-core-hdfs-yarn-log-pid-dir.sh 

### Prepare the hadoop core configs

Use hdp-install/hdp-configs/core_hadoop

1. Update the hostname to match yours

        sed -i 's/rohithdp2/<hostname>/g' *    

1. Delete default conf files

        rm -rf /etc/hadoop/conf.empty
        mkdir -p /etc/hadoop/conf.empty

1. Copy your conf files to the Hadoop location

        cp /root/hdp-scripts/hdp-configs/core_hadoop/* /etc/hadoop/conf.empty/

### Start services

1. Format HDFS

        sh hdp/format-nn.sh

1. Test that NN comes up properly

        sh hdp-manage/start-only-nn-rm.sh

    Look at <hostname>:50070 to see if NN UI comes up.

1. Start HDFS and YARN services

        sh hdp-manage/start-all-core-services.sh

1. Test that RM also comes up properly

    Look at <hostname>:8088 to see if RM UI comes up.
