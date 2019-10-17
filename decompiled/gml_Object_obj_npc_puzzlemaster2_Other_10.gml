global.msc = 0
global.typer = 5
if (global.darkzone == 1)
    global.typer = 6
global.fc = 0
global.fe = 0
global.interact = 1
self.image_speed = 0.2
global.flag[20] = 0
if (self.type == 0)
    global.msc = 230
if (self.type == 1)
    global.msc = 235
if (self.type == 2)
    global.msc = 240
if (self.type == 3)
    global.msc = 245
scr_text(global.msc)
self.myinteract = 3
self.mydialoguer = instance_create(0, 0, obj_dialoguer)
self.mydialoguer.side = 0
self.talked += 1
