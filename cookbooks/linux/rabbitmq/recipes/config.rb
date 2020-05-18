#
# Cookbook:: rabbitmq
# Recipe:: config
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# Install management Plugin
execute 'Management Plugin' do
    command 'rabbitmq-plugins enable rabbitmq_management'
    action :run
end

# RabbitMQ Config file
cookbook_file '/etc/rabbitmq/rabbitmq.conf' do
    source 'rabbitmq.conf'
    owner 'root'
    group 'rabbitmq'
    mode '0755'
    action :create
end

# Limits for Rabbit

directory '/etc/systemd/system/rabbitmq-server.service.d' do
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

cookbook_file '/etc/systemd/system/rabbitmq-server.service.d/limits.conf' do
    source 'limits.conf'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

