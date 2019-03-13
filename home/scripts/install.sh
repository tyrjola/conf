#!/bin/bash -ue

ln -s "${HOME}/github/conf/home/.bashrc.user" "${HOME}/.bashrc.user"
ln -s "${HOME}/github/conf/home/.bash_aliases" "${HOME}/.bash_aliases"
ln -s "${HOME}/github/conf/home/.vimrc" "${HOME}/.vimrc"
ln -s "${HOME}/github/conf/home/.ideavimrc" "${HOME}/.ideavimrc"
ln -s "${HOME}/github/conf/home/.vim" "${HOME}/.vim"
ln -s "${HOME}/github/conf/home/.npmrc" "${HOME}/.npmrc"
ln -s "${HOME}/github/conf/home/.astylerc" "${HOME}/.astylerc"
ln -s "${HOME}/github/conf/home/.config/nvim" "${HOME}/.config/nvim"
ln -s "${HOME}/github/conf/home/.config/nvim/site" "${HOME}/.local/share/nvim/site"
ln -s "${HOME}/github/conf/home/.config/Code/User/keybindings.json" "${HOME}/.config/Code/User/keybindings.json"
ln -s "${HOME}/github/conf/home/.config/Code/User/settings.json" "${HOME}/.config/Code/User/settings.json"

curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -

sudo apt-get install -yy \
    vim \
    python-pip3 \
    python3-dev

pip3 install --user --upgrade pycodestyle autopep8 flake8 neovim docker-compose awscli httpie jedi

mkdir "${HOME}/.npm-global"
npm config set prefix '~/.npm-global'
