FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

inherit wifi_passwd

do_install:append() {
   install -d ${D}${sysconfdir}/wpa_supplicant
   rm -rf ${D}${sysconfdir}/wpa_supplicant.conf
   echo "ctrl_interface=/var/run/wpa_supplicant" > ${D}${sysconfdir}/wpa_supplicant/wpa_supplicant.conf
   echo "ctrl_interface_group=0" >> ${D}${sysconfdir}/wpa_supplicant/wpa_supplicant.conf
   echo "update_config=1" >> ${D}${sysconfdir}/wpa_supplicant/wpa_supplicant.conf
   echo "country=IN" >> ${D}${sysconfdir}/wpa_supplicant/wpa_supplicant.conf
   echo "network={" >> ${D}${sysconfdir}/wpa_supplicant/wpa_supplicant.conf
   echo "   scan_ssid=1" >> ${D}${sysconfdir}/wpa_supplicant/wpa_supplicant.conf
   echo "   ssid=\"${WIFI_SSID}\"" >> ${D}${sysconfdir}/wpa_supplicant/wpa_supplicant.conf
   echo "   psk=\"${WIFI_PASSWD}\"" >> ${D}${sysconfdir}/wpa_supplicant/wpa_supplicant.conf
   echo "   key_mgmt=WPA-PSK" >> ${D}${sysconfdir}/wpa_supplicant/wpa_supplicant.conf
   echo "}" >> ${D}${sysconfdir}/wpa_supplicant/wpa_supplicant.conf   
}
