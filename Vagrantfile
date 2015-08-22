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

      artifactory.vm.provider "virtualbox" do |vb|
        # Customize the amount of memory on the VM:
        vb.memory = "512"
      end

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
end
