# Recipe: Configure and use DataNode Caching

### Set up the system ulimits

Check to see what the max locked memory (memlock) limits are:

        ulimit -l

If this is less than what is needed for the DataNode cache space, then set it in security.conf

        vi /etc/security/limits.conf

Add a line to the file:

        *            soft    memlock         268000
        *            hard    memlock         268000 

Also can set the soft memlock limit through the command line:

        ulimit -S -l 268000

### Create a cache pool

Create a pool:

        su - hdfs
        hdfs cacheadmin -addPool root

List all pools to validate it was created:

        cacheadmin -listPools

### Cache files in one folder

Create a caching directive:

        su - hdfs
        hdfs cacheadmin -addDirective -path /user/root -pool root

List caching directives:

        hdfs cacheadmin -listDirectives

### Read cached files

1. Add files to '/user/root' directory

2. Validate that the files are in memory

        hadoop fs -ls /user/root
        sh /var/lib/hadoop-hdfs/look-pmap.sh

3. Read a cached file

        hadoop fs -cat /user/root/...

### Appendix: Set up vmtouch to validate cached blocks in memory

Bash script that will look for blocks in memory of DataNode host.
Put this script in /var/lib/hadoop-hdfs:

        pmap `jps | grep DataNode | awk '{ print $1 }'` | grep blk
        for file in `pmap \`jps | grep DataNode | awk '{ print $1 }'\` | grep blk | awk '{ print $NF }'`; do basename $file && /usr/local/bin/vmtouch $file && echo; done 

To call the script:

        sh /var/lib/hadoop-hdfs/look-pmap.sh
