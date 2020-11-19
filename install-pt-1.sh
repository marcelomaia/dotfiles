#!/usr/bin/env bash

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root"
    exit
fi

echo "update..."
apt update

echo "install packages..."
apt install \
    cowsay \
    ctags \
    figlet \
    fortune \
    fortunes-br \
    fzf \
    git \
    neovim \
    python3-dev \
    python3-pip \
    ripgrep \
    ruby-dev \
    silversearcher-ag \
    taskwarrior \
    tmux \
    zsh

echo "install dotnet"
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb

apt install -y apt-transport-https
apt update
apt install -y dotnet-sdk-5.0
apt install -y dotnet-sdk-3.1

echo "install python dependencies"
pip3 install \
    docker-compose \
    pynvim \
    vim-vint \
    virtualenvwrapper \
    pre-commit

echo "ruby dependencies"
gem install tmuxinator


echo "Installing tmuxnator"
wget https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh -O /usr/local/share/zsh/site-functions/_tmuxinator
