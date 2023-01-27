#!/bin/bash

echo "Starting Firefox"
bwrap --bind / / --dev-bind /dev /dev --bind /var/tmp/$USER-flatpak/.var $HOME/.var --bind /var/tmp/$USER-flatpak/flatpak $HOME/.local/share/flatpak --bind /var/tmp/$USER-flatpak/Games $HOME/Games bash -c 'flatpak run org.mozilla.firefox'

