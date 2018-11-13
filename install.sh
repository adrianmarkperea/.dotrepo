#!/usr/bin/env bash

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Make scripts available
PATH="$DOTFILES_DIR/bin:$DOTFILES_DIR/scripts::$PATH"

# Install stuff
echo "Installing various tools"
tools.sh
echo "Configuring vim"
vim.sh
echo "Getting zsh and oh-my-zsh"
zsh.sh
echo "Enabling touch gestures"
gestures.sh
echo "Now installing nvm and node"
node.sh

# Symlink configuration files
echo "Linking configuration files"
configure.sh

echo "Installation finished. Happy coding :)"
