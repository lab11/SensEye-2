#!/bin/sh

numcams=2

module="stonyman_2"
device="stonyman"
mode="0664"


NUM_CAMS_MIN=1
NUM_CAMS_MAX=4
if [ $numcams -lt $NUM_CAMS_MIN ] || [ $numcams -gt $NUM_CAMS_MAX ]; then
   echo "invalid configuration: $numcams cameras configured"
   echo "invalid configuration: number of cameras must be between $NUM_CAMS_MIN and $NUM_CAMS_MAX"
   exit 1
fi

insmod $module.ko $* || exit 1

# can't figure out a workable for loop in hush shell
if [ $numcams -ge 1 ]; then
   rm -f /dev/${device}0
fi
if [ $numcams -ge 2 ]; then
   rm -f /dev/${device}1
fi
if [ $numcams -ge 3 ]; then
   rm -f /dev/${device}2
fi
if [ $numcams -ge 4 ]; then
   rm -f /dev/${device}3
fi


#tmp=$(cat /proc/devices|grep -i stonyman);
#major=${tmp%% *};
major=254

# can't figure out a workable for loop in hush shell
if [ $numcams -ge 1 ]; then
   mknod /dev/${device}0 c $major 0
   chmod $mode /dev/${device}0
fi
if [ $numcams -ge 2 ]; then
   mknod /dev/${device}1 c $major 1
   chmod $mode /dev/${device}1
fi
if [ $numcams -ge 3 ]; then
   mknod /dev/${device}2 c $major 2
   chmod $mode /dev/${device}2
fi
if [ $numcams -ge 4 ]; then
   mknod /dev/${device}3 c $major 3
   chmod $mode /dev/${device}3
fi
