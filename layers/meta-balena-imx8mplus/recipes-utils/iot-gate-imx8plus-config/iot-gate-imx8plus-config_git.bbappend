do_install:prepend () {
        mkdir -p ./lib/udev/rules.d
        mv ./etc/udev/rules.d/* ./lib/udev/rules.d/
	sed -i "s/sudo/ /g" ./usr/local/bin/iotg-imx8plus-ie-config
}
