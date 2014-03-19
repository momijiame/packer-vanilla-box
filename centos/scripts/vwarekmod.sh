#!/bin/sh

if [[ $PACKER_BUILDER_TYPE =~ vmware ]]; then
  mount -t iso9660 -o loop /home/vagrant/linux.iso /mnt
  tar zxf /mnt/VMwareTools-*.tar.gz -C /tmp/
  /tmp/vmware-tools-distrib/vmware-install.pl -d
  rm /home/vagrant/linux.iso
  umount /mnt
fi

