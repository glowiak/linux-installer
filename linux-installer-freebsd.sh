#!/bin/sh
echo Linux Installer
echo ---------------
echo To install Linux Emulation for FreeBSD press ENTER...
read pause1
su root -c "kldload linux"
su root -c "kldload linux64"
su root -c "sysrc linux_enable=YES"
su root -c "pkg install -y linux-c7"
su root -c "echo 'proc    /proc           procfs          rw,noatime      0       0' >> /etc/fstab"
su root -c "echo 'linsysfs    /compat/linux/sys   linsysfs        rw      0       0' >> /etc/fstab"
su root -c "echo 'linproc     /compat/linux/proc  linprocfs rw,auto,late  0       0' >> /etc/fstab"
su root -c "echo 'linprocfs   /compat/linux/proc  linprocfs       rw      0       0' >> /etc/fstab"
su root -c "echo 'tmpfs    /compat/linux/dev/shm  tmpfs   rw,mode=1777    0       0' >> /etc/fstab"
echo Linux is installed on Your PC!