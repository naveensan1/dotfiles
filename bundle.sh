#!/bin/bash
cd ~/.vim/bundle
git clone https://github.com/tpope/vim-fugitive.git
vim -u NONE -c "helptags vim-fugitive/doc" -c q
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
