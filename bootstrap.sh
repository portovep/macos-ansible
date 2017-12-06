#!/bin/bash

function log {
    printf "\n\e[36m----------------->  $1 \n\e[0m"
}

log "Checking for sudo access"
sudo -v 

log "Installing pip using easy_install"
sudo easy_install pip

log "Installing Ansible using pip"
sudo pip install ansible

log "Installing Command Line Tools"
sudo xcode-select --install

log "Installing Homebrew avoiding manual intervention"
TRAVIS=true /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

log "Adding cask as Homebrew tap"
brew tap caskroom/cask
