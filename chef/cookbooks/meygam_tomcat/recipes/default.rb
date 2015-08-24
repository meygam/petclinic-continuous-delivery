#
# Cookbook Name:: meygam_tomcat
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt::default'
include_recipe 'java::default'

user 'tomcat' do
  home node['meygam_tomcat']['base_dir']
  shell '/bin/false'
end

group 'tomcat' do
  members 'tomcat'
  action :create
end

directory node['meygam_tomcat']['base_dir'] do
  owner 'tomcat'
  group 'tomcat'
  mode '0755'
  action :create
end

tar_extract 'http://mirror.sdunix.com/apache/tomcat/tomcat-8/v8.0.23/bin/apache-tomcat-8.0.23.tar.gz' do
  user 'tomcat'
  group 'tomcat'
  download_dir '/tmp'
  target_dir node['meygam_tomcat']['base_dir']
  creates "#{node['meygam_tomcat']['base_dir']}/bin"
  tar_flags [ '--strip-components 1' ]
end

template "tomcat8 upstart script" do
	source "etc/init/tomcat.conf.erb"
	path "/etc/init/tomcat.conf"
	notifies :restart, "service[tomcat]"
end

service 'tomcat' do
  provider Chef::Provider::Service::Upstart
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end
