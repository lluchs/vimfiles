#!/bin/sh

# Clone Vundle
git clone git://github.com/gmarik/vundle.git bundle/vundle

# Install bundles
vim -u bundles.vim +BundleInstall +q
