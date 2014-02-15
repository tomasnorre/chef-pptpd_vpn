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

# write user/password file
cookbook_file '/etc/ppp/chap-secrets' do
 source 'chap-secrets'
 mode '0600'
end

# write configuration file
template 'update pptpd.conf' do
 path '/etc/pptpd.conf'
 source 'pptpd.conf.erb'
 mode 0644
 variables(
  local_ip: node['pptpd_vpn']['local_ip'],
  ip_begin: node['pptpd_vpn']['ip_begin'],
  ip_end_block: node['pptpd_vpn']['ip_end_block']
 )
 notifies :restart, 'service[pptpd]'
end

service 'pptpd' do
 supports :restart => :true
 action [:enable, :start]
end
