#
# Cookbook:: consul
# Recipe:: config
#
# Copyright:: 2020, The Authors, All Rights Reserved.

cookbook_file '/etc/hosts' do
    source 'hosts'
    owner 'root'
    group 'root'
    mode '0644'
    action :create
end

['/etc/consul.d','/var/lib/consul'].each do |dir|
    directory dir do
        owner 'consul'
        group 'consul'
        mode '0775'
        action :create
    end
end

template '/etc/systemd/system/consul.service' do
    source 'consul.service'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

template '/etc/consul.d/config.json' do
    source 'config.json'
    owner 'consul'
    group 'consul'
    mode '0755'
    action :create
end
