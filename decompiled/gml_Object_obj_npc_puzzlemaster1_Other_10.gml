global.msc = 0
global.typer = 5
if (global.darkzone == 1)
    global.typer = 6
global.fc = 0
global.fe = 0
global.interact = 1
self.image_speed = 0.2
global.flag[20] = 0
global.msc = 225
scr_text(global.msc)
self.myinteract = 3
self.mydialoguer = instance_create(0, 0, obj_dialoguer)
self.talked = (self.talked + 1)
