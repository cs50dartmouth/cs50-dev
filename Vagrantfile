# CS50 STUDENTS: DO NOT EDIT THIS FILE
# -*- mode: ruby -*-
# vi: set ft=ruby :

# For more information on Vagrantfile,
#  see https://www.vagrantup.com/docs/vagrantfile/
#  and examples at http://pietervogelaar.nl/vagrant-shell-provision-example

cs50user = "vagrant"

Vagrant.configure("2") do |config|

  # Every Vagrant development environment requires a box.
  # You can search for boxes at https://vagrantcloud.com/search.
  # We stick with one version current at start of course;
  # see https://www.vagrantup.com/docs/boxes/versioning.html
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_version = "20190318.0.0"
  config.vm.hostname = "cs50box"
  # Don't check for updates on every 'vagrant up'
  config.vm.box_check_update = false

  # Upload user's ssh key into box so it can be used for GitHub
  ssh_key_path = "~/.ssh/"
  config.vm.provision "shell", inline: "mkdir -p /home/vagrant/.ssh"
  config.vm.provision "file", source: "#{ ssh_key_path + 'id_rsa' }", destination: "/home/vagrant/.ssh/id_rsa"
  config.vm.provision "file", source: "#{ ssh_key_path + 'id_rsa.pub' }", destination: "/home/vagrant/.ssh/id_rsa.pub"

  # Share this folder to the guest VM:
  # The first arg is the relative path on the host of the folder to share.
  # The second arg is the full path on the guest where the folder will mount.
  config.vm.synced_folder ".", "/home/vagrant/cs50-dev", owner: cs50user, group: cs50user

  # Provider-specific configuration about the VM name and size.
  config.vm.provider "virtualbox" do |vb|
    vb.name = 'cs50vm'

    vb.customize [
      "modifyvm", :id,
      "--cpuexecutioncap", "50",
      "--memory", 4096,
    ]
  end

  # Finish provisioning with a shell script, which **runs inside the VM**
  config.vm.provision "shell", inline: <<-SHELL
    export DEBIAN_FRONTEND=noninteractive

    echo Installing necessary packages...
    apt-get update > /dev/null
    for package in $( grep -v '#' /home/vagrant/cs50-dev/setup/packages ); do
        echo " $package"
    	apt-get install -y $package  &> /dev/null && echo "SUCCESSFULLY INSTALLED $package" || echo "FAILED TO INSTALL $package"
    done

    echo Installing dot files...
    dotdir=/home/vagrant/cs50-dev/dotfiles/virtualbox
    for dot in $dotdir/*; do
    	dotfile=.${dot##*/}
        echo " $dotfile"
    	dotlink=/home/vagrant/$dotfile
        rm -f $dotlink
    	ln -s $dot $dotlink
    done

    echo Protecting your .ssh keys...
    chmod 600 .ssh/id_rsa .ssh/id_rsa.pub

    echo "Do all your work in ~/cs50-dev/" > /home/vagrant/DO-NO-WORK-HERE
    echo Provision successful.
  SHELL

#  config.trigger.before :destroy do |trigger|
#    trigger.warn = "Backing up home folder to cs50-dev/home-backup.tgz"
#    trigger.run_remote = {
#      inline: "cd /home/vagrant && tar --absolute-names --exclude './cs50-dev' -zcvf /vagrant/home-backup.tgz . || exit 0"
#    }
#  end
end
