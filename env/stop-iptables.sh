#!/bin/bash 

for i in `cat serverlist`; do ssh root@$i "service iptables stop"; done
