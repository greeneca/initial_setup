#! /bin/bash

# install needed programs
sudo apt-get install vim git ssh zsh tmux

# setup vim dirs
mkdir ~/.vim
mkdir ~/.vim/backup
mkdir ~/.vim/tmp

# move .vimrc
ln -s vimrc ~/.vimrc

# move .gitconfig
ln -s git.conf ~/.gitconfig

# setup ssh dir
mkdir ~/.ssh

# move ssh config
ln -s ssh.conf ~/.ssh/config

# get oh-my-zsh

# move .zshrc

# move .tmux.config
ln -s tmux.conf ~/.tmux.config
