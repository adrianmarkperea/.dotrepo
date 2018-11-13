#!/usr/bin/env bash

# Install zsh
sudo apt install zsh

# Change default shell to zsh
chsh -s $(which zsh)

# Install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
