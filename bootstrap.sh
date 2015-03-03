#!/bin/bash
#cd /home/vagrant
#tar -xsvf /vagrant/apache-storm-0.9.3.tar.gz

if [ -d "/home/vagrant/.oh-my-zsh" ]; then
  echo "removing oh-my-zsh directory"
  rm -rf "/home/vagrant/.oh-my-zsh"
fi
git clone git://github.com/robbyrussell/oh-my-zsh.git /home/vagrant/.oh-my-zsh
chsh -s /bin/zsh vagrant

if [ -d "/home/vagrant/dotfiles" ]; then
  echo "removing dotfiles directory"
  rm -rf "/home/vagrant/dotfiles"
fi
git clone https://github.com/kmmcclean/dotfiles.git

if [ -f "/home/vagrant/.zshrc" ]; then
  mv "/home/vagrant/.zshrc" "/home/vagrant/.zshrc.old"
fi
ln -s dotfiles/.zshrc /home/vagrant/.zshrc


##### Vim Setup

#Vundle
git clone https://github.com/gmarik/Vundle.vim.git /home/vagrant/.vim/bundle/Vundle.vim
if [ -f "/home/vagrant/.vim/bundle/Vundle.vim" ]; then
  rm -rf "/home/vagrant/.vim/bundle/Vundle.vim" 
fi
if [ -f "/home/vagrant/.vimrc" ]; then
  rm "/home/vagrant/.vimrc" 
fi
ln -s dotfiles/.vimrc /home/vagrant/.vimrc
