#!/bin/sh

sed -i -e "s:^.*requiretty:#Defaults requiretty:" /etc/sudoers
sed -i "s/^\(.*env_keep = \"\)/\1PATH /" /etc/sudoers

