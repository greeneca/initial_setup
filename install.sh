#! /bin/bash

# install needed programs
sudo apt-get install vim ssh zsh tmux cmake tilda gcc g++ make aptitude

# set zsh as default login shell
sudo chsh -s /usr/bin/zsh greeneca

# setup vim
ln -fs `pwd`/vim/ ~/.vim/

# link .vimrc
ln -fs `pwd`/vimrc ~/.vimrc

# link .gitconfig
ln -fs `pwd`/git.conf ~/.gitconfig

# setup ssh dir
mkdir ~/.ssh

# link ssh config
ln -fs `pwd`/ssh.conf ~/.ssh/config

# link .tmux.config
ln -fs `pwd`/tmux.conf ~/.tmux.conf

# add tmx
sudo ln -fs `pwd`/tmx /usr/bin/tmx

#get submodules
git submodule init
git submodule update

#link oh-my-zsh
rm ~/.oh-my-zsh
ln -fs `pwd`/oh-my-zsh ~/.oh-my-zsh

# link .zshrc
ln -fs `pwd`/oh-my-zsh/templates/zshrc ~/.zshrc

#link custom_scripts
ln -fs `pwd`/custom_scripts ~/.custom_scripts

# TODO fork tmux-mem-cpu-load

# install tmux-mem-cpu-load
cd tmux-mem-cpu-load
git checkout -b install origin/install
cmake .
make
sudo make install
cd ..

