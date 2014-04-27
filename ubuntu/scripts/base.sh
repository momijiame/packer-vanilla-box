#!/bin/sh

apt-get -y update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get -y install language-pack-ja
apt-get clean

