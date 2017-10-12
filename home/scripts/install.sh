#!/bin/bash -ue

sudo apt-get install -yy build-essential cmake python-dev python3-dev

pushd "${HOME}/.vim/bundle/YouCompleteMe"
git submodule update --init --recursive
./install.py --js-completer
popd
