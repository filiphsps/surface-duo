#/bin/sh

echo "Surface Du AT&T to Global"
echo "by Filiph Sandström"

chmod 777 /dev/block/by-name/*

dd if=/sdcard/duo/boot.img of=/dev/block/by-name/boot_a
dd if=/sdcard/duo/boot.img of=/dev/block/by-name/boot_b

dd if=/sdcard/duo/keymaster.img of=/dev/block/by-name/keymaster_a
dd if=/sdcard/duo/keymaster.img of=/dev/block/by-name/keymaster_b

dd if=/sdcard/duo/devcfg.img of=/dev/block/by-name/devcfg_a
dd if=/sdcard/duo/devcfg.img of=/dev/block/by-name/devcfg_b

dd if=/sdcard/duo/dsp.img of=/dev/block/by-name/dsp_a
dd if=/sdcard/duo/dsp.img of=/dev/block/by-name/dsp_b

dd if=/sdcard/duo/dtbo.img of=/dev/block/by-name/dtbo_a
dd if=/sdcard/duo/dtbo.img of=/dev/block/by-name/dtbo_b

dd if=/sdcard/duo/vbmeta.img of=/dev/block/by-name/vbmeta_a
dd if=/sdcard/duo/vbmeta.img of=/dev/block/by-name/vbmeta_b

dd if=/sdcard/duo/vbmeta_system.img of=/dev/block/by-name/vbmeta_system_a
dd if=/sdcard/duo/vbmeta_system.img of=/dev/block/by-name/vbmeta_system_b

dd if=/sdcard/duo/uefisecapp.img of=/dev/block/by-name/uefisecapp_a
dd if=/sdcard/duo/uefisecapp.img of=/dev/block/by-name/uefisecapp_b

dd if=/sdcard/duo/tz.img of=/dev/block/by-name/tz_a
dd if=/sdcard/duo/tz.img of=/dev/block/by-name/tz_b

dd if=/sdcard/duo/hyp.img of=/dev/block/by-name/hyp_a
dd if=/sdcard/duo/hyp.img of=/dev/block/by-name/hyp_b

dd if=/sdcard/duo/abl.img of=/dev/block/by-name/abl_a
dd if=/sdcard/duo/abl.img of=/dev/block/by-name/abl_b

dd if=/sdcard/duo/sftpfw.img of=/dev/block/by-name/sftpfw_a
dd if=/sdcard/duo/sftpfw.img of=/dev/block/by-name/sftpfw_b

dd if=/sdcard/duo/xbl.img of=/dev/block/by-name/xbl_a
dd if=/sdcard/duo/xbl.img of=/dev/block/by-name/xbl_b

dd if=/sdcard/duo/xbl_config.img of=/dev/block/by-name/xbl_config_a
dd if=/sdcard/duo/xbl_config.img of=/dev/block/by-name/xbl_config_b

dd if=/sdcard/duo/aop.img of=/dev/block/by-name/aop_a
dd if=/sdcard/duo/aop.img of=/dev/block/by-name/aop_b

dd if=/sdcard/duo/cmnlib.img of=/dev/block/by-name/cmnlib_a
dd if=/sdcard/duo/cmnlib.img of=/dev/block/by-name/cmnlib_b

dd if=/sdcard/duo/cmnlib64.img of=/dev/block/by-name/cmnlib64_a
dd if=/sdcard/duo/cmnlib64.img of=/dev/block/by-name/cmnlib64_b

dd if=/sdcard/duo/bluetooth.img of=/dev/block/by-name/bluetooth_a
dd if=/sdcard/duo/bluetooth.img of=/dev/block/by-name/bluetooth_b

dd if=/sdcard/duo/modem.img of=/dev/block/by-name/modem_a
dd if=/sdcard/duo/modem.img of=/dev/block/by-name/modem_b

echo "Done. Reboot into recovery and sideload the global recovery image"
