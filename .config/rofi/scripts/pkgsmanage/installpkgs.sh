#!/bin/bash

pacman -Slq | fzf --border --reverse --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S

notify-send "el paquete se instalo correctamente"
