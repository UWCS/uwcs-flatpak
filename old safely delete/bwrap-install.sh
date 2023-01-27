#!/bin/bash

echo "Adding Flathub repository..."
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo --user

echo "Installing Steam..."
flatpak install com.valvesoftware.Steam/x86_64/stable -y --user
flatpak install org.polymc.PolyMC/x86_64/stable -y --user
# --- ProtonUP ---
#flatpak install net.davidotek.pupgui2 -y --user
flatpak install runtime/com.valvesoftware.Steam.CompatibilityTool.Proton-GE/x86_64/stable -y --user
flatpak install lutris -y --user
flatpak install app/org.mozilla.firefox/x86_64/stable -y --user
flatpak install org.gnome.baobab -y --user
