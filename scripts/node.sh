#/usr/env/bin zsh

# Install the node version manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | zsh

export NVM_DIR=/home/aperea/.nvm
[ -s /home/aperea/.nvm/nvm.sh ] && \. /home/aperea/.nvm/nvm.sh  # This loads nvm
[ -s /home/aperea/.nvm/bash_completion ] && \. /home/aperea/.nvm/bash_completion  # This loads nvm bash_completion

nvm install node # installs the latest version of node
