#
# Cookbook:: grafana
# Recipe:: config
#
# Copyright:: 2020, The Authors, All Rights Reserved.

cookbook_file '/etc/consul.d/grafana.json' do
    source 'grafana.json'
    owner 'consul'
    group 'consul'
    mode '0755'
    action :create
    notifies :reload, 'service[consul-client]'
end
