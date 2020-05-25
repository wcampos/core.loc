#
# Cookbook:: prometheus
# Recipe:: consul-client-svcs
#
# Copyright:: 2020, The Authors, All Rights Reserved.

cookbook_file '/etc/consul.d/prometheus-svc.json' do
    source 'consul-prometheus-svc.json'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
    notifies :restart, 'service[consul-client]'
end
