#!/usr/bin/env bash

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until this script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# iTerm 2                                                                     #
###############################################################################

# Use config in dotfiles folder for iTerm2 config
# defaults write com.googlecode.iterm2 PrefsCustomFolder -string "${HOME}/.dotfiles/apps/iterm2"

