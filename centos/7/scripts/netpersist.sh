#!/bin/sh

ln -f -s /dev/null /etc/udev/rules.d/70-persistent-net.rules

NIC=`nmcli device show | head -n 1 | awk -F " " '{ print $NF }'`
sed -i "/^HWADDR/d" /etc/sysconfig/network-scripts/ifcfg-${NIC}
sed -i "/^UUID/d" /etc/sysconfig/network-scripts/ifcfg-${NIC}

