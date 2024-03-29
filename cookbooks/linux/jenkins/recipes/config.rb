#
# Cookbook:: jenkins
# Recipe:: config
#
# Copyright:: 2020, The Authors, All Rights Reserved.

cookbook_file '/etc/consul.d/jenkins-svc.json' do
    source 'consul-jenkins-svc.json'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
    notifies :restart, 'service[consul-client]'
end
