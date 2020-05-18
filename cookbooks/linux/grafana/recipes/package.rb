#
# Cookbook:: grafana
# Recipe:: package
#
# Copyright:: 2020, The Authors, All Rights Reserved.

yum_package 'grafana' do
    action :install
end
