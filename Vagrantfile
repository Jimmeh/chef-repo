# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian-x64"
  config.vm.box_url = "http://www.emken.biz/vagrant-boxes/debsqueeze64.box"
  config.vm.define :dev do |dev_config|
	dev_config.vm.network :forwarded_port, guest: 80, host: 4567
    config.vm.provision :shell, :inline => "curl -L https://www.opscode.com/chef/install.sh | bash"
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
