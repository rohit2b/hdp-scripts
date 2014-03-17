echo 'Running Wordcount job on files in directory /user/<user>/input /user/<user>/wc-out'
su - hdfs -c "/usr/lib/hadoop/bin/hadoop jar /usr/lib/hadoop/hadoop-examples.jar wordcount input wc-out"

