IMAGE_NAME = "bento/ubuntu-19.04"
N = 1
DATAPATH = "../resources/data"


# Standard swarm
PLAYBOOK = "ubuntudesktop.yml"

Vagrant.configure("2") do |config|
    config.ssh.insert_key = false    
   
    # # Provision
    # config.vm.provision :ansible do |ansible|
    #     ansible.playbook = PLAYBOOK
    #     ansible.limit = "all"
    #     ansible.verbose = "v"    
    # end

    # loop
    (1..N).each do |machine_id|
            
        # Define
        config.vm.define "test-0#{machine_id}" do |manager|
            manager.vm.box = IMAGE_NAME
            manager.vm.hostname = "test-0#{machine_id}"
            manager.vm.network "private_network", ip: "10.5.5.#{4+machine_id}"
            manager.vm.synced_folder DATAPATH, "/opt/data", type: "virtualbox"
            
            # Provider
            manager.vm.provider "virtualbox" do |vb|
                vb.memory = "2048"
                vb.cpus = "2"
                       
            end
        end
    end
end