#!/usr/bin/env bash

declare -a config_files=()

shopt -s dotglob
for file in "$DOTFILES_DIR/config"/*
do
	config_files+=($file)
done
shopt -u dotglob

# Copy configuration files
for config_file in "${config_files[@]}"
do
	IFS='/' read -r -a paths <<< $config_file
	name="${paths[-1]}"
	
	cp $config_file $HOME/$name
done

# Copy themes
declare -a themes=()

for file in "$DOTFILES_DIR/zsh-themes"/*
do
	themes+=($file)
done

for theme in "${themes[@]}"
do
	cp $theme $HOME/.oh-my-zsh/themes
done
