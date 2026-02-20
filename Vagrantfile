# -*- mode: ruby -*-
# vi: set ft=ruby :
# Need to install this plugin:
#   vagrant plugin install vagrant-hostmanager

# Specify minimum Vagrant version and Vagrant API version
Vagrant.require_version "> 2.2"
API_VERSION = "2"

# Require YAML module
require 'yaml'

# Read YAML file with box details
servers = YAML.load_file('configs/server-config.yml')
files = YAML.load_file('configs/provision-file.yml')

# Create the boxes
Vagrant.configure(API_VERSION) do |config|

  # Enable hostmanager
  config.hostmanager.enabled = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true

  servers.each do |server|
    config.vm.boot_timeout = 900
    config.vm.define server["name"] do |machine|

      machine.vm.box = server["box"]
        machine.vm.provider "virtualbox" do |vpm|
          vpm.memory = server["memory"]
          vpm.cpus = server["cpus"]
          vpm.customize ["modifyvm", :id, "--groups", server["groups"]]
          vpm.name = server["name"]
        end

      machine.vm.network "private_network", ip: server["ip"]
      machine.vm.hostname = server["name"]
      #machine.hostmanager.aliases = server["aliases"]

      # Copy public key from notebook to vm
      files.each do |the_file|
        machine.vm.provision "file", source: the_file["source"], destination: the_file["destination"]
      end

      machine.vm.provision "shell", path: "#{server["general-script"]}"
      machine.vm.provision "shell", path: "#{server["box-script"]}"
    end
  end
end
