if (self.con == 0)
{
    if (self.logocon == 2)
    {
        self.introtimer = (self.introtimer + 1)
        if (self.introtimer >= 180)
            self.con = 1
    }
}
if (self.con == 1)
{
    with(self.thrash)
    {
        if (self.a < 1)
            self.a = (self.a + 0.1)
    }
    if (self.thrash.a >= 1)
        self.con = 2
}
if (self.con == 2)
{
    self.i = 0
    while(true)
    {
        if (self.i < 6)
        {
            self.stat[self.i] = 0
            self.i = (self.i + 1)
            continue
        }
        break
    }
    self.i = 0
    while(true)
    {
        if (self.i < 3)
        {
            if (global.flag[(220 + self.i)] >= 0)
            {
                self.addstat1 = self.stat1[self.i][global.flag[(220 + self.i)]]
                self.addstat2 = self.stat2[self.i][global.flag[(220 + self.i)]]
                if (self.addstat1 < 6)
                    self.stat[self.addstat1] = (self.stat[self.addstat1] + 1)
                if (self.addstat2 < 6)
                    self.stat[self.addstat2] = (self.stat[self.addstat2] + 1)
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
    if (self.menu == 0)
    {
        if left_p()
            self.menucoord1x = 0
        if right_p()
        {
            if (self.menucoord1y < 3)
                self.menucoord1x = 1
        }
        if up_p()
        {
            self.menucoord1y = (self.menucoord1y - 1)
            if (self.menucoord1y < 0)
                self.menucoord1y = 0
        }
        if down_p()
        {
            self.menucoord1y = (self.menucoord1y + 1)
            if (self.menucoord1y >= 3)
                _temp_local_var_1 = (self.menucoord1x == 1)
            else
                _temp_local_var_1 = 0
            if _temp_local_var_1
                self.menucoord1y = 2
            if (self.menucoord1y >= 3)
                self.menucoord1y = 3
        }
        if (self.buffer1 < 0)
            _temp_local_var_2 = button1_p()
        else
            _temp_local_var_2 = 0
        if _temp_local_var_2
        {
            self.buffer1 = 3
            self.buffer2 = 3
            if (self.menucoord1x == 0)
            {
                if (self.menucoord1y < 3)
                    self.menu = (4 + self.menucoord1y)
                if (self.menucoord1y == 3)
                {
                    if (global.flag[220] >= 0)
                    {
                        if (global.flag[221] >= 0)
                            _temp_local_var_3 = (global.flag[222] >= 0)
                        else
                            _temp_local_var_3 = 0
                    }
                    else
                        _temp_local_var_3 = 0
                    if _temp_local_var_3
                        self.menu = 7
                }
            }
            if (self.menucoord1x == 1)
            {
                if (global.flag[(220 + self.menucoord1y)] >= 0)
                    self.menu = (self.menucoord1y + 1)
            }
        }
    }
    if (self.menu >= 1)
        _temp_local_var_4 = (self.menu <= 3)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
    {
        self.press = 0
        if right_h()
        {
            self.press = 1
            if (self.colorbuffer == 0)
                global.flag[(222 + self.menu)] = (global.flag[(222 + self.menu)] + 1)
            self.colorbuffer = (self.colorbuffer + 1)
            if (self.colorbuffer >= 3)
            {
                global.flag[(222 + self.menu)] = (global.flag[(222 + self.menu)] + 1)
                self.colorbuffer = 1
            }
        }
        if left_h()
        {
            self.press = 1
            if (self.colorbuffer == 0)
                global.flag[(222 + self.menu)] = (global.flag[(222 + self.menu)] - 1)
            self.colorbuffer = (self.colorbuffer + 1)
            if (self.colorbuffer >= 3)
            {
                global.flag[(222 + self.menu)] = (global.flag[(222 + self.menu)] - 1)
                self.colorbuffer = 1
            }
        }
        if (self.press == 0)
            self.colorbuffer = 0
        if (global.flag[(222 + self.menu)] > 31)
            global.flag[(222 + self.menu)] = 0
        if (global.flag[(222 + self.menu)] < 0)
            global.flag[(222 + self.menu)] = 31
        self.press = 0
        if button1_p()
            _temp_local_var_5 = (self.buffer1 < 0)
        else
            _temp_local_var_5 = 0
        if _temp_local_var_5
            self.press = 1
        if button2_p()
            _temp_local_var_6 = (self.buffer2 < 0)
        else
            _temp_local_var_6 = 0
        if _temp_local_var_6
            self.press = 1
        if (self.press == 1)
        {
            self.menu = 0
            self.buffer2 = 3
            self.buffer1 = 3
        }
    }
    if (self.menu >= 4)
        _temp_local_var_7 = (self.menu <= 6)
    else
        _temp_local_var_7 = 0
    if _temp_local_var_7
    {
        self.tm = (self.menu - 4)
        global.flag[(216 + self.menu)] = self.menucoord2[self.tm]
        if up_p()
        {
            if (self.menucoord2[self.tm] > 0)
                self.menucoord2[self.tm] = (self.menucoord2[self.tm] - 1)
        }
        if down_p()
        {
            if (self.menucoord2[self.tm] < 3)
                self.menucoord2[self.tm] = (self.menucoord2[self.tm] + 1)
        }
        self.press = 0
        if button1_p()
            _temp_local_var_8 = (self.buffer1 < 0)
        else
            _temp_local_var_8 = 0
        if _temp_local_var_8
            self.press = 1
        if button2_p()
            _temp_local_var_9 = (self.buffer2 < 0)
        else
            _temp_local_var_9 = 0
        if _temp_local_var_9
            self.press = 1
        if (self.press == 1)
        {
            self.menu = 0
            self.buffer2 = 3
            self.buffer1 = 3
        }
    }
    if (self.menu == 7)
    {
        if right_p()
            _temp_local_var_10 = 1
        else
            _temp_local_var_10 = left_p()
        if _temp_local_var_10
        {
            if (self.endcoord == 0)
                self.endcoord = 1
            else
                self.endcoord = 0
        }
        self.quit = 0
        if button1_p()
            _temp_local_var_11 = (self.buffer1 < 0)
        else
            _temp_local_var_11 = 0
        if _temp_local_var_11
        {
            self.buffer1 = 3
            self.buffer2 = 3
            if (self.endcoord == 0)
            {
                if instance_exists(obj_thrashmaker_event)
                {
                    self.i = 0
                    while(true)
                    {
                        if (self.i < 6)
                        {
                            obj_thrashmaker_event.stat[self.i] = self.stat[self.i]
                            self.i = (self.i + 1)
                            continue
                        }
                        break
                    }
                }
                snd_volume(global.currentsong[1], 0, 40)
                self.ctimer = 0
                self.menu = -1
                self.ended = 1
                self.con = 5
            }
            else
                self.quit = 1
        }
        if button2_p()
            _temp_local_var_12 = (self.buffer2 < 0)
        else
            _temp_local_var_12 = 0
        if _temp_local_var_12
        {
            self.buffer2 = 3
            self.buffer1 = 3
            self.quit = 1
        }
        if (self.quit == 1)
            self.menu = 0
    }
}
if (self.con == 5)
{
    with(self.thrash)
    {
        self.a = (self.a - 0.03)
    }
    self.logocon = 3
    self.ctimer = (self.ctimer + 1)
    if (self.ctimer >= 40)
    {
        with(self.thrash)
        {
            instance_destroy()
        }
        instance_destroy()
    }
}
self.buffer1 = (self.buffer1 - 1)
self.buffer2 = (self.buffer2 - 1)
self.i = 0
while(true)
{
    if (self.i < 3)
    {
        self.mtxt[self.i] = scr_84_get_lang_string("obj_thrashcontroller_slash_Step_0_gml_259_0"@4564)
        if (global.flag[(220 + self.i)] >= 0)
            self.mtxt[self.i] = self.menutext2[self.i][global.flag[(220 + self.i)]]
        self.i = (self.i + 1)
        continue
    }
    break
}
self.menutext1[0][0] = (scr_84_get_lang_string("obj_thrashcontroller_slash_Step_0_gml_264_0"@4566) + self.mtxt[0])
self.menutext1[0][1] = (scr_84_get_lang_string("obj_thrashcontroller_slash_Step_0_gml_265_0"@4567) + self.mtxt[1])
self.menutext1[0][2] = (scr_84_get_lang_string("obj_thrashcontroller_slash_Step_0_gml_266_0"@4568) + self.mtxt[2])
