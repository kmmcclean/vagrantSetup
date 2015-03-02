#!/bin/bash
#cd /home/vagrant
#tar -xsvf /vagrant/apache-storm-0.9.3.tar.gz

if [ -d "/root/.oh-my.zsh" ]; then
  rm -rf /root/.oh-my.zsh
fi

if [ -d "/home/vagrant/.oh-my.zsh" ]; then
  rm -rf "/home/vagrant/.oh-my.zsh"
fi
if [ -d "/home/vagrant/dotfiles" ]; then
  rm -rf "/home/vagrant/dotfiles"
fi
git clone git://github.com/robbyrussell/oh-my-zsh.git /home/vagrant/.oh-my-zsh
chsh -s /bin/zsh vagrant

git clone https://github.com/kmmcclean/dotfiles.git
if [ -f "/home/vagrant/.zshrc" ]; then
  mv "/home/vagrant/.zshrc" "/home/vagrant/.zshrc.old"
fi
ln -s dotfiles/.zshrc /home/vagrant/.zshrc
