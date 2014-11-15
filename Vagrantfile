# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "wakameci/kemumaki-6.6-x86_64"

  config.vm.provider :virtualbox do |v, override|
   # Disable the base shared folder, guest additions are unavailable.
   #override.vm.synced_folder ".", "/vagrant", disabled: true
   #v.gui = true
   #v.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision "shell", path: "bootstrap.sh"     # Bootstrapping: package installation (phase:1)
  config.vm.provision "shell", path: "config.d/base.sh" # Configuration: node-common          (phase:2)

  2.times.each { |i|
    name = sprintf("node%02d", i + 1)
    config.vm.define "#{name}" do |node|
      node.vm.hostname = "#{name}"
      node.vm.provision "shell", path: "config.d/#{node.vm.hostname}.sh" # Configuration: node-specific (phase:2.5)

      # each node
      node.vm.network "private_network", ip: "192.168.50.1#{i + 1}"

      # master
      if i == 0
        node.vm.network "forwarded_port", guest: 8080, host: 8080, host_ip: "127.0.0.1"
      end
    end
  }
end
