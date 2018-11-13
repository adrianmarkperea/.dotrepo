#!/user/bin/env bash

# This enables multitouch gestures
# Default configuration is as follows (three fingers):
#   - Swipe up:    Workspace Up
#   - Swide down:  Workspace Down 
#   - Swipe left:  Browser Back
#   - Swide right: Browser Forward 

# Add user to the input group
sudo gpasswd -a $USER input

# Install dependencies
sudo apt install -y xdotool wmctrl libinput-tools

# Install the software
git clone https://github.com/bulletmark/libinput-gestures.git /home/$USER/.gestures
cd /home/$USER/.gestures
sudo make install # Assumes `make` is already installed

# Starts the program and includes it in startup
libinput-gestures-setup autostart
libinput-gestures-setup start
