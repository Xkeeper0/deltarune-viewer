self.cur_jewel = 0
self.saved = 0
self.coord = 0
self.ini_ex = 0
self.buffer = 3
self.name = scr_84_get_lang_string("obj_savemenu_slash_Create_0_gml_7_0"@10034)
self.level = 1
self.love = 1
self.time = 0
self.roome = 0
self.endme = 0
global.currentroom = self.room
global.interact = 1
if file_exists("dr.ini"@2744)
{
    self.ini_ex = 1
    self.iniread = ini_open("dr.ini"@2744)
    self.name = ini_read_string(("G"@2534 + string(global.filechoice)), "Name"@2747, "Kris"@10040)
    self.level = ini_read_real(("G"@2534 + string(global.filechoice)), "Level"@2749, 1)
    self.love = ini_read_real(("G"@2534 + string(global.filechoice)), "Love"@2751, 1)
    self.time = ini_read_real(("G"@2534 + string(global.filechoice)), "Time"@2752, 0)
    self.roome = ini_read_real(("G"@2534 + string(global.filechoice)), "Room"@2753, 0)
    ini_close()
}
self.d = (global.darkzone + 1)
self.minutes = floor((self.time / 1800))
self.seconds = round((((self.time / 1800) - self.minutes) * 60))
if (self.seconds == 60)
    self.seconds = 59
if (self.seconds < 10)
    self.seconds = ("0"@2521 + string(self.seconds))
scr_roomname(self.roome)
if (self.d == 2)
    self.heartsprite = 908
if (self.d == 1)
    self.heartsprite = 910
if (self.d == 1)
    self.name = scr_84_get_lang_string("obj_savemenu_slash_Create_0_gml_43_0"@10044)
