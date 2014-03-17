yum -y install mysql-server mysql-connector-java*

/etc/init.d/mysqld start

mysqladmin -u root password 'hive'
mysqladmin -u root 2>&1 >/dev/null

# CREATE USER 'hive'@'db-node' IDENTIFIED BY 'hive';
# GRANT ALL PRIVILEGES ON *.* TO 'hive'@'%' IDENTIFIED BY 'hive';
# GRANT ALL PRIVILEGES ON *.* TO 'hive'@'localhost' IDENTIFIED BY 'hive'; 
## Ensure that hive user has grants on all databases on db host
# GRANT ALL PRIVILEGES ON *.* TO 'hive'@'<dbhost>' IDENTIFIED BY 'hive'; 
# flush privileges;

mysql -u $dbusername -p
mysql -h node1 -u hive


##### Appendix

# To view all MySQL users and their privileges:
# select user,host from mysql.user;
