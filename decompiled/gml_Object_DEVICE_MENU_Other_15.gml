self.iniwrite = ini_open("dr.ini")
self._NEWNAME = ini_read_string(("G" + string(self.MENUCOORD[2])), "Name", "------")
self._NEWTIME = ini_read_real(("G" + string(self.MENUCOORD[2])), "Time", 0)
self._NEWROOM = ini_read_real(("G" + string(self.MENUCOORD[2])), "Room", 0)
self._NEWLEVEL = ini_read_real(("G" + string(self.MENUCOORD[2])), "Level", 0)
ini_write_string(("G" + string(self.MENUCOORD[3])), "Name", self._NEWNAME)
ini_write_real(("G" + string(self.MENUCOORD[3])), "Time", self._NEWTIME)
ini_write_real(("G" + string(self.MENUCOORD[3])), "Room", self._NEWROOM)
ini_write_real(("G" + string(self.MENUCOORD[3])), "Level", self._NEWLEVEL)
ini_close()
self.FILE[self.MENUCOORD[3]] = 1
self.PLACE[self.MENUCOORD[3]] = self.PLACE[self.MENUCOORD[2]]
self.TIME[self.MENUCOORD[3]] = self.TIME[self.MENUCOORD[2]]
self.NAME[self.MENUCOORD[3]] = self.NAME[self.MENUCOORD[2]]
self.LEVEL[self.MENUCOORD[3]] = self.LEVEL[self.MENUCOORD[2]]
self.TIME_STRING[self.MENUCOORD[3]] = self.TIME_STRING[self.MENUCOORD[2]]
file_copy(("filech1_" + string(self.MENUCOORD[2])), ("filech1_" + string(self.MENUCOORD[3])))
if file_exists((("config_" + string(self.MENUCOORD[2])) + ".ini"))
    file_copy((("config_" + string(self.MENUCOORD[2])) + ".ini"), (("config_" + string(self.MENUCOORD[3])) + ".ini"))
