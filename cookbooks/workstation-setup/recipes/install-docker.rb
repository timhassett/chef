#
# Cookbook:: workstation-setup
# Recipe:: install docker
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'docker-selinux'





# mkdir /var/lib/rpm/backup && cp -a /var/lib/rpm/__db* /var/lib/rpm/backup/ && rm -f /var/lib/rpm/__db.[0-9][0-9]* && rpm --quiet -qa && rpm --rebuilddb && yum clean all
