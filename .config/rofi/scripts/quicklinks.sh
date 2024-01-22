#!/bin/bash

# Configuración de opciones para Rofi
rofi_options="-dmenu -i -p Enlaces Web -theme gruvbox-dark"

# Lista de opciones para mostrar en Rofi
options=("󰗃  Youtube" "  Whatsapp" "  Instagram" "󰫑  Mastodon" "  Reddit" "󰓓  Steam" "  Github")

# Concatenar las opciones en un formato que Rofi pueda entender
options_str=$(printf "%s\n" "${options[@]}")

# Ejecutar Rofi con las opciones y obtener la selección del usuario
selected_option=$(echo -e "$options_str" | rofi $rofi_options)

# Realizar acciones según la opción seleccionada
case "$selected_option" in
	"󰗃  Youtube")
        # Acción para la opción Reproductor de música
		firefox https://youtube.com/
        ;;
    "  Whatsapp")
        # Acción para la opción Terminal
		firefox https://web.whatsapp.com/
        ;;
    "  Instagram")
        # Acción para la opción Explorador de archivos
		firefox https://instagram.com
        ;;
    "󰫑  Mastodon")
        # Acción para la opción Buscar archivos
		firefox https://mastodon.social/explore
        ;;
    "  Reddit")
        # Acción para la opción Configuración del sistema
		firefox https://www.reddit.com/
        ;;
    *)
        # Acción por defecto (si se presiona Escape u otra tecla)
        echo "Ninguna opción seleccionada"
        ;;
esac

