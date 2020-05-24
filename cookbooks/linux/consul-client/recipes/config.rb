#
# Cookbook:: consul-client
# Recipe:: config
#
# Copyright:: 2020, The Authors, All Rights Reserved.

group 'consul' do
    action :create
    gid '1001'
    system true
end

user 'consul' do
    comment 'consul user'
    uid '1001'
    gid '1001'
    shell '/sbin/nologin'
    action :create
end

['/etc/consul.d','/var/lib/consul'].each do |dirs|
    directory dirs do
        owner 'consul'
        group 'consul'
        mode '0755'
        action :create
    end
end

template '/etc/consul.d/config.json' do
    source 'config.json'
    owner 'consul'
    group 'consul'
    mode '0755'
    action :create
end
