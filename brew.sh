#!/usr/bin/env bash

# Like the other install script, this is from Mathias Bynens with slight modifications by me
# https://github.com/mathiasbynens/dotfiles/blob/bb6c76e410bf7b1693edfe60239461fc9205ec02/brew.sh

echo "Installing brew formulae..."

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
brew install bash
brew install bash-completion2
brew install zsh
brew install tree

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# To make tmux "set-option -g default-command "reattach-to-user-namespace -l
# zsh" work
brew install reattach-to-user-namespace

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# This is needed for fzf to know how to ignore files listed in .gitignore
# and know how to show hidden files
# brew install fzf
# brew install ag

# This is needed for python support on Neovim for YouCompleteMe
# Please see https://github.com/neovim/neovim/issues/1315
brew install vim --with-override-system-vi
brew install python3
pip3 install --user --upgrade neovim

# Install `wget` and `curl`
brew install wget
brew install curl

# Install more recent versions of some macOS tools.
brew install neovim
brew install grep
brew install ack
brew install openssh

# Install other useful binaries.
brew install git
brew install htop
brew install php
brew install yarn
brew install tmux
brew install jq
brew install imagemagick

# eg. ssh-copy-id user@hostname.example.com
brew install ssh-copy-id

# JS Specific
brew install node
brew install nvm
brew install watchman

# -------------------------------
# Casks
# -------------------------------
brew install cask

# Dev utilities
# brew cask install tunnelblick
brew cask install mamp
brew cask install keka
brew cask install iterm2
brew cask install genymotion
brew cask install spectacle
brew cask install vlc
brew cask install keepassxc

# Backup
brew cask install google-backup-and-sync

# Browsers
brew cask install google-chrome
brew cask install firefox

brew cask install slack

# Vim and friends
brew install vim
brew install neovim
nvim +PlugClean! +qall
nvim +silent +PlugInstall +qall
python3 ~/.config/nvim/plugged/YouCompleteMe/install.py

# Docker
brew install docker
brew install docker-compose
brew install docker-machine

# Virtualbox
brew cask install virtualbox

# Remove outdated versions from the cellar.
brew cleanup
