#!/usr/bin/env bash

set -e # fail on error
set -u # error on undefined variables

echo "Starting .dotfiles install"

BASE=$( dirname -- "$( readlink -f -- "$0"; )"; )""

ln -sf $BASE/bash/.bashrc ~/.bashrc

echo "Finishing .dotfiles install"
