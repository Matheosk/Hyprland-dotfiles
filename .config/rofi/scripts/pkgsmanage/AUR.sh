#!/bin/bash

yay -Slq | fzf --border --reverse --multi --preview 'yay -Si {1}' | xargs -ro yay -S

notify-send "el paquete se instalo correctamente"
