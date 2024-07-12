#!/bin/bash

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
        echo "--date          Wyswietla dzisiejsza data"
        echo "--logs [NUM]    Tworzy NUM plikow logx.txt (domyslnie 100)"
        echo "--init          Klonuje repozytorium"
        echo "--error [NUM]   Tworzy NUM plikow errorx/errorx.txt (domyslnie 100)"
        ;;
    --init)
        git clone https://github.com/Jac0b961/Lab4-GIT.git
        ;;
    --error)
        num=${2:-100}
        mkdir -p error
        for i in $(seq 1 $num); do
            echo "error$i.txt created by skrypt.sh on $(date)" > error/error$i.txt
        done
        ;;
    *)
        echo "Opcja nieznana. Uzyj --help, aby zobaczyc dostepne opcje"
        ;;
esac
