This is the Libero project for the Actel's SmartFusion Development Board with A2F500M3G-FGG484 device. The project is created with Actel's Libero Project Manager, version 9.1.0.18.

There are some recommendations below that we believe will help you to work with this design:

1. It is recommended to unpack the Libero project archive in C:\Actelprj directory. In that case Libero Project Manager and FlashPro will be able to correctly find all dependencies of the project.

2. We recommend to use the synthesize.tcl script (located at ..\a2f-actel-dev-brd-F\synthesis) to synthesize the design in the Synplify tool. This script is needed to pick up the timing constraint file synthesis.sdc (located at ..\a2f-actel-dev-brd-F\constraint). 

3. We also recommend to use the designer.tcl script (located at ..\a2f-actel-dev-brd-F\designer\impl1) to implement the design in the Actel Designer Tool. This script is needed to pick up the physical and timing constraint files designer.pdc and designer.sdc (located at ....\a2f-actel-dev-brd-F\constraint).
 
Note that if you are going to use our .tcl files to synthesize and generate an FPGA design,
you should apply your design changes (such as pin assignments or other physical constraint
changes) to the designer.pdc file and all timing constraints to the designer.sdc and synthesis.sdc files. 

4. The U-Boot firmware file u-boot.hex, which you should merge
into a new .pdb file is located at ..\a2f-actel-dev-brd-F\Emcraft_Firmware

