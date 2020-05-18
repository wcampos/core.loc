#
# Cookbook:: prometheus
# Recipe:: service
#
# Copyright:: 2020, The Authors, All Rights Reserved.

['prometheus','alertmanager','pushgateway'].each do |pkg|
    service pkg do
        action [ :enable , :start ]
    end
end
    