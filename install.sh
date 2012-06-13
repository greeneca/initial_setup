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
ln -fs `pwd`/vimrc ~/.vimrc

# link .gitconfig
ln -fs `pwd`/git.conf ~/.gitconfig

# setup ssh dir
mkdir ~/.ssh

# link ssh config
ln -fs `pwd`/ssh.conf ~/.ssh/config

# link .tmux.config
ln -fs `pwd`/tmux.conf ~/.tmux.config

# add tmx
ln -fs `pwd`/tmx /usr/bin/tmx

#get submodules
git submodule init
git submodule update

#link oh-my-zsh
ln -fs `pwd`/oh-my-zsh ~/.oh-my-zsh

# link .zshrc
ln -fs `pwd`/oh-my-zsh/templates/zshrc ~/.zshrc

# TODO fork tmux-mem-cpu-load

# install tmux-mem-cpu-load
cd tmux-mem-cpu-load
cmake .
make
sudo make install
cd ..

