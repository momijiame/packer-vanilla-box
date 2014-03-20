#!/bin/sh

if [[ $PACKER_BUILDER_TYPE =~ vmware ]]; then
  yum -y install fuse-libs
  mount -t iso9660 -o loop /home/vagrant/linux.iso /mnt
  tar zxf /mnt/VMwareTools-*.tar.gz -C /tmp/
  umount /mnt
  rm /home/vagrant/linux.iso
  /tmp/vmware-tools-distrib/vmware-install.pl -d
fi

