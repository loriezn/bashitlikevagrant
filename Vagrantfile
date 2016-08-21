# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
  Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
          v.memory = 4096
          v.cpus = 1
  
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/xenial64"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  config.vm.network "public_network"
#  vb.memory = "2048"
    # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update \
    apt-get dist-upgrade -y 
    apt-get install -y shellcheck htop git git-core 

    FILE[0]='/home/loki/projects.io/bashitlikevagrant/custom.aliases.bash'
    FILE[1]='/home/loki/projects.io/bashitlikevagrant/custom.completion.bash'
    FILE[2]='/home/loki/projects.io/bashitlikevagrant/custom.bash'
    FILE[3]='/home/loki/projects.io/bashitlikevagrant/custom.plugins.bash '
    FILE[4]='/home/loki/projects.io/bashitlikevagrant/zerobytes.theme.bash'
    FILE[5]='/home/loki/projects.io/bashitlikevagrant/colors_zb.theme.bash'
    FILE[6]='/home/loki/projects.io/bashitlikevagrant/exports_zb.theme.bash'
    declare -a "$FILE"

    SETLANG="echo 'LC_ALL=en_US.UTF-8'" 
    
    BASHITREPO="/home/loki/.bash-it"
    SCRIPTDIR="/home/loki/.bash-it/custom/themes/zerobytes"
    EXPSCRIPT="/home/loki/.bash-it/custom/themes/zerobytes/exports_zb.theme.bash"
    FZFDIR=/home/loki/.fzf
  
    bashitrepo(){
      git clone https://github.com/studio2131/bash-it.git /home/loki/.bash-it 
    }  
    filearray() {
    scriptdir(){
        mkdir -p "${SCRIPTDIR}"
    }
    fzfinstall(){
        git clone --depth 1 https://github.com/junegunn/fzf.git /home/loki/.fzf 
        /home/loki/./.fzf/install
    }
    langecho() {
      touch ${FILE}[*]
      "${SETLANG}" >> {EXPDIR}
    }

    if [ -z = "${BASHITREPO}" ]; then
      "${bashitrepo}"
  
    if  [ -z = ${SCRIPTDIR} ]; then 
        "${{scriptdir}}"
     
    if  [ -z = ${EXPLANG}]; then
        ${langecho}
    
    if [ -z = ${FZFDIR[*]} ]; then
      "${fzfinstall}"
    
    if  [ -z = ${FILE} ]; then 
        "${filearray}"
    SHELL
  end
end