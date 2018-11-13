#!/usr/bin/env bash

# Install make
if ! is-executable make; then
	echo "now installing make"
	sudo apt install -y make
else
	echo "'make' command found. skipping."
fi

# Install curl
if ! is-executable curl; then
	echo "now installing curl"
	sudo apt install -y curl
else
	echo "'curl' command found. skipping."
fi


