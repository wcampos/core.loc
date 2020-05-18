#
# Cookbook:: jfrog
# Recipe:: repo
#
# Copyright:: 2020, The Authors, All Rights Reserved.

cookbook_file 'etc/yum.repos.d/bintray-jfrog-artifactory-oss-rpms.repo' do
    source 'bintray-jfrog-artifactory-oss-rpms.repo'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end
