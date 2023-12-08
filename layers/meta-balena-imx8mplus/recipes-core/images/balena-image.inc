IMAGE_FSTYPES:append = " balenaos-img"

dram_conf = "${@bb.utils.contains('DRAM_CONF', 'd2d4', 'd2d4', 'd1d8', d)}"

BALENA_BOOT_PARTITION_FILES:append = " \
    imx-boot_${MACHINE}_${dram_conf}:/imx-boot-${MACHINE}-sd.bin-flash_evk \
"

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
    "
IMAGE_INSTALL:remove = "kernel-image"
IMAGE_INSTALL:remove = "packagegroup-fsl-optee-imx"
IMAGE_INSTALL:remove = "jailhouse"

CORE_IMAGE_EXTRA_INSTALL:remove = " gpsd gps-utils connman wvdial ppp modemmanager "
IMAGE_ROOTFS_SIZE = "487424"
