#!/bin/sh
echo Linux Installer
echo ---------------
echo This installer will install linux app emulation
echo on Your OS.
echo Press enter to start installation...
read pause1
echo Enter root password...
su root -c "pkgin install suse_base"
su root -c "echo 'procfs /emul/linux/proc procfs ro,linux' >> /etc/fstab"
su root -c "mount -a"
echo Linux is installed on Your system, enjoy!