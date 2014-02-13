#
# Cookbook Name:: pptpd_vpn
# Recipe:: default
#
# Copyright 2014, Tomas Norre 
#


# install apache
package 'pptpd' do
	action :install
end

# start the apache service
# make sure the service starts on reboot
service 'pptpd' do
	action [:start, :enable]
end

# write configuration files
cookbook_file '/etc/ppp/chap-secrets' do
	source 'chap-secrets'
	mode '0600'
end

cookbook_file '/etc/pptpd.conf' do
	source 'pptpd.conf'
	mode '0644'
	notifies :restart, 'service[pptpd]'
end

service 'pptpd' do
	supports :restart => :true
	action [:enable, :start]
end