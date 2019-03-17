#!/usr/bin/env bash

# This install will install UI applications

echo "Installing applications through brew casks..."

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed casks
brew cask upgrade

# Time for some action
brew cask install slack
brew cask install firefox
brew cask install google-chrome
brew cask install iterm2
brew cask install docker
brew cask install dropbox
brew cask install google-backup-and-sync
brew cask install tunnelblick
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install mamp
brew cask install vlc
