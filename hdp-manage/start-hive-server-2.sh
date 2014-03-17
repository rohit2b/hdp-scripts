#!/bin/bash

su - hive -c "/usr/lib/hive/bin/hiveserver2 >/var/log/hive/hiveserver2.out 2> /var/log/hive/hiveserver2.log &"
# su - hive -c "/usr/lib/hive/bin/hiveserver2 -hiveconf hive.metastore.uris=" " >/var/log/hive/hiveserver2.out 2> /var/log/hive/hiveserver2.log &"
