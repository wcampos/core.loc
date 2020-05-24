#
# Cookbook:: base
# Recipe:: dns
#
# Copyright:: 2020, The Authors, All Rights Reserved.

route '192.168.1.0/24' do
    gateway '192.168.1.1'
    device 'eth1'
  end