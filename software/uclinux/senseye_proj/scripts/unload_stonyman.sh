#!/bin/sh

module="stonyman_2"
device="stonyman"


rmmod $module $* || exit 1

rm -f /dev/${device}[0-1]
