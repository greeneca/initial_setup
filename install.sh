#! /bin/bash

# install needed programs
sudo apt-get install vim ssh zsh tmux cmake

# set zsh as default login shell
sudo chsh -s /usr/bin/zsh greeneca

# setup vim dirs
mkdir ~/.vim
mkdir ~/.vim/backup
mkdir ~/.vim/tmp

# link .vimrc
ln -s `pwd`/vimrc ~/.vimrc

# link .gitconfig
ln -s `pwd`/git.conf ~/.gitconfig

# setup ssh dir
mkdir ~/.ssh

# link ssh config
ln -s `pwd`/ssh.conf ~/.ssh/config

# link .tmux.config
ln -s `pwd`/tmux.conf ~/.tmux.config

#get submodules
git submodule init
git submodule update

