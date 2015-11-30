# SensEye-2
**Sight-Guided Search and Depth Detection**

Based on the original SensEye design by Russ Bielawaski:  [repo](https://github.com/downbeat/senseye) 


## Installation
### A note on operating systems
This installation uses Windows for Libero and Linux for uCLinux compilation. 
Specifically, 64-bit Windows 8 and 64-bit Ubuntu 14.04 LTS. Other options may be
successful


### Libero SoC
1. Download Libero from the following [link](http://www.microsemi.com/products/fpga-soc/design-resources/design-software/libero-soc#downloads).

2. Register for free gold 1-year disk ID locked license, follow instructions in email  

3. Install service pack update (if on Windows 8, you may need to disable driver signatures in order to install the FlashPro driver)

**Note**: Libero can be installed on Linux, but has been found to be problematic


## Setup
### Git
**Note**: this step not necessary if committing entire Libero project (current status).

Navigate to the `smartfusion/` directory

Run the following commands:

    git -ls-files | tr '\n' ' ' | xargs git update-index --assume-unchanged
    git -ls-files hdl/ | tr '\n' ' ' | xargs git update-index --no-assume-unchanged
    git update-index --no-assume-unchanged constraint/senseye_constraints.pdc
    git update-index --no-assume-unchanged Emcraft_Firmware/u-boot.hex

**Note**: these stop git from noticing changes in the libero files. If you want
to commit changes, you will need to --no-assume-unchanged all those files, and
then commit.


### Libero Project
1. Open `senseye.prjx` (you will get errors: "Unable to find..."")

2. Double click TOPLEVEL in the Design Hierarchy area to open it in the main window

3. Double click MSS\_CORE3\_MSS\_0 to open it in a new tab  
    1. Double click the ENVM block
    2. Right click the first client listed and select Modify Client.
    3. Change the location of the memory file to `your_SensEye-2_location\SensEye-2\software\smartfusion\Emcraft_Firmware\u-boot.hex`. 
    4. Click the Generate Component button in the main window (yellow cylinder with gear). 

4. Go to TOPLEVEL tab  
5. Click the Generate Programming Data button in the Design Flow area (green arrow)

Project should build appropriately.

**Note**: Ensure all of the MSS components are updated by clicking the Catalog tab then the `Download them now!` button (Libero should show the message `New cores are available`). Also ensure reset line into imager is inverted (in TOPLEVEL).


### uCLinux Build Environment
Open the Linux Cortex M User Manual available from Emcraft's SmartFusion webpage  
Follow the directions in Section 4.1

The `linux-cortexm-1.12.0/` folder should be extracted to the same location as the git repo  
(To get a new version of the cross-compiler, click [here](http://www.mentor.com/embedded-software/sourcery-tools/sourcery-codebench/editions/lite-edition/arm-uclinux.html), but you should probably stick with the one given by emcraft)  

`.bashrc` will need to be updated to run the following:

    cd <linux install directory>
    . ACTIVATE.sh
    cd -

**Note**: the cross compiler tools work for me on 64-bit fedora, but not in a shared folder. You may need to install ia32-libs or equivalent if you are on a 64-bit system

### TFTP Server
Follow instructions online to install a TFTP server and enable it.

Test that the server is working by running:

    touch <tftpboot directory>/foo
    tftp 127.0.0.1
    get foo
    quit

**Note**: sometimes it is necessary to run this with `sudo`. 

The get request should complete immediately without an issue

Open a serial connection at 115200 baud. An example of this is below (assuming it is `ttyUSB0`)
	
	screen /dev/ttyUSB0 115200  

**Note**: Sometimes it is necessary to run this with `sudo` . Also if there is only a blank screen press `Enter` a few times and if that doesn't work, press `Ctrl-C` to kill the current program and reboot.

Find device IP address, from U-Boot:

    run flashboot
    udhcpc
    ifconfig
    reboot

Modify the environment variables on the SmartFusion board, from U-Boot:

    setenv netmask 255.255.255.0
    setenv gatewayip <device ip address top 24 bits>.1
    setenv ipaddr <device ip address>
    setenv serverip <server ip address>
    setenv image senseye_proj.uImage
    saveenv
    run netboot


### NFS Server
Follow instructions online to install an NFS server and enable it

After the device has booted run
    
    mount -t nfs -o proto=tcp,nolock,port=2049 <server ip address>:/<server nfs folder> /mnt

A script to do this has been included as `nfs.sh`


### Load Stonyman
Navigate to the `SensEye-2/software/uclinux/senseye_proj/` directory and edit `makescript`

	cp senseye_proj.uImage <your tftpboot directory>

Then run
    
    ./makescript

This should redirect all compile messages to the `compile.log` file. Run following commands on device

    ./load_stonyman.sh
    ./senseye_serv

The Stonyman controller software should now be loaded and ready to begin reading in images.


### Setting up client
Download and install OpenCV. Ensure OpenCV installed in `/usr/local/include/`

Change address of SmartFusion board in `SensEye-2/software/client/senseye_client/senseye_client.c` to current IP address (found by running `printenv` on the SmartFusion board):

    #define INSIGHT_SERV_ADDR     ("141.212.11.133") 

Navigate to the `SensEye-2/software/client/senseye_client` directory and run. 
  
    ./makescript

This should redirect all compile messages to the file `compile.out`

**Note**: while `senseye_serv` is running on the SmartFusion it waits for a connection from the client which is created by running `senseye_client`, then images should appear on the screen if a Stonyman is connected correctly.


### Hardware Configuration
The hardware can be somewhat tricky to configure correctly. First, build the circuit specified in `hardware/schematics/stonyman_breakout.pdf` . Ensure to tie a resistor (10k) to ground from the analog out (AN) of the Stonyman, and place a capacitor across the power supply rails.


**Calibration:** The configuration of the parameters in `software/uclinux/stonyman/stonyman_2.h` is dependent on whether the system is run at 3.3 Volts or 5 Volts. As of now the system is configured for 3.3 V. This can be changed by modifying the `define` statements based on empirical evidence.
