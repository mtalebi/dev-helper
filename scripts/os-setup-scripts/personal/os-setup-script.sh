#!/usr/bin/env bash

# Setup script for setting up a new macos machine
echo "Starting setup"

# install xcode CLI
if test ! $(which xcode-select); then
	echo "Installing xcode..."
	xcode-select —-install
fi

# Check for Homebrew to be present, install if it's missing
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

brew bundle