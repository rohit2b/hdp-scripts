# Recipe: Adding an HDFS user

### Create the linux user

If the Linux user already exists, skip this section

1. Create user

        useradd -g hadoop hdpuser
        passwd hdpuser

### Create HDFS directories

1. Create user's home directory

        su - hdfs -c "hadoop fs -mkdir -p /user/hdpuser"

1. Set user's permission to own home directory

        su - hdfs -c "hadoop  fs -chown -R hdpuser:hadoop /user/hdpuser"

### Change Mapreduce directory permissions

1. Ensure /mapred is accessible to all groups

        su - hdfs -c "hadoop fs -chmod -R 757 /mapred"
