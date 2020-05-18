#
# Cookbook:: consul
# Recipe:: service
#
# Copyright:: 2020, The Authors, All Rights Reserved.

service 'consul' do
    action [ :enable, :start ]
end
