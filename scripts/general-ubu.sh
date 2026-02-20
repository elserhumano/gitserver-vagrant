#!/bin/bash
cat /home/vagrant/.ssh/public_notebook_key >> /home/vagrant/.ssh/authorized_keys
sudo mkdir -p /root/.ssh
sudo cat /home/vagrant/.ssh/public_ansiblix_key >> /root/.ssh/authorized_keys
rm /home/vagrant/.ssh/public_notebook_key -rf
rm /home/vagrant/.ssh/public_ansiblix_key -rf
sudo echo "nameserver 8.8.8.8" > /etc/resolv.conf
sudo setenforce permissive
sudo sed -i 's/SELINUX=enforcing/SELINUX=permissive/g' /etc/selinux/config
sudo systemctl stop firewalld
sudo systemctl disable firewalld
sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
sudo sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' /etc/ssh/sshd_config
sudo sed -i 's/#AuthorizedKeysFile/AuthorizedKeysFile/g' /etc/ssh/sshd_config
sudo systemctl restart sshd

# Copy personalized confs to root
sudo cat /home/vagrant/.ssh/.bashrc >> /root/.bashrc
sudo cat /home/vagrant/.ssh/.vimrc >> /root/.vimrc

# Hide the original cfg files (anaconda-ks and original-ks)
#sudo mv /root/anaconda-ks.cfg /root/.anaconda-ks.cfg
#sudo mv /root/original-ks.cfg /root/.original-ks.cfg

# Finish with system configurations
sudo timedatectl set-timezone Europe/Brussels
sudo apt-get install -y vim git unzip wget htop net-tools telnet
