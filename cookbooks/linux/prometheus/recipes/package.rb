#
# Cookbook:: prometheus
# Recipe:: package
#
# Copyright:: 2020, The Authors, All Rights Reserved.

['prometheus','alertmanager','pushgateway'].each do |pkg|
    yum_package pkg do
        action :install
    end
end