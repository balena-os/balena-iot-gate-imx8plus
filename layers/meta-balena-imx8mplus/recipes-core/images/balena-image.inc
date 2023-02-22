IMAGE_FSTYPES:append = " balenaos-img"

BALENA_BOOT_PARTITION_FILES += " \
    imx-boot-${MACHINE}-sd.bin-flash_evk:/imx-boot-${MACHINE}-sd.bin-flash_evk \
"

IMAGE_INSTALL:append = " imx-boot redsocks"
IMAGE_INSTALL:remove = "kernel-image"

IMAGE_INSTALL:remove = "iot-gate-imx8plus-config"
IMAGE_INSTALL:remove = "packagegroup-fsl-optee-imx"

IMAGE_ROOTFS_SIZE = "487424"
