#!/bin/bash


if [ $# -lt 1 ]; then
    echo -e "\e[91mUsage: $0 [HELP]"
    echo -e "\e[0m"
    exit 1
fi

if [ "$1" = "help" ] || [ "$1" = "HELP" ]; then
    cat help.txt
    echo
fi

if [ $# -eq 1 ] && [ "$1" = "." ]; then
    main_file="main.c"

    echo "#include <stdio.h>

int main(void) {
    printf(\"Hello, World!\\n\");
    return 0;
}" > "$main_file"

    echo "Fichier '$main_file' créé dans le répertoire courant : $PWD"

    make_file="makefile"

echo "test" > "$make_file"

    echo "Fichier '$make_file' créé dans le répertoire courant : $PWD"

elif [ $# -eq 1 ] && [ "$1" != "help" ] && [ "$1" != "HELP" ]; then
    echo -e "\e[91mErreur : Argument incorrect. Utilisation : $0 [.]"
    echo -e "\e[0m"  # Réinitialisation de la couleur
elif [ $# -eq 0 ]; then
    echo -e "\e[91mErreur : Aucun argument spécifié. Utilisation : $0 [.]"
    echo -e "\e[0m"  # Réinitialisation de la couleur
fi