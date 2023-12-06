#!/bin/bash

# Définition du chemin de destination
destination="/mnt/c/Users/Alexis/Desktop"

if [ $# -eq 0 ]; then
    echo "Usage: $0 <fichier1> [fichier2 ... fichierN]"
    exit 1
fi

for file in "$@"; do
    if [ -f "$file" ]; then
        echo "Déplacement de '$file' vers '$destination'"
        mv "$file" "$destination"
    else
        echo "'$file' n'est pas un fichier valide."
    fi
done
