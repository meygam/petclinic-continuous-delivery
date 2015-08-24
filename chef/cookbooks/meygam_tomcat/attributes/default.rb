default['java']['install_flavor'] = 'oracle'
default['java']['jdk_version'] = 7
default['java']['oracle']['accept_oracle_download_terms'] = true

default['meygam_tomcat']['base_dir'] = '/opt/tomcat'
default['meygam_tomcat']['webapp_dir'] = "#{default['meygam_tomcat']['base_dir']}/webapps"
