#!/usr/bin/env bash

# Install vim
if ! is-executable vim; then
	sudo apt install vim;
fi

# TODO: Install package manager
curl -fLo /home/$USER/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
