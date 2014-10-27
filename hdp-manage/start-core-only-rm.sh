echo "Start YARN Resource Manager"
su - yarn -c "export HADOOP_LIBEXEC_DIR=/usr/lib/hadoop/libexec; /usr/hdp/current/hadoop-yarn-resourcemanager/../hadoop-yarn/sbin/yarn-daemon.sh start resourcemanager"
