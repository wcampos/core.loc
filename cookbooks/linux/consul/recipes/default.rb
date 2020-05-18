#
# Cookbook:: consul
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

include_recipe '::package'
include_recipe '::user'
include_recipe '::config'
include_recipe '::service'