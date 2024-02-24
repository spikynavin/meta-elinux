DESCRIPTION = "Linux Kernel for Raptor board"
SECTION = "kernel"
LICENSE = "GPL-2.0-only"
LIC_FILES_CHKSUM = "file://COPYING;md5=6bc538ed5bd9a7fc9398086aedcd7e46"

COMPATIBLE_MACHINE = "^raptor$"

PE = "1"
PV = "${LINUX_VERSION}"

inherit siteinfo
require recipes-kernel/linux/linux-yocto.inc

SRC_URI += " \
    ${@bb.utils.contains("INITRAMFS_IMAGE_BUNDLE", "1", "file://initramfs-image-bundle.cfg", "", d)} \
    ${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "file://vc4graphics.cfg", "", d)} \
    ${@bb.utils.contains("MACHINE_FEATURES", "wm8960", "file://wm8960.cfg", "", d)} \
    file://default-cpu-governor.cfg \
    "

KCONFIG_MODE = "--alldefconfig"
KBUILD_DEFCONFIG:raptor ?= "raptor_defconfig"

LINUX_VERSION_EXTENSION ?= ""

KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"

UBOOT_ENTRYPOINT =       "0x00008000"
UBOOT_LOADADDRESS =      "0x00008000"
