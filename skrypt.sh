#!/bin/bash

case "$1" in
    --date)
        date
        ;;
    *)
        echo "Opcja nieznana. Uzyj --date"
        ;;
esac
