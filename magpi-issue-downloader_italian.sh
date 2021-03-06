# italian


#!/bin/sh

# ------------------------------------------------------------------
# [Author] joergi77 - https://github.com/joergi77
#          downloader for all MagPi issues
#          they are downloadable for free under https://www.raspberrypi.org/magpi/issues/
#          or you can buy the paper issues under: http://swag.raspberrypi.org/collections/magpi
#          this script is under GNU GENERAL PUBLIC LICENSE 
# ------------------------------------------------------------------

VERSION=0.1.0
USAGE="Usage: sh magpi-issue-downloader_italian.sh"


if [ ! -d "italian_issues" ]; then
 mkdir italian_issues
fi


i=1
issues=3


while [ $i -le $issues ]
do
	if [ "$i" -lt 10 ]; then
		wget https://www.raspberrypi.org/magpi-issues/MagPi_Mini_Italian_0$i.pdf -P italian_issues/
		
	else
		wget https://www.raspberrypi.org/magpi-issues/MagPi_Mini_Italian_$i.pdf -P italian_issues/
	fi
	i=$(( i+1 ))
done


