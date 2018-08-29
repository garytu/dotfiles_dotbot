#!/usr/bin/env bash


set -e

[[ -d ~/.dotfiles/.repos ]] || mkdir ~/.dotfiles/.repos
[[ -d ~/.dotfiles/.repos/nerd-fonts ]] || git clone https://github.com/ryanoasis/nerd-fonts.git ~/.dotfiles/.repos/nerd-fonts

