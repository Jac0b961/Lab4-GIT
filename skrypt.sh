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
    *)
        echo "Opcja nieznana. Uzyj --date lub --logs"
        ;;
esac
