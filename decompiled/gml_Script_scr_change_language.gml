if (global.lang == "en"@2775)
    global.lang = "ja"@1566
else
    global.lang = "en"@2775
ini_open("true_config.ini"@3518)
ini_write_string("LANG"@3519, "LANG"@3519, global.lang)
ini_close()
scr_84_init_localization()
