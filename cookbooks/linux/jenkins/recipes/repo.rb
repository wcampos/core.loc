#
# Cookbook:: jenkins
# Recipe:: repo
#
# Copyright:: 2020, The Authors, All Rights Reserved.

execute 'RPM Keys jenkins' do
    command 'sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key'
    action :run
    not_if {::File.exist?('/etc/yum.repos.d/jenkins.repo')} 
end

execute 'jenkins-repo' do
    command 'curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo'
    action :run
    not_if {::File.exist?('/etc/yum.repos.d/jenkins.repo')}
end


