#
# Cookbook:: base
# Recipe:: dns
#
# Copyright:: 2020, The Authors, All Rights Reserved.

cookbook_file '/etc/resolv.conf' do
    source 'resolv.conf'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

