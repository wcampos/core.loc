#
# Cookbook:: rabbitmq
# Recipe:: repo
#
# Copyright:: 2020, The Authors, All Rights Reserved.

execute 'RMQ RPM Key' do
    command 'rpm --import https://github.com/rabbitmq/signing-keys/releases/download/2.0/rabbitmq-release-signing-key.asc'
    action :run
    not_if '[ -f "/etc/yum.repos.d/rabbitmq.repo" ] && exit 0 || exit 1'
end

cookbook_file '/etc/yum.repos.d/rabbitmq.repo' do
    source 'rabbitmq.repo'
    owner 'root'
    group 'root'
    mode '0644'
    action :create
end

execute 'Erlang Repo' do
    command 'curl -s https://packagecloud.io/install/repositories/rabbitmq/erlang/script.rpm.sh | sudo bash'
    action :run
    not_if '[ -f "/etc/yum.repos.d/rabbitmq_erlang.repo" ] && exit 0 || exit 1'
end
