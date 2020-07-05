#!/system/bin/sh

# This script checks the current brightness
# and offsets the values. It could surely 
# be made more robust. Currently un-tested 
# on Oxygen OS.

BRIGHTNESS_FILE=/sys/class/backlight/panel0-backlight/brightness

BRIGHTNESS=$(cat ${BRIGHTNESS_FILE})

#echo $BRIGHTNESS

if [[ ${BRIGHTNESS} == 4 ]]; then

  echo 1 > ${BRIGHTNESS_FILE}

elif [[ ${BRIGHTNESS} == 8 ]]; then

  echo 2 > ${BRIGHTNESS_FILE}

elif [[ ${BRIGHTNESS} == 12 ]]; then

  echo 5 > ${BRIGHTNESS_FILE}

fi

exit 0
