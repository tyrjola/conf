#!/bin/bash -ue

ln -s "${HOME}/github/conf/home/.bash_aliases" "${HOME}/.bash_aliases"
ln -s "${HOME}/github/conf/home/.vimrc" "${HOME}/.vimrc"
ln -s "${HOME}/github/conf/home/.vim" "${HOME}/.vim"
ln -s "${HOME}/github/conf/home/.astylerc" "${HOME}/.astylerc"

sudo apt-get install -yy \
    build-essential \
    cmake \
    python-dev \
    python3-dev \
    astyle \
    npm \
    exuberant-ctags

sudo pip install --upgrade pycodestyle autopep8 docker-compose

cd "${HOME}/.vim/bundle"
git submodule update --init --recursive
cd "${HOME}/.vim/bundle/YouCompleteMe"
./install.py --js-completer
