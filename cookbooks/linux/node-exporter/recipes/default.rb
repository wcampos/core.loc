#
# Cookbook:: node-exporter
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

include_recipe '::package'
include_recipe '::consul_config'
include_recipe '::service'