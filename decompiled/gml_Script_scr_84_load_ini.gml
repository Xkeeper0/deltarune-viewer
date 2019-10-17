for (self.i = 0; self.i < 3; self.i += 1)
    self.FILE[self.i] = 0
for (self.i = 0; self.i < 3; self.i += 1)
{
    self.FILE[self.i] = 0
    self.NAME[self.i] = scr_84_get_lang_string("DEVICE_MENU_slash_Create_0_gml_97_0")
    self.TIME[self.i] = 0
    self.PLACE[self.i] = "------------"
    self.LEVEL[self.i] = 0
    self.TIME_STRING[self.i] = "--:--"
    self.INITLANG[self.i] = 0
}
if file_exists("filech1_0")
{
    self.FILE[0] = 1
    self.NAME[0] = scr_84_get_lang_string("DEVICE_MENU_slash_Create_0_gml_107_0")
}
if file_exists("filech1_1")
{
    self.FILE[1] = 1
    self.NAME[1] = scr_84_get_lang_string("DEVICE_MENU_slash_Create_0_gml_112_0")
}
if file_exists("filech1_2")
{
    self.FILE[2] = 1
    self.NAME[2] = scr_84_get_lang_string("DEVICE_MENU_slash_Create_0_gml_117_0")
}
if file_exists("dr.ini")
{
    ini_open("dr.ini")
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        if (self.FILE[self.i] == 1)
        {
            self.PLACE[self.i] = scr_roomname(ini_read_real(("G" + string(self.i)), "Room", 0))
            self.TIME[self.i] = ini_read_real(("G" + string(self.i)), "Time", 0)
            self.NAME[self.i] = ini_read_string(("G" + string(self.i)), "Name", "------")
            self.LEVEL[self.i] = 1
            self.INITLANG[self.i] = ini_read_real(("G" + string(self.i)), "InitLang", 0)
            self.TIME_SECONDS_TOTAL[self.i] = floor((self.TIME[self.i] / 30))
            self.TIME_MINUTES[self.i] = floor((self.TIME_SECONDS_TOTAL[self.i] / 60))
            self.TIME_SECONDS[self.i] = (self.TIME_SECONDS_TOTAL[self.i] - (self.TIME_MINUTES[self.i] * 60))
            self.TIME_SECONDS_STRING[self.i] = string(self.TIME_SECONDS[self.i])
            if (self.TIME_SECONDS[self.i] == 0)
                self.TIME_SECONDS_STRING[self.i] = "00"
            if ((self.TIME_SECONDS[self.i] < 10) && (self.TIME_SECONDS[self.i] >= 1))
                self.TIME_SECONDS_STRING[self.i] = ("0" + string(self.TIME_SECONDS[self.i]))
            self.TIME_STRING[self.i] = ((string(self.TIME_MINUTES[self.i]) + ":") + self.TIME_SECONDS_STRING[self.i])
        }
    }
    ini_close()
}
