if (global.plot < 16)
{
    self.con = 1
    global.interact = 1
    with(obj_mainchara)
    {
        self.fun = 1
        self.sprite_index = spr_kris_fallen_dark
    }
    self.alarm[4] = 45
}
else
{
    self.con = 99
    if scr_havechar(3)
    {
        self.rd = instance_create(240, 240, obj_readable_room1)
        self.rd.image_xscale = 8
        self.rd.image_yscale = 2
    }
}
