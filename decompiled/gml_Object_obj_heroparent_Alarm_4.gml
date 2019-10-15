global.faceaction[self.myself] = 0
if (scr_monsterpop() > 0)
    scr_spell(global.charspecial[self.myself], self.myself)
self.state = 0
self.attacktimer = 0
