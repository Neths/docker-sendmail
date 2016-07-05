required_plugins = %w( vagrant-hostmanager vagrant-alpine )
required_plugins.each do |plugin|
  system "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network :private_network, :ip => '10.20.1.10'
  config.vm.provision :shell, path: "bootstrap.sh"
end
