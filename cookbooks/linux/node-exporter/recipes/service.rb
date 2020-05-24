#
# Cookbook:: node-exporter
# Recipe:: package
#
# Copyright:: 2020, The Authors, All Rights Reserved.

service 'node_exporter' do
    action [ :enable, :start ]
end
