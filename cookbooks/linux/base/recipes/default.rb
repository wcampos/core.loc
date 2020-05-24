#
# Cookbook:: base
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
include_recipe '::dns'
include_recipe '::route'
include_recipe '::package'