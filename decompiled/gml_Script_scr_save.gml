scr_saveprocess(global.filechoice)
self.filechoicebk2 = global.filechoice
global.filechoice = 9
scr_saveprocess(9)
global.filechoice = self.filechoicebk2
self.iniwrite = ini_open("dr.ini")
ini_write_string(("G" + string(global.filechoice)), "Name", global.truename)
ini_write_real(("G" + string(global.filechoice)), "Level", global.lv)
ini_write_real(("G" + string(global.filechoice)), "Love", global.llv)
ini_write_real(("G" + string(global.filechoice)), "Time", global.time)
ini_write_real(("G" + string(global.filechoice)), "Room", self.room)
ini_write_real(("G" + string(global.filechoice)), "InitLang", global.flag[912])
ini_close()
