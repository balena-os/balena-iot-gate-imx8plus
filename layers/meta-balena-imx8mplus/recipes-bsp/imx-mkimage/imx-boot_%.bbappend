DEPENDS:append = " \
    virtual/bootloader \
"

DRAM_CONFG="d2d4"
dram_conf="d2d4"
do_configure[nostamp] = "1"
do_compile[depends] += "virtual/bootloader:do_deploy"
do_compile[nostamp] = "1"
