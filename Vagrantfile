Vagrant.configure("2") do |config|
  # Ubuntu 20.04
  config.vm.box = "ubuntu/focal64"

  # Forward port 8080 from VM (guest) to your laptop (host)
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  # Provision VM using our script
  config.vm.provision "shell", path: "provision.sh"
end
