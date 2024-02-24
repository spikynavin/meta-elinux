python() { 
   wifi_ssid = d.getVar('WIFI_SSID')
   wifi_passwd = d.getVar('WIFI_PASSWD')
   
   if not wifi_ssid or not wifi_passwd:
      bb.fatal('WIFI_SSID or WIFI_PASSWD is not set in local.conf')
}
