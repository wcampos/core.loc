#
# Cookbook:: prometheus
# Recipe:: repo
#
# Copyright:: 2020, The Authors, All Rights Reserved.

execute 'Prometheus Repo' do
    command 'curl -s https://packagecloud.io/install/repositories/prometheus-rpm/release/script.rpm.sh | sudo bash'
    action :run
    not_if {::File.exist?('/etc/yum.repos.d/prometheus-rpm_release.repo')}
end
