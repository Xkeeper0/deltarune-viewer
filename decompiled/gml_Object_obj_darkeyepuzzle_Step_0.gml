if (self.eye[0] == 1)
{
    if (self.eye[1] == 1)
        _temp_local_var_1 = (self.eye[2] == 1)
    else
        _temp_local_var_1 = 0
}
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    if (self.con == 0)
        _temp_local_var_2 = (global.interact == 0)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        global.interact = 1
        self.con = 2
        self.alarm[4] = 30
    }
}
if (self.con == 3)
{
    self.con = 4
    self.i = 0
    while(true)
    {
        if (self.i < 3)
        {
            self.glass = scr_dark_marker((960 + (self.i * 40)), 320, spr_magicalglass)
            self.glass.depth = 950000
            self.glass = scr_dark_marker((960 + (self.i * 40)), 360, spr_magicalglass)
            self.glass.depth = 950000
            self.i = (self.i + 1)
            continue
        }
        break
    }
    with(self.block)
    {
        instance_destroy()
    }
    snd_play(snd_impact)
    instance_create(0, 0, obj_shake)
    global.facing = 1
    self.alarm[4] = 30
    self.i = 0
    while(true)
    {
        if (self.i < 3)
        {
            with(self.shine[self.i])
            {
                instance_destroy()
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
    with(obj_darkeyepuzzle_switch)
    {
        instance_destroy()
    }
}
if (self.con == 5)
{
    global.flag[201] = 1
    global.interact = 0
    self.con = 6
}
