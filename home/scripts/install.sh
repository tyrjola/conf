#!/bin/bash -ue

ln -s "${HOME}/github/conf/home/.bash_aliases" "${HOME}/.bash_aliases"
ln -s "${HOME}/github/conf/home/.vimrc" "${HOME}/.vimrc"
ln -s "${HOME}/github/conf/home/.vim" "${HOME}/.vim"
ln -s "${HOME}/github/conf/home/.astylerc" "${HOME}/.astylerc"
ln -s "${HOME}/github/conf/home/.config/nvim" "${HOME}/.config/nvim"
ln -s "${HOME}/github/conf/home/.local/share/nvim/site" "${HOME}/.local/share/nvim/site"

curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -

sudo apt-get install -yy \
    vim \
    python-pip \
    gitk \
    build-essential \
    cmake \
    python-dev \
    python3-dev \
    nodejs \
    astyle \
    exuberant-ctags

sudo pip install --upgrade pycodestyle autopep8 docker-compose

cd "${HOME}/.vim/bundle"
git submodule update --init --recursive
