#!/usr/bin/env bash

set -e # fail on error
set -u # error on undefined variables

echo "Starting .dotfiles install"

BASE=$( dirname -- "$( readlink -f -- "$0"; )"; )""


ln -sf $BASE/bash/.bashrc ~/.bashrc

# --- install go version manager
curl -sSL "https://github.com/drewgonzales360/goenv/releases/download/v0.3.2/goenv-$(uname | tr '[:upper:]' '[:lower:]')-$(uname -m | sed 's/x86_64/amd64/')-v0.3.2.tar.gz" | sudo tar -xzv -C /usr/local/bin
# --- install go version manager

# --- install direnv
sudo apt-get install direnv
# --- install direnv


. ~/.bashrc

echo "Finishing .dotfiles install"
