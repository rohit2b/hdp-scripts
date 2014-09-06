
echo "Stop YARN ResourceManager"
su - yarn -c "source /etc/hadoop/conf/hadoop-env.sh; /usr/lib/hadoop-yarn/sbin/yarn-daemon.sh --config /etc/hadoop/conf stop resourcemanager"
