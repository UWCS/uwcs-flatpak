#!/bin/bash

echo "Starting Lutris"
bwrap --bind / / --dev-bind /dev /dev --bind /var/tmp/$USER-flatpak/.var $HOME/.var --bind /var/tmp/$USER-flatpak/flatpak $HOME/.local/share/flatpak --bind /var/tmp/$USER-flatpak/Games $HOME/Games bash -c 'flatpak run net.lutris.Lutris'

