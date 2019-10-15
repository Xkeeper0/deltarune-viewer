if (self.con == 1)
{
    self.waketimer = (self.waketimer + 1)
    self.canclick = 0
    if (self.waketimer < 50)
        self.canclick = 1
    if (self.waketimer < 110)
        _temp_local_var_1 = (self.waketimer > 65)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
        self.canclick = 1
    if (self.waketimer > 125)
        _temp_local_var_2 = (self.waketimer < 170)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
        self.canclick = 1
    if (self.canclick == 1)
    {
        if left_p()
            self.waketimer = (self.waketimer + 2)
        if right_p()
            self.waketimer = (self.waketimer + 2)
        if down_p()
            self.waketimer = (self.waketimer + 2)
        if up_p()
            self.waketimer = (self.waketimer + 2)
    }
    if (self.waketimer == 60)
        _temp_local_var_3 = 1
    else
        _temp_local_var_3 = (self.waketimer == 62)
    if _temp_local_var_3
    {
        with(self.k)
        {
            self.sprite_index = spr_kris_fallen_dark
            self.x = (self.xstart + choose(-2, 2))
            self.y = (self.ystart + choose(-2, 2))
        }
    }
    if (self.waketimer == 63)
    {
        with(self.k)
        {
            self.x = self.xstart
            self.y = self.ystart
        }
    }
    if (self.waketimer == 120)
        _temp_local_var_4 = 1
    else
    {
        if (self.waketimer == 121)
            _temp_local_var_4 = 1
        else
        {
            if (self.waketimer == 122)
                _temp_local_var_4 = 1
            else
                _temp_local_var_4 = (self.waketimer == 123)
        }
    }
    if _temp_local_var_4
    {
        with(self.k)
        {
            self.x = (self.xstart + choose(-2, 2, 0))
            self.y = (self.ystart + choose(-2, 2, 0))
        }
    }
    if (self.waketimer >= 180)
        _temp_local_var_5 = (self.waketimer <= 184)
    else
        _temp_local_var_5 = 0
    if _temp_local_var_5
    {
        with(self.k)
        {
            self.x = (self.xstart + choose(-2, 2, 0))
            self.y = (self.ystart + choose(-2, 2, 0))
        }
    }
    if (self.waketimer == 185)
    {
        with(self.k)
        {
            instance_destroy()
        }
        with(obj_mainchara)
        {
            self.visible = 1
        }
        global.interact = 0
        self.con = 2
        if (global.plot < 11)
            global.plot = 11
        scr_tempsave()
        instance_destroy()
    }
}
