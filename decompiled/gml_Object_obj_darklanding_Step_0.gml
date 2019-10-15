if (self.con == 2)
{
    with(obj_mainchara)
    {
        self.sprite_index = spr_krisd_dark
        self.fun = 0
        global.facing = 0
    }
    global.interact = 0
    self.con = 3
    global.flag[7] = 0
    if (global.plot < 16)
        global.plot = 16
    scr_tempsave()
}
