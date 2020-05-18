#
# Cookbook:: consul
# Recipe:: package
#
# Copyright:: 2020, The Authors, All Rights Reserved.

remote_file '/tmp/consul.zip' do
    source 'https://releases.hashicorp.com/consul/1.7.3/consul_1.7.3_linux_amd64.zip'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

zipfile '/tmp/consul.zip' do
    into '/usr/bin/'
    overwrite true
  end

#execute 'consul autocomplete' do
#    command '/usr/bin/consul -autocomplete-install'
#    action :run
#end
#
#execute 'consul complete' do
#    command 'complete -C /usr/bin/consul consul'
#    action :run
#end