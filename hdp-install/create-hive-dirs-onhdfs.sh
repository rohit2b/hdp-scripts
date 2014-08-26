# In this script, /tmp/1 is a symlink to /usr/hdp/<version>

echo "Create Hive user dir on hdfs"
su - hdfs -c "/tmp/1/hadoop/bin/hadoop fs -mkdir -p /user/hive"
su - hdfs -c "/tmp/1/hadoop/bin/hadoop fs -chown hive:hdfs /user/hive"

echo "Create warehouse dir"
su - hdfs -c "/tmp/1/hadoop/bin/hadoop fs -mkdir -p /apps/hive/warehouse"
su - hdfs -c "/tmp/1/hadoop/bin/hadoop fs -chown -R hive:hdfs /apps/hive/warehouse"
su - hdfs -c "/tmp/1/hadoop/bin/hadoop fs -chmod -R 775 /apps/hive/warehouse"

echo "Create hive scratch dir"
su - hdfs -c "/tmp/1/hadoop/bin/hadoop fs -mkdir -p /tmp/scratch"
su - hdfs -c "/tmp/1/hadoop/bin/hadoop fs -chown -R hive:hdfs /tmp/scratch"
su - hdfs -c "/tmp/1/hadoop/bin/hadoop fs -chmod -R 777 /tmp/scratch"
