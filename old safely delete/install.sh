#!/bin/bash

echo "Creating flatpak directories..."
mkdir -p $HOME/flatpak/flatpak
mkdir -p $HOME/flatpak/.var
mkdir -p $HOME/flatpak/Games

echo "Mounting..."
bwrap --bind / / --dev-bind /dev /dev --bind $HOME/flatpak/.var $HOME/.var --bind $HOME/flatpak/flatpak $HOME/.local/share/flatpak -- "$HOME/scripts/bwrap-install.sh"
