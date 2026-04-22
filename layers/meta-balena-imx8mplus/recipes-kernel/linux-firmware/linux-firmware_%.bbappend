FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " \
    file://imx8plus_WHENCE \
"

FILES:${PN}-iwlwifi-cc-a0 = " \
    ${nonarch_base_libdir}/firmware/iwlwifi-cc-a0-59.ucode* \
"

python () {
    global firmware_sort_driver_categories
    firmware_sort_driver_categories.update({
        "nxp89xx": "Connectivity",
    })
}
