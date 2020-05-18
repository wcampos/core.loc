#
# Cookbook:: grafana
# Recipe:: service
#
# Copyright:: 2020, The Authors, All Rights Reserved.

service 'grafana-server' do
    action [ :enable, :start ]
end
