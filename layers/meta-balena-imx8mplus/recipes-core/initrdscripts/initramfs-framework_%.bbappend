PACKAGES:remove:iot-gate-imx8plus = "initramfs-module-migrate"
do_install:append:iot-gate-imx8plus() {
	rm -f ${D}/init.d/92-migrate
}
