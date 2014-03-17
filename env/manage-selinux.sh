#!/bin/bash 

echo 0 >/selinux/enforce
echo "To permamently disable, edit /etc/selinux/config and change to 'SELINUX=disabled'"
