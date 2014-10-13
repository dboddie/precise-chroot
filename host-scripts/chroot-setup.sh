#!/bin/sh

. $PWD/precise-chroot-common.sh

echo "---------------------------------------------------------"
echo "Installing chroot at $CHROOT"
echo "---------------------------------------------------------"

debootstrap --variant=buildd --arch amd64 precise $CHROOT $REPO
echo "Bootstrapped"

set -e

cp /etc/resolv.conf $CHROOT/etc/resolv.conf
echo "DNS configuration copied"

$PWD/host-scripts/chroot-mount-proc.sh
echo "cp $PWD/resources/sources.list $CHROOT/etc/apt/sources.list"
cp $PWD/resources/sources.list $CHROOT/etc/apt/sources.list
echo "/etc/apt/sources.list updated"
