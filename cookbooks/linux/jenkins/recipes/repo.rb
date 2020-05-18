#
# Cookbook:: jenkins
# Recipe:: repo
#
# Copyright:: 2020, The Authors, All Rights Reserved.

execute 'jenkins-repo' do
    command 'curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo'
    action :run
    not_if "[ -f '/etc/yum.repos.d/jenkins.repo' ] && exit o || exit 1" 
end

execute 'RPM Keys jenkins' do
    command 'sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key'
    action :run
    not_if "[ -f '/etc/yum.repos.d/jenkins.repo' ] && exit o || exit 1" 
end
