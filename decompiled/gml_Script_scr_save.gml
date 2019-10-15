scr_saveprocess(global.filechoice)
self.filechoicebk2 = global.filechoice
global.filechoice = 9
scr_saveprocess(9)
global.filechoice = self.filechoicebk2
self.iniwrite = ini_open("dr.ini"@2744)
ini_write_string(("G"@2534 + string(global.filechoice)), "Name"@2747, global.truename)
ini_write_real(("G"@2534 + string(global.filechoice)), "Level"@2749, global.lv)
ini_write_real(("G"@2534 + string(global.filechoice)), "Love"@2751, global.llv)
ini_write_real(("G"@2534 + string(global.filechoice)), "Time"@2752, global.time)
ini_write_real(("G"@2534 + string(global.filechoice)), "Room"@2753, self.room)
ini_write_real(("G"@2534 + string(global.filechoice)), "InitLang"@2754, global.flag[912])
ini_close()
