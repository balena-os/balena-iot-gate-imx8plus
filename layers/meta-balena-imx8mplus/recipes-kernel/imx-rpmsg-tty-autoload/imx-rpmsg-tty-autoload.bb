SUMMARY = "Auto-load imx_rpmsg_tty kernel module at boot"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://imx-rpmsg-tty.conf"

do_install() {
    install -d ${D}${sysconfdir}/modules-load.d
    install -m 0644 ${WORKDIR}/imx-rpmsg-tty.conf ${D}${sysconfdir}/modules-load.d/
}

FILES:${PN} = "${sysconfdir}/modules-load.d/imx-rpmsg-tty.conf"
