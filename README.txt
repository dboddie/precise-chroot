Ubuntu Precise (12.04) chroot creation scripts for Debian
---------------------------------------------------------

This is a collection of scripts to automate creation of a chroot that contains
a base Ubuntu Precise (12.04) system.

Define the details of the installation by setting the environment variables in
the precise-chroot-common.sh file:

  CHROOT:   The location of the chroot to be created.
  REPO:     The URL of the repo to use.

Run the host-scripts/chroot-setup.sh script as root, or using sudo:

  sudo ./host-scripts/chroot-setup.sh

If this succeeds, you can enter the chroot using the host-scripts/chroot-enter.sh
script:

  sudo ./host-scripts/chroot-enter.sh

The setup script mounts /dev and /proc inside the chroot. If these become
unmounted, such as after a system restart, mount them again using the
host-scripts/chroot-mount-proc.sh script:

  sudo ./host-scripts/chroot-mount-proc.sh

To delete the chroot, use the host-scripts/chroot-remove.sh script:

  sudo ./host-scripts/chroot-remove.sh

This unmounts the /dev and /proc directories inside the chroot and deletes
the chroot directory.
This is not a complete package that can be installed correctly. The scripts
in host-scripts work, but only if run as root.
