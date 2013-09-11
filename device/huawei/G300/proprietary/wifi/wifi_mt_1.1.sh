#!/bin/sh
#/* < DTS2012061308627  chenjikun 20120614 begin */
#/*unload the wifi driver before load the wifi driver*/
rmmod dhd		
#/* DTS2012061308627   chenjikun 20120614 end > */
insmod /wifi/dhd.ko "firmware_path=/system/wifi/firmware_test.bin nvram_path=/system/wifi/nvram.txt"
wl band b
wl out
wl fqacurcy 6
