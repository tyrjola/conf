#!/bin/bash -ue

ln -s "${HOME}/github/conf/home/.bashrc.user" "${HOME}/.bashrc.user"
ln -s "${HOME}/github/conf/home/.bash_aliases" "${HOME}/.bash_aliases"
ln -s "${HOME}/github/conf/home/.vimrc" "${HOME}/.vimrc"
ln -s "${HOME}/github/conf/home/.vim" "${HOME}/.vim"
ln -s "${HOME}/github/conf/home/.npmrc" "${HOME}/.npmrc"
ln -s "${HOME}/github/conf/home/.astylerc" "${HOME}/.astylerc"
ln -s "${HOME}/github/conf/home/.config/nvim" "${HOME}/.config/nvim"
ln -s "${HOME}/github/conf/home/.local/share/nvim/site" "${HOME}/.local/share/nvim/site"

curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -

sudo apt-get install -yy \
    vim \
    python-pip \
    python-pip3 \
    gitk \
    build-essential \
    cmake \
    python-dev \
    python3-dev \
    nodejs \
    astyle \
    exuberant-ctags

pip install --user --upgrade pycodestyle autopep8 flake8 neovim docker-compose aws awscli boto boto3 httpie jedi
pip3 install --user --upgrade pycodestyle autopep8 flake8 neovim docker-compose aws awscli boto boto3 httpie jedi

mkdir "${HOME}/.npm-global"
npm config set prefix '~/.npm-global'
npm install -g eslint flow-bin
