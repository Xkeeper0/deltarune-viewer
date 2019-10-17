self.charcan = 1
if (global.hp[global.char[self.argument0]] <= 0)
    self.charcan = 0
if (global.acting[self.argument0] == 1)
    self.charcan = 0
if (global.char[self.argument0] == 0)
    self.charcan = 0
if (global.charmove[self.argument0] == 0)
    self.charcan = 0
if (global.charauto[global.char[self.argument0]] == 1)
    self.charcan = 0
return self.charcan;
