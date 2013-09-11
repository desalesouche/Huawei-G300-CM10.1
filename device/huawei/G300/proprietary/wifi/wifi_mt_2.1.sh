#!/bin/sh
mkdir /data/misc 01771 system misc
mkdir /data/misc/wifi 0770 wifi wifi
mkdir /data/misc/wifi/load 0775 system system
mkdir /data/misc/wifi/bin 0775 system system
/system/bin/wlan_detect
#/*< DTS2012041800928 yuanmingming 20120418 begin */
insmod /wifi/ar6000.ko testmode=1
for i in 1 2 3
do
    if ifconfig eth0 up; then
        sleep 1
        break;
    fi
    sleep 1
done
#/* DTS2012041800928  yuanmingming 20120418 end > */
athtestcmd -i eth0 --tx sine --txrate 11 --txfreq 2437 --tgtpwr
