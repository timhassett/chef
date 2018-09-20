#
# Cookbook:: workstation-setup
# Recipe:: common-applications
#
# Copyright:: 2018, The Authors, All Rights Reserved.



# Install Atom
package 'lsb-core-noarch'
package 'libXScrnSaver'

remote_file '/tmp/atom.rpm' do
	source 'https://atom.io/download/rpm'
	action :create_if_missing
	notifies :install, 'rpm_package[Atom]'
end

rpm_package 'Atom' do
	source '/tmp/atom.rpm'
end

# Install Chrome
yum_repository 'google-chrome' do
	repositoryid 'google-chrome'
	baseurl 'http://dl.google.com/linux/chrome/rpm/stable/$basearch'
	enabled true
	gpgcheck true
	gpgkey 'https://dl-ssl.google.com/linux/linux_signing_key.pub'
	notifies :install, 'package[google-chrome-stable]'
end

package 'google-chrome-stable' do
	action :nothing
end
