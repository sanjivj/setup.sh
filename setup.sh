#!/bin/sh

# This script installs vim, vim plugins, .vimrc, .bashrc and more!

echo "Hello!"

# Install latest version of nodejs
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install latest version of npm - the nodejs installation may give you an older
# version of npm.
sudo npm install npm@latest -g

# Install latest version of vim, with python and ruby support.
sudo apt-get remove --purge vim vim-runtime vim-gnome vim-tiny vim-gui-common
 
sudo apt-get install liblua5.1-dev luajit libluajit-5.1 python-dev ruby-dev libperl-dev libncurses5-dev libatk1.0-dev libx11-dev libxpm-dev libxt-dev

# Install latest version of git.
apt-get install git # may not be latest

# Install latest version of 'ack-grep' and rename it 'ack'.
sudo apt-get install ack-grep 
sudo dpkg-divert --local --divert /usr/bin/ack --rename --add /usr/bin/ack-grep

