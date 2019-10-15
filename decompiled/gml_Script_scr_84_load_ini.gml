self.i = 0
while(true)
{
    if (self.i < 3)
    {
        self.FILE[self.i] = 0
        self.i = (self.i + 1)
        continue
    }
    break
}
self.i = 0
while(true)
{
    if (self.i < 3)
    {
        self.FILE[self.i] = 0
        self.NAME[self.i] = scr_84_get_lang_string("DEVICE_MENU_slash_Create_0_gml_97_0"@3495)
        self.TIME[self.i] = 0
        self.PLACE[self.i] = "------------"@3497
        self.LEVEL[self.i] = 0
        self.TIME_STRING[self.i] = "--:--"@3500
        self.INITLANG[self.i] = 0
        self.i = (self.i + 1)
        continue
    }
    break
}
if file_exists("filech1_0"@3503)
{
    self.FILE[0] = 1
    self.NAME[0] = scr_84_get_lang_string("DEVICE_MENU_slash_Create_0_gml_107_0"@3504)
}
if file_exists("filech1_1"@3505)
{
    self.FILE[1] = 1
    self.NAME[1] = scr_84_get_lang_string("DEVICE_MENU_slash_Create_0_gml_112_0"@3506)
}
if file_exists("filech1_2"@3507)
{
    self.FILE[2] = 1
    self.NAME[2] = scr_84_get_lang_string("DEVICE_MENU_slash_Create_0_gml_117_0"@3508)
}
if file_exists("dr.ini"@2744)
{
    ini_open("dr.ini"@2744)
    self.i = 0
    while(true)
    {
        if (self.i < 3)
        {
            if (self.FILE[self.i] == 1)
            {
                self.PLACE[self.i] = scr_roomname(ini_read_real(("G"@2534 + string(self.i)), "Room"@2753, 0))
                self.TIME[self.i] = ini_read_real(("G"@2534 + string(self.i)), "Time"@2752, 0)
                self.NAME[self.i] = ini_read_string(("G"@2534 + string(self.i)), "Name"@2747, "------"@3511)
                self.LEVEL[self.i] = 1
                self.INITLANG[self.i] = ini_read_real(("G"@2534 + string(self.i)), "InitLang"@2754, 0)
                self.TIME_SECONDS_TOTAL[self.i] = floor((self.TIME[self.i] / 30))
                self.TIME_MINUTES[self.i] = floor((self.TIME_SECONDS_TOTAL[self.i] / 60))
                self.TIME_SECONDS[self.i] = (self.TIME_SECONDS_TOTAL[self.i] - (self.TIME_MINUTES[self.i] * 60))
                self.TIME_SECONDS_STRING[self.i] = string(self.TIME_SECONDS[self.i])
                if (self.TIME_SECONDS[self.i] == 0)
                    self.TIME_SECONDS_STRING[self.i] = "00"@3517
                if (self.TIME_SECONDS[self.i] < 10)
                    _temp_local_var_1 = (self.TIME_SECONDS[self.i] >= 1)
                else
                    _temp_local_var_1 = 0
                if _temp_local_var_1
                    self.TIME_SECONDS_STRING[self.i] = ("0"@2521 + string(self.TIME_SECONDS[self.i]))
                self.TIME_STRING[self.i] = ((string(self.TIME_MINUTES[self.i]) + ":"@1546) + self.TIME_SECONDS_STRING[self.i])
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
    ini_close()
}
