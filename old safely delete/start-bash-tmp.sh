#!/bin/bash

echo "Starting"
bwrap --bind / / --dev-bind /dev /dev --bind /var/tmp/$USER-flatpak/.var $HOME/.var --bind /var/tmp/$USER-flatpak/flatpak $HOME/.local/share/flatpak -- "/usr/bin/bash"
