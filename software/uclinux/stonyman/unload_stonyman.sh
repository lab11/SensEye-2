#!/bin/sh

module="stonyman"
device="stonyman"


rmmod $module $* || exit 1

rm -f /dev/${device}[0-9]
