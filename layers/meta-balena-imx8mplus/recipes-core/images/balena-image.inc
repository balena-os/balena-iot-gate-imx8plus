IMAGE_FSTYPES:append = " balenaos-img"

BALENA_BOOT_PARTITION_FILES:iot-gate-imx8plus += " \
    imx-boot_${MACHINE}_d2d4:/imx-boot-${MACHINE}-sd.bin-flash_evk \
"

IMAGE_INSTALL:append = " imx-boot redsocks "
IMAGE_INSTALL:remove = "kernel-image"

IMAGE_INSTALL:remove = "iot-gate-imx8plus-config"
IMAGE_INSTALL:remove = "packagegroup-fsl-optee-imx"
IMAGE_INSTALL:remove = "jailhouse"

CORE_IMAGE_EXTRA_INSTALL:remove = " gpsd gps-utils connman wvdial ppp modemmanager "
IMAGE_ROOTFS_SIZE = "487424"
