#!/bin/bash -ue

sudo apt-get install -yy build-essential cmake python-dev python3-dev

cd "${HOME}/.vim/bundle"
git submodule update --init --recursive
cd "${HOME}/.vim/bundle/YouCompleteMe"
./install.py --js-completer

ln -s "${HOME}/github/conf/home/.vimrc" "${HOME}/.vimrc"
ln -s "${HOME}/github/conf/home/.vim" "${HOME}/.vim"
