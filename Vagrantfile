# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  config.vm.network "forwarded_port", guest: 9001, host: 9001
  config.vm.network "forwarded_port", guest: 9002, host: 9002


  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

   config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
     vb.memory = "4096"
     vb.cpus = 2
   end

  config.berkshelf.enabled = true
  config.berkshelf.berksfile_path = "./cookbooks/Berksfile"


  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = "./cookbooks"
    chef.run_list = ['col']
  end

# run start script twice becuase it fails to start the server the first time
  config.vm.provision "shell",
    inline: "cd /vagrant/Odin/servers && sudo /bin/sh service.sh start && sudo /bin/sh service.sh start"

end
