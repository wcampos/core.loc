#
# Cookbook:: jfrog
# Recipe:: package
#
# Copyright:: 2020, The Authors, All Rights Reserved.

['java','jfrog-artifactory-oss'].each do |pkg|
    yum_package pkg do
        action :install
    end
end
