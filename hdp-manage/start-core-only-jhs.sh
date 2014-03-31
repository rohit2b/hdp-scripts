echo "Start Job History Server"
su - mapred -c "export export HADOOP_LIBEXEC_DIR=/usr/lib/hadoop/libexec/; /usr/lib/hadoop-mapreduce/sbin/mr-jobhistory-daemon.sh --config /etc/hadoop/conf start historyserver "
