#!/bin/sh

mkdir -p /home/vagrant/.ssh
chmod 0700 /home/vagrant/.ssh
curl -L -o /home/vagrant/.ssh/authorized_keys https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub 
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh

