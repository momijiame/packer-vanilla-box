#!/bin/sh

package-cleanup --oldkernels --count=1

yum -y clean all

rm -rf /tmp/*
rm -rf /var/tmp/*

