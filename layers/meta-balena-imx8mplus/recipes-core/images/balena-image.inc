IMAGE_FSTYPES:append = " balenaos-img"

dram_conf = "${@bb.utils.contains('DRAM_CONF', 'd2d4', 'd2d4', 'd1d8', d)}"

BALENA_BOOT_PARTITION_FILES += " \
    imx-boot_${MACHINE}_${dram_conf}:/imx-boot-${MACHINE}-sd.bin-flash_evk \
    balena-bootloader/iot-gate-imx8plus-usbdev.dtb:/iot-gate-imx8plus-usbdev.dtb \
    balena-bootloader/iot-gate-imx8plus.dtb:/iot-gate-imx8plus.dtb \
    balena-bootloader/${KERNEL_IMAGETYPE}-initramfs-${MACHINE}.bin:/${KERNEL_IMAGETYPE} \
    balena-bootloader/bootenv:/bootenv \
"

do_rootfs[depends] += " virtual/balena-bootloader:do_deploy"
do_image_balenaos_img[depends] += " virtual/balena-bootloader:do_deploy"

IMAGE_INSTALL:append = " \
    imx-boot \
    linux-firmware-ax200 \
    linux-firmware-ax210 \
    firmware-imx-sdma-imx7d \
    wireless-regdb-static \
    eeprom-util \
    iot-gate-imx8plus-config \
    keyctl-caam \
    mbpoll \
    mp-verification-tool \
    libgpiod \
    libgpiod-tools \
    grub-editenv \
    "
IMAGE_INSTALL:remove = "kernel-image"
IMAGE_INSTALL:remove = "packagegroup-fsl-optee-imx"
IMAGE_INSTALL:remove = "jailhouse"

CORE_IMAGE_EXTRA_INSTALL:remove = " gpsd gps-utils connman wvdial ppp modemmanager "
IMAGE_ROOTFS_SIZE = "487424"
