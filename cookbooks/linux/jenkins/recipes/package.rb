#
# Cookbook:: jenkins
# Recipe:: package
#
# Copyright:: 2020, The Authors, All Rights Reserved.

['java','jenkins'].each do |pkg|
    yum_package pkg do
        action :install
    end
end    
