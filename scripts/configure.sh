#!/usr/bin/env bash

# If the script is ran by itself
if [ -z "$DOTFILES_DIR" ]; then
	echo "Running standalone script"
	SCRIPTS_DIR="$HOME/.dotrepo/config"
else
	echo "Dotfiles dir found. Running as part of installer"
	SCRIPTS_DIR="$DOTFILES_DIR/config"
fi

# Declare backup dir
BAK_DIR="/home/aperea/.dotfile.bak"

# If backup directory does not exist, create it
if [ ! -d $BAK_DIR ]; then
	echo "Backup directory not found. Creating now"
	mkdir $BAK_DIR
fi

# Copy the script files into an array
declare -a config_files=()
shopt -s dotglob
for file in "$SCRIPTS_DIR/*"
do
	config_files+=($file)
done
shopt -u dotglob
# Copy configuration files
for config_file in "${config_files[@]}"
do
	# Extract the canonical name of the file
	IFS='/' read -r -a paths <<< $config_file
	NAME="${paths[-1]}"

	echo "Found config file $NAME"

	# If file exists in $HOME, copy it to $BAK_DIR
	if [ -f $HOME/$NAME ]; then
		# Copy file to bak dir
		cp $HOME/$NAME "$BAK_DIR/${NAME}.bak"
	fi
	
	# Sym link the config file
	# This allow any edits to the file to reflect
	# in the repository
	ln -sfv $config_file $HOME/$NAME
done
