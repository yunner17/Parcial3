Vagrant.configure("2") do |config|
	config.vm.define :streama do |streama|
		streama.vm.box = "bento/centos-7"
		streama.vm.network :private_network, ip: "192.168.2.10"
		streama.vm.hostname = "streama"
	 	streama.vm.provision "shell", path: "script.sh" 
		end
	config.vm.define :firewallc do |firewallc|
		firewallc.vm.box = "bento/centos-7"
		firewallc.vm.network :public_network, ip:  "192.168.1.11"
		firewallc.vm.network :private_network, ip: "192.168.2.12"
		firewallc.vm.hostname = "firewallc"
		firewallc.vm.provision "shell", path: "script2.sh"
		end
end