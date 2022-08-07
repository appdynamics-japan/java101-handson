# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
#  config.gatling.rsync_on_startup = true
  config.vm.provider "vmware_desktop" do |v|
    v.vmx['memsize'] = "4096"
    v.vmx['numvcpus'] = "2"
  end
  
  config.vm.box = "bento/ubuntu-22.04"
  config.vm.define "java101" do |node|
    node.vm.hostname = "java101"
    node.vm.network :private_network
  end
  
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "provisioning/playbook.yml"
    ansible.verbose = 'false'
  end
end
