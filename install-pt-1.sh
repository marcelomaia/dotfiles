#!/usr/bin/env bash

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root"
    exit
fi

echo "update..."
apt update

echo "install packages..."
apt install \
    apt-transport-https \
    ca-certificates \
    cowsay \
    libwxgtk3.0-gtk3-dev \
    ctags \
    curl \
    figlet \
    fortune \
    fortunes-br \
    fzf \
    git \
    gnupg-agent \
    libncurses5 \
    libtinfo5 \
    neovim \
    python3-dev \
    python3-pip \
    ripgrep \
    ruby-dev \
    silversearcher-ag \
    software-properties-common \
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
    pre-commit \
    emoji-fzf

echo "ruby dependencies"
gem install tmuxinator


echo "Installing tmuxinator"
wget https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh -O /usr/local/share/zsh/site-functions/_tmuxinator


echo "Installing elixir-lang"
wget https://packages.erlang-solutions.com/erlang/debian/pool/esl-erlang_23.1-1~ubuntu~bionic_amd64.deb && sudo dpkg -i ./esl-erlang_23.1-1~ubuntu~bionic_amd64.deb

apt-get update
apt-get install esl-erlang
apt-get install elixir
apt-get install erlang-dev erlang-dialyzer erlang-base-hipe
