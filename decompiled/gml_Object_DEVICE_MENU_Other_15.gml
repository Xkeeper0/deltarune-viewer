self.iniwrite = ini_open("dr.ini"@2744)
self._NEWNAME = ini_read_string(("G"@2534 + string(self.MENUCOORD[2])), "Name"@2747, "------"@3511)
self._NEWTIME = ini_read_real(("G"@2534 + string(self.MENUCOORD[2])), "Time"@2752, 0)
self._NEWROOM = ini_read_real(("G"@2534 + string(self.MENUCOORD[2])), "Room"@2753, 0)
self._NEWLEVEL = ini_read_real(("G"@2534 + string(self.MENUCOORD[2])), "Level"@2749, 0)
ini_write_string(("G"@2534 + string(self.MENUCOORD[3])), "Name"@2747, self._NEWNAME)
ini_write_real(("G"@2534 + string(self.MENUCOORD[3])), "Time"@2752, self._NEWTIME)
ini_write_real(("G"@2534 + string(self.MENUCOORD[3])), "Room"@2753, self._NEWROOM)
ini_write_real(("G"@2534 + string(self.MENUCOORD[3])), "Level"@2749, self._NEWLEVEL)
ini_close()
self.FILE[self.MENUCOORD[3]] = 1
self.PLACE[self.MENUCOORD[3]] = self.PLACE[self.MENUCOORD[2]]
self.TIME[self.MENUCOORD[3]] = self.TIME[self.MENUCOORD[2]]
self.NAME[self.MENUCOORD[3]] = self.NAME[self.MENUCOORD[2]]
self.LEVEL[self.MENUCOORD[3]] = self.LEVEL[self.MENUCOORD[2]]
self.TIME_STRING[self.MENUCOORD[3]] = self.TIME_STRING[self.MENUCOORD[2]]
file_copy(("filech1_"@2713 + string(self.MENUCOORD[2])), ("filech1_"@2713 + string(self.MENUCOORD[3])))
if file_exists((("config_"@7035 + string(self.MENUCOORD[2])) + ".ini"@7036))
    file_copy((("config_"@7035 + string(self.MENUCOORD[2])) + ".ini"@7036), (("config_"@7035 + string(self.MENUCOORD[3])) + ".ini"@7036))
