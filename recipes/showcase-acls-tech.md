# Recipe: Showcase/demo ACLs Functionality

### Set up env: Create users

        useradd research
        passwd research

        useradd etl
        passwd etl

### Set up env: Create HDFS directories

Set up data directories: '/data/web/hour’, '/data/web/day’, '/data/web/month’

        su - hdfs -c "hadoop fs -mkdir -p /data/web/hour"
        su - hdfs -c "hadoop fs -mkdir -p /data/web/day"
        su - hdfs -c "hadoop fs -mkdir -p /data/web/month"

Set permissions: user = etl, group = etl and 751 for all data directories
751 = 111101001

        su - hdfs -c "hadoop fs -chown etl:etl -R /data"
        su - hdfs -c "hadoop fs -chmod 751 -R /data"

### Look at set permissions before creating any ACLs

        su - hdfs -c "hadoop fs -getfacl /data"
        
This will throw an error. Will need to set ACLs.

### Enable ACLs

Edit hdfs-site.xml and add dfs.namenode.acls.enabled property.

### Create extended ACL for 'month' data

Create read ACL for ‘research’ user on ‘/data/web/month’ only

        hadoop fs -setfacl -m user:research:r-x /data/web/month

### Enforce read access controls

Show that ‘research’ cannot read first two data directories, only last one, and cannot write to any.

        su - research -c "hadoop fs -ls /data/web/month”
        su - research -c "hadoop fs -ls /data/web/day”
        su - research -c "hadoop fs -put data-month-aggregate.csv /data/web/month/month.csv"

### Show ACLs

        hadoop fs -ls /data/web
        hadoop fs -getfacl /data/web/day
        hadoop fs -getfacl /data/web/month

### Set and validate a default ACL

        hadoop fs -setfacl -m default:user:research:r-x /data/web/month
        hadoop fs -mkdir /data/web/month/jun13
        hadoop fs -getfacl /data/web/month
        hadoop fs -getfacl /data/web/month/jun13

### Blocking access for a single user/group through ACLs

ACLs can be used to block access to directories, even if the user is in the group that has access.
For example, if 'root' user is in the 'etl' group, but we need to enforce that 'root' doesn't have access to a specific sub-directory, then the following enforces that only for that sub-directory:

        hadoop fs -setfacl -m user:root:--- /data/web/month/jun13
