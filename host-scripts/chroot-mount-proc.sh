#!/bin/sh

. $PWD/precise-chroot-common.sh

mount -t proc none $CHROOT/proc
echo "/proc mounted"
