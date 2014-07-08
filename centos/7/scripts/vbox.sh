#!/bin/sh

if [[ $PACKER_BUILDER_TYPE =~ virtualbox ]]; then
  yum -y install bzip2
  mount -t iso9660 -o loop /home/vagrant/VBoxGuestAdditions.iso /mnt
  sh /mnt/VBoxLinuxAdditions.run
  umount /mnt
  rm -rf /home/vagrant/VBoxGuestAdditions.iso
fi

