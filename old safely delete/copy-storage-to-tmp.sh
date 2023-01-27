#!/bin/bash

update () {
	notify-send "Updating Flatpak Apps..."
	rm -rf /var/tmp/$USER-flatpak
	cp -r $HOME/flatpak /var/tmp/$USER-flatpak
	notify-send "Updated Flatpak Apps!"
	exit
}

clear-data () {
	notify-send "Clearing data..."
	rm -rf /var/tmp/$USER-flatpak/.var
	cp -r $HOME/flatpak/.var /var/tmp/$USER-flatpak/.var
	notify-send "Cleared data!"
}

while getopts "f" flags; do
	case "$flags" in
		f)
			FORCE=1
			;;
	esac
done

if [ "$FORCE" == "1" ]; then
	update
fi

current_file="/var/tmp/$USER-flatpak/version"

if [ ! -f "$current_file" ]; then
	update
fi

current=$(< $current_file)
new=$(< $HOME/flatpak/version)

if (( new > current )); then
	update
fi

echo "Already up to date use -f to force update Flatpak!"
clear-data
