### GCC 4.9.x

rm -f arch/arm/boot/*.dtb
rm -f .version

### get defconfig
ARCH=arm CROSS_COMPILE=./arm-eabi-4.6/bin/arm-eabi- make fusion3_pollux_windy_custom_defconfig

### compile kernel
ARCH=arm CROSS_COMPILE=./arm-eabi-4.6/bin/arm-eabi- make

#echo "checking for compiled kernel..."
#if [ -f arch/arm/boot/zImage ]
#then

#echo "generating device tree..."
#./dtbTool -o dt.img -s 2048 -p ./scripts/dtc/ ./arch/arm/boot/

#echo "DONE"

#fi

### Tablet Z
./mkbootimg --cmdline "androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 vmalloc=400M androidboot.emmc=true" --pagesize 2048 --base 0x80200000 --kernel arch/arm/boot/zImage --ramdisk kernel.sin-ramdisk.cpio.gz --ramdisk_offset 0x02000000 -o boot.img
