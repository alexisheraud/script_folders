#!/bin/bash

# Définition du chemin de destination
destination="/mnt/c/Users/Alexis/Desktop"

if [ $# -eq 0 ]; then
    echo "Usage: $0 <fichier1> [fichier2 ... fichierN]"
    exit 1
fi

for file in "$@"; do
    if [ -e "$file" ]; then
        if [ -f "$file" ]; then
            echo "Déplacement du fichier '$file' vers '$destination'"
            mv "$file" "$destination"
        elif [ -d "$file" ]; then
            echo "Déplacement du dossier '$file' vers '$destination'"
            mv "$file" "$destination"
        else
            echo "'$file' n'est ni un fichier ni un dossier valide."
        fi
    else
        echo "'$file' n'existe pas."
    fi
done
