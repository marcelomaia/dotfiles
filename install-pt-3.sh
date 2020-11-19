#!/bin/sh

echo "copying config files"
cp ./zshrc ~/.zshrc
cp ./p10k.zsh ~/.p10k.zsh

echo "installing powerlevel10k"
[ ! -d "$HOME/.oh-my-zsh/custom/themes/powerlevel10k" ]  && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k

echo "installing alias-plugin"
[ ! -d "$HOME/.oh-my-zsh/custom/plugins/alias-tips" ]  && git clone --depth=1 https://github.com/djui/alias-tips.git $HOME/.oh-my-zsh/custom/plugins/alias-tips

zsh
