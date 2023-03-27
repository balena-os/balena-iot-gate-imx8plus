do_install:prepend () {
        mkdir -p ./lib/udev/rules.d
        mv ./etc/udev/rules.d/* ./lib/udev/rules.d/
}
