#!/usr/bin/env bash

set -e # fail on error
set -u # error on undefined variables

echo "Starting .dotfiles install"

BASE=$( dirname -- "$( readlink -f -- "$0"; )"; )""


ln -sf $BASE/bash/.bashrc ~/.bashrc

# install go version manager
curl -sL -o ~/bin/gvm https://github.com/andrewkroh/gvm/releases/download/v0.5.2/gvm-linux-amd64
chmod +x ~/bin/gvm

. ~/.bashrc

echo "Finishing .dotfiles install"
