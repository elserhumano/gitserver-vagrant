#!/bin/bash

# Install Go 1.16.6   ###############################################
# sudo wget https://golang.org/dl/go1.16.6.linux-amd64.tar.gz
# sudo tar -C /usr/local -xzf go1.16.6.linux-amd64.tar.gz
# sudo echo "export PATH=$PATH:/usr/local/go/bin" >> /root/.bashrc
# sudo echo "export GOPATH=/root/go" >> /root/.bashrc
# sudo echo "export GOBIN=/root/go/bin" >> /root/.bashrc
# sudo echo "export GOROOT=/usr/local/go" >> /root/.bashrc
# sudo mkdir /root/go/bin /root/go/pkg /root/go/src

# Install Terraform    ##############################################
# sudo wget https://releases.hashicorp.com/terraform/1.0.3/terraform_1.0.3_linux_amd64.zip
# sudo unzip terraform_1.0.3_linux_amd64.zip
# sudo mv terraform /usr/local/bin
# Make an alias with t -> terraform


# Install OCI CLI    ################################################

# Install Docker    #################################################
yum install -y docker docker-compose

# Install Bash Git    ###############################################
# git clone https://github.com/magicmonty/bash-git-prompt.git
# Put this as hidden, modify also the .bashrc
  # Config Git prompt
  # GIT_PROMPT_ONLY_IN_REPO=1
  # source ~/.bash-git-prompt/gitprompt.sh

# Install Neofetch    ###############################################
# yum install -y epel-release
# curl -o /etc/yum.repos.d/konimex-neofetch-epel-7.repo https://copr.fedorainfracloud.org/coprs/konimex/neofetch/repo/epel-7/konimex-neofetch-epel-7.repo
# yum install -y neofetch
# Add the line "neofetch" in .bashrc

# Install Puppet Repo    ############################################
# rpm -U https://yum.puppet.com/puppet6-release-el-7.noarch.rpm

# Install Puppet Agent    ###########################################
# yum install -y puppet-agent

# Install Puppet PDK    #############################################
# yum install -y pdk

# Install Puppet Bolt    ############################################
# yum install -y puppet-bolt

# Install Puppet Server OpenSource    ###############################
# Limit the memory to 256Mb
# yum install -y puppetserver

# Install Ansible    ################################################
# yum install -y ansible

# Install Python 3.9    #############################################
# yum -y groupinstall "Development Tools"
# yum install openssl-devel libffi-devel bzip2-devel -y
# yum install -y zlib-devel
# 1 - Download the latest python for linux in this case
# 2 - Extract and move into directory
# 3 - Run "./configure --enable-optimizations"
# 4 - Run "make altinstall"
# 5 - Now we can invoke Python by "python3.9" then pip by "pip3.9"
# 6 - Create two alias for the previous commands

# Install Tmux    ###################################################
# yum install -y tmux

# Install jq    #####################################################
# yum install -y jq

# Install Tfswitch    ###############################################
# curl -L https://raw.githubusercontent.com/warrensbox/terraform-switcher/release/install.sh | bash
