default['meygam']['artifactory_server'] = '192.168.33.10'
default['meygam']['artifactory_repos'] = [
  "http://#{node['meygam']['artifactory_server']}:8081/artifactory/libs-snapshot-local",
  "http://#{node['meygam']['artifactory_server']}:8081/artifactory/libs-release-local"
]

default['meygam_petclinic']['java_max_memory'] = '1024m'
