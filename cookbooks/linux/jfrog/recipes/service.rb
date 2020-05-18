#
# Cookbook:: jfrog
# Recipe:: service
#
# Copyright:: 2020, The Authors, All Rights Reserved.

service 'artifactory' do
    action [ :enable, :start ]
end
