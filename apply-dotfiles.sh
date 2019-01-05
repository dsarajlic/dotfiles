#!/usr/bin/env bash

################################################################################
#
# Shell script to copy configuration files from the current
# Google Drive to to .
#
################################################################################

# Exit as soon as a command fails
# set -e

# Accessing an empty variable will yield an error
set -u

# Detect OS (OS X, Linux or Windows)
# As will be necessary for future features

if [ "$(uname)" = "Darwin" ]; then
    echo "Detected system: OS X"

    OS="osx"

    ST_DIR="$HOME/Library/Application Support/Sublime Text 3/Packages/User/"
elif [ "$(expr substr $(uname -s) 1 5)" = "Linux" ]; then
    echo "Detected system: Linux"

    OS="linux"

    ST_DIR="$HOME/.config/sublime-text-3/Packages/User/"
elif [ "$(expr substr $(uname -s) 1 10)" = "MINGW32_NT" ]; then
    echo "Detected system: Windows"

    OS="win"

    ST_DIR="$HOME/AppData/Roaming/Sublime Text 3/Packages/User/"
    NPM_DIR="$HOME/AppData/Roaming/npm/node_modules/npm/"
fi

# Requires .bash_profile has ENV variables set:
# export HOME="/Users/dsar0002"
# export GOOGLE_DRIVE_HOME="$HOME/Google\ Drive/dotfiles/*"
ln -s $GOOGLE_DRIVE_HOME $HOME

echo "Completed."
