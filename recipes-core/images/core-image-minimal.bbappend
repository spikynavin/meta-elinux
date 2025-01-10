SUMMARY = "User append core-image-minimal recipe for add custom application"

LICENSE = "MIT"

inherit core-image

CORE_IMAGE_EXTRA_INSTALL:append = " \
   linux-firmware-rpidistro-bcm43455 \
   kernel-modules \
   alsa-utils \
   ${PYTHON_PKG} \
   ${CORE_UTILES_PKG} \
   ${NETWORK_UTILES_PKG} \
   ${GNU_TOOLS_PKG} \
   ${RPI_UTILES_PKG} \
"

RPI_UTILES_PKG = " \
   raspi-gpio \
   rpi-gpio \
   i2c-tools \
   spitools \
   squashfs-tools \
   libgpiod \
   android-tools \
   usbutils \
   pciutils \
"

PYTHON_PKG = " \
   python3 \
   python3-pip \
"

CORE_UTILES_PKG = " \
   bash \
   vim \
   openssh \
   openssl \
   sudo \
"

NETWORK_UTILES_PKG = " \
   bluez5 \
   hostapd \
   iptables \
   wpa-supplicant \
   tcpdump \
   iperf2 \
   iperf3 \
   iw \
   net-tools \
   dhcpcd \
   bridge-utils \
"

GNU_TOOLS_PKG = " \
   cmake \
   make \
   autoconf \
   automake \
"
