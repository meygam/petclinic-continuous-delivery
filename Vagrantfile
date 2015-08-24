# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
    config.vm.define "artifactory" do |artifactory|
      artifactory.vm.box = "hashicorp/precise64"
      artifactory.vm.network "private_network", ip: "192.168.33.10"

      artifactory.berkshelf.enabled = true
      artifactory.berkshelf.berksfile_path = 'chef/berkshelf/artifactory'

      artifactory.vm.provision :chef_solo do |chef|
        chef.cookbooks_path = "chef/cookbooks"
        chef.roles_path = "chef/roles"
        chef.add_role "artifactory"
        chef.environments_path = "chef/environments"
        chef.environment = "dev"
      end
    end

    config.vm.define "jenkins" do |jenkins|
      jenkins.vm.box = "hashicorp/precise64"
      jenkins.vm.network "private_network", ip: "192.168.33.11"

      jenkins.berkshelf.enabled = true
      jenkins.berkshelf.berksfile_path = 'chef/berkshelf/jenkins'

      jenkins.vm.provision :chef_solo do |chef|
        chef.cookbooks_path = "chef/cookbooks"
        chef.roles_path = "chef/roles"
        chef.add_role "jenkins"
        chef.environments_path = "chef/environments"
        chef.environment = "dev"
      end
    end

    config.vm.define "petclinic" do |petclinic|
      petclinic.vm.box = "hashicorp/precise64"
      petclinic.vm.network "private_network", ip: "192.168.33.12"

      petclinic.vm.provider "virtualbox" do |vb|
       # Customize the amount of memory on the VM:
       vb.memory = "2048"
       vb.cpus = "2"
     end

      petclinic.berkshelf.enabled = true
      petclinic.berkshelf.berksfile_path = 'chef/berkshelf/petclinic'

      petclinic.vm.provision :chef_solo do |chef|
        chef.cookbooks_path = "chef/cookbooks"
        chef.roles_path = "chef/roles"
        chef.add_role "petclinic"
        chef.environments_path = "chef/environments"
        chef.environment = "dev"
      end
    end

    config.vm.define "tomcat8" do |tomcat8|
      tomcat8.vm.box = "hashicorp/precise64"
      tomcat8.vm.network "private_network", ip: "192.168.33.13"

      tomcat8.vm.provider "virtualbox" do |vb|
       # Customize the amount of memory on the VM:
       vb.memory = "2048"
       vb.cpus = "2"
     end

      tomcat8.berkshelf.enabled = true
      tomcat8.berkshelf.berksfile_path = 'chef/cookbooks/meygam_tomcat/Berksfile'

      tomcat8.vm.provision :chef_solo do |chef|
        chef.cookbooks_path = "chef/cookbooks"
        chef.roles_path = "chef/roles"
        chef.add_role "tomcat8"
        chef.environments_path = "chef/environments"
        chef.environment = "dev"
      end
    end
end
