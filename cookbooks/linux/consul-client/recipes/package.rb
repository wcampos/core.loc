#
# Cookbook:: consul-client
# Recipe:: package
#
# Copyright:: 2020, The Authors, All Rights Reserved.

remote_file '/tmp/consul.zip' do
    source 'https://releases.hashicorp.com/consul/1.7.3/consul_1.7.3_linux_amd64.zip'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
    not_if {::File.exist?('/tmp/consul.zip')}
end

zipfile '/tmp/consul.zip' do
    into '/usr/bin/'
    overwrite true
    not_if {::File.exist?('/usr/bin/consul')}
  end