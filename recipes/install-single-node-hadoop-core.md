# Recipe to install Hadoop Core on single node

### Ensure pre-reqs are met

1 Oracle or Open JDK 1.7

        java -version

1 Ensure firewall is off

        service iptables stop
        chkconfig iptables off

### Set up repository

        wget -nv http://public-repo-1.hortonworks.com/HDP/centos5/2.x/updates/2.1.3.0/hdp.repo -O /etc/yum.repos.d/hdp.repo 
        yum clean all
        yum repolist

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

1. Check that hostname has been properly configured

        vi core-site.xml
        Search for hdp2man: :/hdp2man

1. Create directory to host working Hadoop Core configurations

        mkdir /etc/hadoop/conf.live
        rm /etc/alternatives/hadoop-conf
        ln -s /etc/hadoop/conf.live /etc/alternatives/hadoop-conf 

1. Copy your conf files to the Hadoop location

        cp /root/hdp-scripts/hdp-configs/core_hadoop/* /etc/hadoop/conf.live/

### Start services

1. Format HDFS

        sh hdp/format-nn.sh

1. Test that NN comes up properly

        sh hdp-manage/start-core-only-nn-rm.sh

    Look at <hostname>:50070 to see if NN UI comes up.

1. Test that DN comes up properly

        sh hdp-manage/start-core-only-dn.sh

    Look at <hostname>:50070/dfshealth.html#tab-datanode to see if DN comes up.

1. Start YARN services

        sh hdp-manage/start-core-only-rm.sh
        sh hdp-manage/start-core-only-nm.sh

    Look at <hostname>:8088 to see if RM UI comes up.
