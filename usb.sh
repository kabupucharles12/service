#!/bin/bash


exec > /tmp/insert_log 2>&1

#declaration de variables

chemin_periph=/dev/sdb1

music= mplayer /Music/fally.mp3

nb = 1


if [[ $point_montage || -e $chemin_periph ]]
then
        echo "$(date): cle inseree!"

        # Creation  du chemin pour le  peripherique

        sudo mkdir/media/usb_drive
        
        # mount le peripheriques

        point_montage=$(mount| awk -v chemin_periph="$chemin_periph" 'sdb1==chemin_periph{printf$3'})

        # jouer un sons

        echo "$music"

        #Pour arriver d'ecrire dans ce fichier

        sudo touch/media/usb_drive/armand.txt

        # peripherique

        point_demontage=$(umount| awk -v chemin_periph="$chemin_periph" 'sdb1==chemin_periph{printf$3'})

        echo "$music"
fi

[[ $point_montage ]] || {echo"non monter de la cle" ; exit1}


echo " monte la cle  sur $point_montage"
