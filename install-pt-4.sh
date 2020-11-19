#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m'    # No Color

echo "installing nvm and node"
[ ! -d "$HOME/.nvm/" ] && wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash


echo -e "run -> ${GREEN}nvm install v14.15.1${NC}"


zsh

