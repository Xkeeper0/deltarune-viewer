global.msc = 0
global.typer = 6
global.fc = 0
global.fe = 0
global.interact = 1
global.msc = 460
scr_text(global.msc)
if (self.on == 0)
    global.msg[0] = scr_84_get_lang_string("obj_shortcut_door_slash_Other_10_gml_13_0"@5105)
self.myinteract = 3
self.mydialoguer = instance_create(0, 0, obj_dialoguer)
self.talked = (self.talked + 1)
