#
# Cookbook:: rabbitmq
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

include_recipe '::repo'
include_recipe '::package'
include_recipe '::config'
include_recipe '::service'