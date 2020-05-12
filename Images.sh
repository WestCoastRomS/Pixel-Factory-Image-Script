#!/bin/bash

TERMINAL=$(tty)
HEIGHT=20
WIDTH=50
CHOICE_HEIGHT=6
BACKTITLE="OEM Pixel Images"
TITLE="Factory Image"
MENU="Which OEM Image are you looking For?:"

OPTIONS=(1 "Marlin"
         2 "Bonito"
         3 "Crosshatch"
         4 "Sargo"
         5 "Flame"
         6 "Coral")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >$TERMINAL)
               


clear
case $CHOICE in
        1)wget https://dl.google.com/dl/android/aosp/marlin-pq3a.190801.002-factory-13dbb265.zip 2>&1 | sed -u 's/.* \([0-9]\+%\)\ \+\([0-9.]\+.\) \(.*\)/\1\n# Downloading at \2\/s, ETA \3/' | zenity --progress --title="Downloading Marlin.."
            echo "You chose Marlin"
            ;;
        2)wget https://dl.google.com/dl/android/aosp/bonito-qq2a.200501.001.b2-factory-10a8e252.zip 2>&1 | sed -u 's/.* \([0-9]\+%\)\ \+\([0-9.]\+.\) \(.*\)/\1\n# Downloading at \2\/s, ETA \3/' | zenity --progress --title="Downloading Bonito..."
            echo "You chose Bonito"
            ;;
        3)wget https://dl.google.com/dl/android/aosp/crosshatch-qq2a.200501.001.b2-factory-81a2fe0d.zip 2>&1 | sed -u 's/.* \([0-9]\+%\)\ \+\([0-9.]\+.\) \(.*\)/\1\n# Downloading at \2\/s, ETA \3/' | zenity --progress --title="Downloading Crosshatch..."
            echo "You chose Crosshatch"

            ;;
        4)wget https://dl.google.com/dl/android/aosp/sargo-qq2a.200501.001.b2-factory-cc3250a0.zip 2>&1 | sed -u 's/.* \([0-9]\+%\)\ \+\([0-9.]\+.\) \(.*\)/\1\n# Downloading at \2\/s, ETA \3/' | zenity --progress --title="Downloading Sargo..."
            echo "You chose Sargo"
            ;;
        5)wget https://dl.google.com/dl/android/aosp/flame-qq2a.200501.001.b2-factory-6b360ec6.zip 2>&1 | sed -u 's/.* \([0-9]\+%\)\ \+\([0-9.]\+.\) \(.*\)/\1\n# Downloading at \2\/s, ETA \3/' | zenity --progress --title="Downloading Flame..."
            echo "you chose Flame"
            ;;
        6)wget https://dl.google.com/dl/android/aosp/coral-qq2a.200501.001.b2-factory-74a73da2.zip 2>&1 | sed -u 's/.* \([0-9]\+%\)\ \+\([0-9.]\+.\) \(.*\)/\1\n# Downloading at \2\/s, ETA \3/' | zenity --progress --title="Downloading Coral..."
            echo "You chose Coral"
            ;;



esac


