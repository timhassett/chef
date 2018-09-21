#!/bin/bash

# wget https://packages.chef.io/files/stable/chefdk/3.2.30/el/7/chefdk-3.2.30-1.el7.x86_64.rpm /tmp/chefdk-3.2.30-1.el7.x86_64.rpm
# rpm -Uvh /tmp/chefdk-3.2.30-1.el7.x86_64.rpm
# git clone https://github.com/timhassett/chef.git

#cd ./cookbooks/workstation-setup
#berks vendor cookbooks
#rm -rf ./cookbooks/workstation-setup
#cp -r ./cookbooks/* ../



#!/bin/bash
cmd="berks vendor -b $(pwd)/cookbooks/workstation-setup/Berksfile"
pushd /tmp
rm -rf cookbooks
$cmd
mv berks-cookbooks cookbooks
sudo chef-client -z  -r workstation-setup
popd


#chef-client -z -o workstation-setup
