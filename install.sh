#!/usr/bin/env bash

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CONFIG_DIR="$DOTFILES_DIR/config"

BAK_DIR="/home/$USER/.dotfile.bak"

if [ ! -d $BAK_DIR ]; then
	echo "Creating backup directory in $BAK_DIR"
	mkdir $BAK_DIR
fi

declare -a config_files=()
shopt -s dotglob
for file in "$CONFIG_DIR/*"
do
	config_files+=($file)
done
shopt -u dotglob

for config_file in "${config_files[@]}"
do
	# Extract the canonical name of the file
	IFS="/" read -r -a paths <<< $config_file
	NAME="${paths[-1]}"

	# If file exists in $HOME, copy it to $BAK_DIR
	if [ -f $HOME/$NAME ]; then
		cp $HOME/$NAME "$BAK_DIR/${NAME}.bak"
	fi

	ln -sfv $config_file $HOME/$NAME
done

echo "done!"
