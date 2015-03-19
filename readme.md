# SensEye-2
Low Power Real-Time Gaze Detection


## Installation
### A note on operating systems
My installation uses Windows for Libero and Linux for uCLinux compilation. 
Specifically, 64-bit Windows 7 and 32-bit Ubuntu 12.04. Other options may be
successful


### Libero SoC
Download libero from the following link:

    http://www.microsemi.com/products/fpga-soc/design-resources/design-software/libero-soc#downloads

(Currently on version 11.2 SP1, but it shouldn't matter)  
Register for free gold 1-year disk ID locked license, follow instructions in email  
Install service pack update  
If on Windows 8, you may need to disable driver signatures in order to install the FlashPro driver  
Note: Libero can be installed on linux, but has been found to be problematic


## Setup
### Git
Navigate to the smartfusion/ directory

Run the following commands:

    git -ls-files | tr '\n' ' ' | xargs git update-index --assume-unchanged
    git -ls-files hdl/ | tr '\n' ' ' | xargs git update-index --no-assume-unchanged
    git update-index --no-assume-unchanged constraint/senseye_constraints.pdc
    git update-index --no-assume-unchanged Emcraft_Firmware/u-boot.hex

(Note: these stop git from noticing changes in the libero files. If you want
to commit changes, you will need to --no-assume-unchanged all those files, and
then commit.)


### Libero Project
Open senseye.prjx (you will get errors: "Unable to find..."")

Double click TOPLEVEL in the Design Hierarchy area to open it in the main window

Double click MSS\_CORE3\_MSS\_0 to open it in a new tab  
Click the Generate Component button in the main window (yellow cylinder with gear). 

Go to TOPLEVEL tab  
Click the Generate Programming Data button in the Design Flow area (green arrow)

Project should build appropriately

Note: Ensure all of the MSS components are updated by clicking the Catalog tab then the "Download them now!" button (Libero should show the message "New cores are available"). Also ensure reset line into imager is inverted (in TOPLEVEL).


### uCLinux Build Environment
Open the Linux Cortex M User Manual available from emcraft's Smartfusion webpage  
Follow the directions in Section 4.1

The linux-cortexm-1.12.0/ folder should be extracted to the same location as the git repo  
(To get a new version of the cross-compiler, go to 
http://www.mentor.com/embedded-software/sourcery-tools/sourcery-codebench/editions/lite-edition/arm-uclinux.html
but you should probably stick with the one given by emcraft)  
Note: the cross compiler tools work for me on 64-bit fedora, but not in a shared folder. You may need to install ia32-libs or equivalent if you are on a 64-bit system

.bashrc will need to be updated to run the following:

    cd <linux install directory>
    . ACTIVATE.sh
    cd -


### TFTP Server
Follow instructions online to install a tftp server and enable it

Test that the server is working by running:

    touch <tftpboot directory>/foo
    tftp 127.0.0.1
    get foo
    quit

The get request should complete immediately without an issue

Open a serial connection at 115200 baud  
Find device ip address, from U-Boot:

    run flashboot
    udhcpc
    ifconfig
    reboot

Modify the environment variables on the smartfusion board, from U-Boot:

    setenv netmask 255.255.255.0
    setenv gatewayip <device ip address top 24 bits>.1
    setenv ipaddr <device ip address>
    setenv serverip <server ip address>
    setenv image senseye_proj.uImage
    saveenv
    run netboot


### NFS Server
Follow instructions online to install an nfs server and enable it

After the device has booted run
    
    mount -t nfs -o proto=tcp,nolock,port=2049 <server ip address>:/<server nfs folder> /mnt

A script to do this has been included as nfs.sh


### Load Stonyman
Run following commands on senseye version of uCLinux

    ./load_stonyman.sh
    ./senseye_serv

The Stonyman controller software should now be loaded and ready to begin reading in images.


### Setting up client
Download and install OpenCV
