# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.synced_folder "shared_files/", "/mnt/shared_files"
  config.vm.box = "debian-x64"
  config.vm.box_url = "http://10.44.22.227:4000/debsqueeze64.box"
  config.vm.define :dev do |dev_config|
	  dev_config.vm.network :forwarded_port, guest: 80, host: 4567
    config.vm.provision :shell, :inline => "bash /mnt/shared_files/install_chef.sh"
    config.vm.provision :chef_solo do |chef|
      chef.node_name = "dev_vm"
	    chef.cookbooks_path = "cookbooks"
      chef.add_recipe("apt")
      chef.add_recipe("nginx")
      chef.add_recipe("nodejs")
	    chef.add_recipe("git")
	    chef.add_recipe("vim")
    end
  end
end
