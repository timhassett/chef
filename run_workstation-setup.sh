#!/bin/bash

# wget https://packages.chef.io/files/stable/chefdk/3.2.30/el/7/chefdk-3.2.30-1.el7.x86_64.rpm /tmp/chefdk-3.2.30-1.el7.x86_64.rpm
# rpm -Uvh /tmp/chefdk-3.2.30-1.el7.x86_64.rpm
# git clone https://github.com/timhassett/chef.git


chef-client -z -o workstation-setup
