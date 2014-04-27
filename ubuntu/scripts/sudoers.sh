#!/bin/sh

groupadd vagrant
useradd vagrant -g vagrant -G wheel
echo "vagrant ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/vagrant
chmod 0440 /etc/sudoers.d/vagrant

sed -i -e "s:^.*requiretty:#Defaults requiretty:" /etc/sudoers
sed -i "s/^\(.*env_keep = \"\)/\1PATH /" /etc/sudoers

