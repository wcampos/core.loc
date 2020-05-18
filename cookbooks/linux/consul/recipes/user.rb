#
# Cookbook:: consul
# Recipe:: user
#
# Copyright:: 2020, The Authors, All Rights Reserved.

group 'consul' do
    action :create
    gid '1111'
end


user 'consul' do
    comment 'consul user'
    action :create
    gid '1111'
    shell '/sbin/nologin'
    system true
    manage_home false
end
