echo "Start HDFS services"
su - hdfs -c "/usr/lib/hadoop/sbin/hadoop-daemon.sh --config /etc/hadoop/conf start namenode"
# su - hdfs -c "/usr/lib/hadoop/sbin/hadoop-daemon.sh --config /etc/hadoop/conf start secondarynamenode"
su - hdfs -c "/usr/lib/hadoop/sbin/hadoop-daemon.sh --config /etc/hadoop/conf start datanode"

echo "Start YARN services"
su - yarn -c "export HADOOP_LIBEXEC_DIR=/usr/lib/hadoop/libexec; /usr/lib/hadoop-yarn/sbin/yarn-daemon.sh --config /etc/hadoop/conf start resourcemanager"
su - yarn -c "export HADOOP_LIBEXEC_DIR=/usr/lib/hadoop/libexec; /usr/lib/hadoop-yarn/sbin/yarn-daemon.sh --config /etc/hadoop/conf start nodemanager"
