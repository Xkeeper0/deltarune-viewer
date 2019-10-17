if (global.lang == "en")
    global.lang = "ja"
else
    global.lang = "en"
ini_open("true_config.ini")
ini_write_string("LANG", "LANG", global.lang)
ini_close()
scr_84_init_localization()
