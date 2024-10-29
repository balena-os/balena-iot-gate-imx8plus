DEPENDS:append = " \
    virtual/bootloader \
"

do_configure[nostamp] = "1"
do_compile[depends] += "virtual/bootloader:do_deploy"
do_compile[nostamp] = "1"

do_install:prepend() {
    for type in "${UBOOT_CONFIG}"; do
        if [ -z "${BOOT_CONFIG_MACHINE}" ]; then
            BOOT_CONFIG_MACHINE="${BOOT_NAME}-${MACHINE}-${type}.bin"
        else
            bbfatal "More than one U-boot is being built - please adapt"
        fi
    done
}

do_deploy:prepend() {
    for type in "${UBOOT_CONFIG}"; do
        if [ -z "${BOOT_CONFIG_MACHINE}" ]; then
            BOOT_CONFIG_MACHINE="${BOOT_NAME}-${MACHINE}-${type}.bin"
        else
            bbfatal "More than one U-boot is being built - please adapt"
        fi
    done
}
