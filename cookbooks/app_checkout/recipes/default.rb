#
# Cookbook Name:: app_checkout
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git "/home/vagrant/www/" do
	repository "https://github.com/Jimmeh/node_example.git"
	reference "master"
	action "sync"
	user "vagrant"
end

git "/home/vagrant/www/node_example" do
	repository "https://github.com/Jimmeh/node_example.git"
	reference "master"
	action "sync"
	user "vagrant"
end