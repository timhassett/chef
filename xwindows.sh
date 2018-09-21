#!/bin/bash

yum -y group list
yum -y groupinstall "GNOME Desktop" "Graphical Adminstration Tools"

ln -sf /lib/systemd/system/runlevel5.target /etc/systemd/system/default.target
reboot




#yum -y groupinstall "X Windows System"
#yum -y install gnome-classic-session gnome-terminal natilus-open-terminal control-center liberation-mono-fonts
#unlink /etc/systemd/system/default.target
#ln -sf /lib/systemd/system/graphical.target / /etc/systemd/system/default.target
