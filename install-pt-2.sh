#!/bin/sh

echo "installing zsh"
[ ! -d "$HOME/.oh-my-zsh/" ] && sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

