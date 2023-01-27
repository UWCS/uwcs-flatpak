#!/bin/bash

echo "Starting"
bwrap --bind / / --dev-bind /dev /dev --bind $HOME/flatpak/.var $HOME/.var --bind $HOME/flatpak/flatpak $HOME/.local/share/flatpak -- "/usr/bin/bash"
