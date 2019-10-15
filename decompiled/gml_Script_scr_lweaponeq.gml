if (self.argument0 >= 0)
    global.litem[self.argument0] = global.lweapon
global.lweapon = self.argument1
if (global.lweapon == 2)
    global.lwstrength = 1
if (global.lweapon == 6)
    global.lwstrength = 1
if (global.lweapon == 7)
    global.lwstrength = 1
script_execute(scr_litemname)
