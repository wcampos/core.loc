#
# Cookbook:: node-exporter
# Recipe:: config
#
# Copyright:: 2020, The Authors, All Rights Reserved.

cookbook_file '/etc/consul.d/node_exporter.json' do
    source 'node_exporter.json'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
    notifies :restart, 'service[node_exporter]'
end
