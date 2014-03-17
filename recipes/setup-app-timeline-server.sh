# Recipe: Set up Application Timeline Server

### Steps

Install YARN
Install HDFS
Configure yarn-site.xml
Start HDFS, YARN
Start ATS

### Configs

Enabling collection of generic data

<property>
<description>Indicate to ResourceManager as well as clients whether history-service is enabled or not. If enabled, ResourceManager starts recording historical data that ApplicationHistory service can consume. Similarly, clients can redirect to the history service when applications finish if this is enabled.</description>
<name>yarn.timeline-service.generic-application-history.enabled</name>
<value>false</value>
</property>
 Configuring the store for generic data

<property>
<description>Store class name for history store, defaulting to file system store </description>
<name>yarn.timeline-service.generic-application-history.store-class</name>
<value>org.apache.hadoop.yarn.server.applicationhistoryservice.FileSystemApplicationHistoryStore</value>
</property>

<property>
<description>URI pointing to the location of the FileSystem path where the history will be persisted. This must be supplied when using org.apache.hadoop.yarn.server.applicationhistoryservice.FileSystemApplicationHistoryStore as the value for yarn.timeline-service.generic-application-history.store-class</description>
<name>yarn.timeline-service.generic-application-history.fs-history-store.uri</name>
<value>${hadoop.log.dir}/yarn/system/history</value>
</property>

<property>
<description>T-file compression types used to compress history data.</description>
<name>yarn.timeline-service.generic-application-history.fs-history-store.compression-type</name>
<value>none</value>
</property>
Starting the daemon

$ sbin/yarn-daemon.sh start historyserver
