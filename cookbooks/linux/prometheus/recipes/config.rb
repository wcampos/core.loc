#
# Cookbook:: prometheus
# Recipe:: config
#
# Copyright:: 2020, The Authors, All Rights Reserved.

cookbook_file '/etc/prometheus/prometheus.yml' do
    source 'prometheus.yml'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
    notifies :reload, 'service[prometheus]'
end
