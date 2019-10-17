if ((self.eye[0] == 1) && ((self.eye[1] == 1) && (self.eye[2] == 1)))
{
    if ((self.con == 0) && (global.interact == 0))
    {
        global.interact = 1
        self.con = 2
        self.alarm[4] = 30
    }
}
if (self.con == 3)
{
    self.con = 4
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        self.glass = scr_dark_marker((960 + (self.i * 40)), 320, spr_magicalglass)
        self.glass.depth = 950000
        self.glass = scr_dark_marker((960 + (self.i * 40)), 360, spr_magicalglass)
        self.glass.depth = 950000
    }
    with (self.block)
        instance_destroy()
    snd_play(snd_impact)
    instance_create(0, 0, obj_shake)
    global.facing = 1
    self.alarm[4] = 30
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        with (self.shine[self.i])
            instance_destroy()
    }
    with (obj_darkeyepuzzle_switch)
        instance_destroy()
}
if (self.con == 5)
{
    global.flag[201] = 1
    global.interact = 0
    self.con = 6
}
