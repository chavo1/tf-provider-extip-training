 Vagrant.configure("2") do |config|
      config.vm.box = "chavo1/xenial64base"
      config.vm.provision "shell", path: "scripts/provision.sh"
      config.vm.provision "shell", path: "scripts/plugin.sh"
  end
    
