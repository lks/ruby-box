Vagrant.configure("2") do |config|
  config.vm.box = "Ubuntu12"
  config.vm.box_url = "http://dl.dropbox.com/u/4031118/Vagrant/ubuntu-12.04.1-server-i686-virtual.box"
  config.vm.network :private_network, ip: "192.168.56.102"

  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--memory", 1024]
  end

  config.vm.synced_folder "./rb-dashboard", "/var/rb-dashboard", create: true

  config.vm.provision :shell, :path => "bootstrap.sh"
end
