#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Usage: $0 [HELP]"
    exit 1
fi

if [ "$1" = "help" ] || [ "$1" = "HELP" ]; then
    cat help.txt
    echo
fi

if [ "$1" = "." ]; then
    touch "test.c"
    echo "Fichier 'test.c' créé dans le répertoire courant : $PWD"
fi
