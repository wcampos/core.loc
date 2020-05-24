#
# Cookbook:: consul-client
# Recipe:: service
#
# Copyright:: 2020, The Authors, All Rights Reserved.

template '/etc/systemd/system/consul-client.service' do
    source 'consul-client.service'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

service 'consul-client' do
    action [:enable, :start]
end

