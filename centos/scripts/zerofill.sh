#!/bin/sh

dd if=/dev/zero of=fillzero bs=1M
rm -rf fillzero

