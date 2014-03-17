echo "Start ATS"
su - yarn -c "export HADOOP_LIBEXEC_DIR=/usr/lib/hadoop/libexec; /usr/lib/hadoop-yarn/sbin/yarn-daemon.sh --config /etc/hadoop/conf start historyserver"
