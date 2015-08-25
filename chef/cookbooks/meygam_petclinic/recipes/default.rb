#
# Cookbook Name:: meygam_petclinic
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

maven 'petclinic' do
  group_id 'petclinic'
  version  '0.2-SNAPSHOT'
  packaging 'war'
  dest node['meygam_tomcat']['webapp_dir']
  repositories node['meygam']['artifactory_repos']
  action :put
  notifies :restart, "service[tomcat]"
end

service 'tomcat' do
	action [:restart, :start, :stop]
end
