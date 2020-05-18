#
# Cookbook:: rabbitmq
# Recipe:: service
#
# Copyright:: 2020, The Authors, All Rights Reserved.

service 'rabbitmq-server' do
    action [ :enable, :start ]
end
