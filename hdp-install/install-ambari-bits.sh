# Download bits from repo
wget http://public-repo-1.hortonworks.com/ambari/centos6/1.x/GA/ambari.repo
cp ambari.repo /etc/yum.repos.d

yum -y install epel-release 

yum repolist

yum -y install ambari-server
