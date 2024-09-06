
Vagrant.configure("2") do |config|

  ### Kw4Africa VM ###
  config.vm.box = "ubuntu/focal64"
  config.vm.hostname = "Kw4Africa"
  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :private_network, ip: "192.168.70.5"

  config.vm.synced_folder "apachewebsite", "/apachewebsite/"

  config.vm.provider "virtualbox" do |vbox|
      vbox.memory = 2048
      vbox.cpus = 1
  end

  config.vm.provision "shell", path: "apache.sh"


end  