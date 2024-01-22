#!/bin/bash

selected=$(ls $HOME/.config/rofi/scripts/pkgsmanage | rofi -dmenu -p "Que queres hacer??" -theme gruvbox-dark)

if [$selected == ""]
then
	exit 0
else
	kitty $HOME/.config/rofi/scripts/pkgsmanage/$selected
fi
