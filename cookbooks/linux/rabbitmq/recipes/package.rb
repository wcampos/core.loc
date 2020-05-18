#
# Cookbook:: rabbitmq
# Recipe:: package
#
# Copyright:: 2020, The Authors, All Rights Reserved.
['erlang', 'rabbitmq-server'].each do |pkg|
    yum_package pkg do
        action :install
    end
end