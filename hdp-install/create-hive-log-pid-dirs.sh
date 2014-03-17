source ./users.sh
source ./directories.sh

mkdir -p $HIVE_LOG_DIR;

chown -R $HIVE_USER:$HADOOP_GROUP $HIVE_LOG_DIR;
chmod -R 755 $HIVE_LOG_DIR;
