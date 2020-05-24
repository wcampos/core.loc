#
# Cookbook:: base
# Recipe:: install
#
# Copyright:: 2020, The Authors, All Rights Reserved.
[
    'epel-release',
    'bind-utils',
    'vim',
    'wget',
    'sshpass',
    'net-tools',
    'unzip'
].each do |pkg|
    yum_package pkg do
      action :install
    end
  end