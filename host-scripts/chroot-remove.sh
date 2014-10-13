#!/bin/sh

set -e

. $PWD/precise-chroot-common.sh

echo "---------------------------------------------------------"
echo "Uninstalling $CHROOT"
echo "---------------------------------------------------------"

umount -l $CHROOT/proc
echo "Unmounted /proc"

rm -rf $CHROOT
echo "Removed $CHROOT"
