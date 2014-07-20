#!/bin.sh

source ./users.sh
source ./directories.sh

echo "This script will create all directories required to run the comprehensive set of Core Hadoop services on a single node."
echo "The following services are accounted for: NameNode, DataNode, ResourceManager, NodeManager, MapReduce JobHistoryServer"

bash create-core-nn-dir.sh

bash create-core-snn-dir.sh

bash create-core-dn-nm-dir.sh

bash create-core-hdfs-yarn-log-pid-dir.sh

bash create-core-mapred-log-pid-dir.sh
