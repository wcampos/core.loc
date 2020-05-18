#
# Cookbook:: jenkins
# Recipe:: service
#
# Copyright:: 2020, The Authors, All Rights Reserved.

service 'jenkins' do
    action [ :enable, :start ]
end