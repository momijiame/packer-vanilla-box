#!/bin/sh

dd if=/dev/zero of=zerofill bs=1M
rm -rf zerofill

