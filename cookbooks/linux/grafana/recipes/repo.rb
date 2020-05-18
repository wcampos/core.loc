#
# Cookbook:: grafana
# Recipe:: repo
#
# Copyright:: 2020, The Authors, All Rights Reserved.

cookbook_file '/etc/yum.repos.d/grafana.repo' do
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end


