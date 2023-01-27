#!/bin/bash

echo "Starting Steam"
bwrap --bind / / --dev-bind /dev /dev --bind /var/tmp/$USER-flatpak/.var $HOME/.var --bind /var/tmp/$USER-flatpak/flatpak $HOME/.local/share/flatpak bash -c 'flatpak run com.valvesoftware.Steam'
