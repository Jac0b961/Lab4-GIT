#!/bin/bash

case "$1" in
    --date)
        date
        ;;
    --logs)
        num=${2:-100}
        for i in $(seq 1 $num); do
            echo "log$i.txt created by skrypt.sh on $(date)" > log$i.txt
        done
        ;;
    --help)
        echo "Dostepne opcje:"
        echo "--date          Wyswietla dzisiejsza date"
        echo "--logs [NUM]    Tworzy NUM plikow logx.txt (domyslnie 100)"
        ;;
    *)
        echo "Opcja nieznana. Usyj --help, aby zobaczys dostspne opcje"
        ;;
esac

