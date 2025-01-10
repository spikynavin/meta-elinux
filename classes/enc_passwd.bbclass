python () {
    import base64
    ssid_b64 = d.getVar('WIFI_SSID', True)
    passwd_b64 = d.getVar('WIFI_PASSWD', True)
    #bb.note("enc_passwd.bbclass: WIFI_SSID = %s" % ssid_b64)
    #bb.note("enc_passwd.bbclass: WIFI_PASSWD = %s" % passwd_b64)
    if ssid_b64:
        try:
            decoded_ssid = base64.b64decode(ssid_b64).decode('utf-8').strip()
            d.setVar('WIFI_SSID_DECODED', decoded_ssid)
            #bb.note("enc_passwd.bbclass: WIFI_SSID_DECODED = %s" % decoded_ssid)
        except Exception as e:
            bb.fatal("Error decoding WIFI_SSID_BASE64: %s" % e)
    else:
        bb.note("enc_passwd.bbclass: WIFI_SSID_BASE64 is empty")
    if passwd_b64:
        try:
            decoded_passwd = base64.b64decode(passwd_b64).decode('utf-8').strip()
            d.setVar('WIFI_PASSWD_DECODED', decoded_passwd)
            #bb.note("enc_passwd.bbclass: WIFI_PASSWD_DECODED = %s" % decoded_passwd)
        except Exception as e:
            bb.fatal("Error decoding WIFI_PASSWD_BASE64: %s" % e)
    else:
        bb.note("enc_passwd.bbclass: WIFI_PASSWD_BASE64 is empty")
}
