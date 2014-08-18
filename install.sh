#!/bin/sh

# Clone Vundle
git clone git://github.com/gmarik/vundle.git bundle/vundle

# Install bundles
vim -u bundles.vim +PluginInstall +qall

# Symlink .vimrc and .gvimrc
[ -h ../.vimrc ] || ln -s .vim/.vimrc ../.vimrc
[ -h ../.gvimrc ] || ln -s .vim/.gvimrc ../.gvimrc
