FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"                                  
                                                                                 
SRC_URI:append:iotdin-imx8p = " file://0001-kernel-module-isp-vvcam-Fix-Linux-Kernel-6.y-build-i.patch;patchdir=../.. "
