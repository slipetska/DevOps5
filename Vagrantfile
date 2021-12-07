Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.provision "file", source: "test.service", destination: "~/test.service"
  config.vm.provision "shell", path: "script.sh"
end
