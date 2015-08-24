#
# Cookbook Name:: meygam_jenkins
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


jenkins_plugin 'git' do
  version '2.4.0'
  action :install
  notifies :restart, 'service[jenkins]'
end

jenkins_plugin 'job-dsl' do
  version '1.37'
  action :install
  notifies :restart, 'service[jenkins]'
end

jenkins_plugin 'build-flow-plugin' do
  version '0.18'
  action :install
  notifies :restart, 'service[jenkins]'
end

jenkins_plugin 'jenkins-cloudformation-plugin' do
  version '1.0'
  action :install
  notifies :restart, 'service[jenkins]'
end

jenkins_plugin 'python' do
  version '1.2'
  action :install
  notifies :restart, 'service[jenkins]'
end
