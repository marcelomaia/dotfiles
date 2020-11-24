#!/usr/bin/env bash
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
echo ". $HOME/.asdf/asdf.sh" >> ~/.zshrc
zsh
sudo apt install libodbc1 unixodbc-dev unzip
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
sudo apt-get -y install build-essential autoconf m4 libncurses5-dev libwxgtk3.0-gtk3-dev libgl1-mesa-dev libglu1-mesa-dev libpng-dev libssh-dev  xsltproc fop libxml2-utils libncurses-dev openjdk-11-jdk

asdf install erlang 23.1
asdf global erlang 23.1
asdf install elixir 1.11-otp-23
