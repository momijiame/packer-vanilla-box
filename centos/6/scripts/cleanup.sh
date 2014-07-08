#!/bin/sh

package-cleanup --oldkernels --count=1 -y

yum -y clean all

rm -rf /tmp/*
rm -rf /var/tmp/*

