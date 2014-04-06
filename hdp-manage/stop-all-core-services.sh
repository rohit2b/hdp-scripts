echo "Stop HDFS services"
su - hdfs -c "/usr/lib/hadoop/sbin/hadoop-daemon.sh --config /etc/hadoop/conf stop namenode"
# su - hdfs -c "/usr/lib/hadoop/sbin/hadoop-daemon.sh --config /etc/hadoop/conf stop secondarynamenode"
su - hdfs -c "/usr/lib/hadoop/sbin/hadoop-daemon.sh --config /etc/hadoop/conf stop datanode"

echo "Stop YARN services"
su - yarn -c "export HADOOP_LIBEXEC_DIR=/usr/lib/hadoop/libexec; /usr/lib/hadoop-yarn/sbin/yarn-daemon.sh --config /etc/hadoop/conf stop resourcemanager"
su - yarn -c "export HADOOP_LIBEXEC_DIR=/usr/lib/hadoop/libexec; /usr/lib/hadoop-yarn/sbin/yarn-daemon.sh --config /etc/hadoop/conf stop nodemanager"

echo "Stop Job History Server"
su - mapred -c "export export HADOOP_LIBEXEC_DIR=/usr/lib/hadoop/libexec/; /usr/lib/hadoop-mapreduce/sbin/mr-jobhistory-daemon.sh --config /etc/hadoop/conf stop historyserver "
