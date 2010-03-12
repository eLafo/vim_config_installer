#!/bin/bash
echo 'Installing required packages via apitude'
sudo aptitude install vim vim-rails vim-ruby ack curl ctags git-core

echo 'Installing required gems'
sudo gem sources -a http://gems.github.com
sudo gem install jamis-fuzzy_file_finder
sudo gem install ruby-debug-ide

echo 'making backups of .vimrc and .vim'
cp ~/.vimrc ~/.vimrc.old
cp -r ~/.vim ~/.vim.old

echo 'Installing rgo configuration'
cd

git clone git://github.com/rgo/vim-rails.config.git .vim
ln -s .vim/vimrc .vimrc

