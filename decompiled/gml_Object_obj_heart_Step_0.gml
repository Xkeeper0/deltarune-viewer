self.wallcheck = 0
self.press_l = 0
self.press_r = 0
self.press_d = 0
self.press_u = 0
self.bkx = 0
self.bky = 0
self.bkxy = 0
self.jelly = 2
if left_h()
    self.press_l = 1
if right_h()
    self.press_r = 1
if up_h()
    self.press_u = 1
if down_h()
    self.press_d = 1
self.px = 0
self.py = 0
if (self.press_r == 1)
    self.px = self.wspeed
if (self.press_l == 1)
    self.px = (variable)(- self.wspeed)
if (self.press_d == 1)
    self.py = self.wspeed
if (self.press_u == 1)
    self.py = (variable)(- self.wspeed)
self.xmeet = 0
self.ymeet = 0
self.xymeet = 0
if place_meeting((self.x + self.px), (self.y + self.py), obj_battlesolid)
    self.xymeet = 1
if place_meeting((self.x + self.px), self.y, obj_battlesolid)
{
    if place_meeting((self.x + self.px), self.y, obj_battlesolid)
    {
        self.g = self.wspeed
        while(true)
        {
            if (self.g > 0)
            {
                self.mvd = 0
                if (self.press_d == 0)
                    _temp_local_var_1 = (~ place_meeting((self.x + self.px), (self.y - self.g), obj_battlesolid))
                else
                    _temp_local_var_1 = 0
                if _temp_local_var_1
                    break
                else
                {
                    if (self.press_u == 0)
                    {
                        if (self.mvd == 0)
                            _temp_local_var_8 = (~ place_meeting((self.x + self.px), (self.y + self.g), obj_battlesolid))
                        else
                            _temp_local_var_8 = 0
                    }
                    else
                        _temp_local_var_8 = 0
                    if _temp_local_var_8
                        break
                    else
                    {
                        self.g = (self.g - 1)
                        continue
                    }
                }
            }
            break
        }
    }
    self.xmeet = 1
    self.bkx = 0
    if (self.px > 0)
    {
        self.i = self.px
        while(true)
        {
            if (self.i >= 0)
            {
                if (~ place_meeting((self.x + self.i), self.y, obj_battlesolid))
                    break
                else
                {
                    self.i = (self.i - 1)
                    continue
                }
            }
            break
        }
    }
    if (self.px < 0)
    {
        self.i = self.px
        while(true)
        {
            if (self.i <= 0)
            {
                if (~ place_meeting((self.x + self.i), self.y, obj_battlesolid))
                    break
                else
                {
                    self.i = (self.i + 1)
                    continue
                }
            }
            break
        }
    }
    if (self.bkx == 0)
        self.px = 0
}
if place_meeting(self.x, (self.y + self.py), obj_battlesolid)
{
    self.ymeet = 1
    self.bky = 0
    if place_meeting(self.x, (self.y + self.py), obj_battlesolid)
    {
        self.g = self.wspeed
        while(true)
        {
            if (self.g > 0)
            {
                self.mvd = 0
                if (self.press_r == 0)
                    _temp_local_var_2 = (~ place_meeting((self.x - self.g), (self.y + self.py), obj_battlesolid))
                else
                    _temp_local_var_2 = 0
                if _temp_local_var_2
                    break
                else
                {
                    if (self.mvd == 0)
                    {
                        if (self.press_l == 0)
                            _temp_local_var_5 = (~ place_meeting((self.x + self.g), (self.y + self.py), obj_battlesolid))
                        else
                            _temp_local_var_5 = 0
                    }
                    else
                        _temp_local_var_5 = 0
                    if _temp_local_var_5
                        break
                    else
                    {
                        self.g = (self.g - 1)
                        continue
                    }
                }
            }
            break
        }
    }
    if (self.py > 0)
    {
        self.i = self.py
        while(true)
        {
            if (self.i >= 0)
            {
                if (~ place_meeting(self.x, (self.y + self.i), obj_battlesolid))
                    break
                else
                {
                    self.i = (self.i - 1)
                    continue
                }
            }
            break
        }
    }
    if (self.py < 0)
    {
        self.i = self.py
        while(true)
        {
            if (self.i <= 0)
            {
                if (~ place_meeting(self.x, (self.y + self.i), obj_battlesolid))
                    break
                else
                {
                    self.i = (self.i + 1)
                    continue
                }
            }
            break
        }
    }
    if (self.bky == 0)
        self.py = 0
}
if place_meeting((self.x + self.px), (self.y + self.py), obj_battlesolid)
{
    self.xymeet = 1
    self.bkxy = 0
    self.i = self.px
    self.j = self.py
    while(true)
    {
        if (self.j != 0)
            _temp_local_var_3 = 1
        else
            _temp_local_var_3 = (self.i != 0)
        if _temp_local_var_3
        {
            if (~ place_meeting((self.x + self.i), (self.y + self.j), obj_battlesolid))
                break
            else
            {
                if (abs(self.j) >= 1)
                {
                    if (self.j > 0)
                        self.j = (self.j - 1)
                    if (self.j < 0)
                        self.j = (self.j + 1)
                }
                else
                    self.j = 0
                if (abs(self.i) >= 1)
                {
                    if (self.i > 0)
                        self.i = (self.i - 1)
                    if (self.i < 0)
                        self.i = (self.i + 1)
                }
                else
                    self.i = 0
                continue
            }
        }
        break
    }
    if (self.bkxy == 0)
    {
        self.px = 0
        self.py = 0
    }
}
if ((self.x + self.px) >= ((__view_get(e__VW.XView, 0) + 640) - self.sprite_width))
    self.px = (((__view_get(e__VW.XView, 0) + 640) - self.sprite_width) - self.x)
if ((self.x + self.px) <= 0)
    self.px = (variable)(- self.x)
if ((self.y + self.py) <= 0)
    self.py = (variable)(- self.y)
if ((self.y + self.py) >= (((__view_get(e__VW.YView, 0) + 320) - self.sprite_height) + self.boundaryup))
    self.py = ((((__view_get(e__VW.YView, 0) + 320) - self.sprite_height) - self.y) + self.boundaryup)
self.x = (self.x + self.px)
self.y = (self.y + self.py)
if (self.dmgnoise == 1)
{
    self.dmgnoise = 0
    snd_stop(snd_hurt1)
    snd_play(snd_hurt1)
}
global.inv = (global.inv - 1)
if (global.inv > 0)
    self.image_speed = 0.25
else
{
    self.image_speed = 0
    self.image_index = 0
}
global.heartx = ((self.x + 2) - __view_get(e__VW.XView, 0))
global.hearty = ((self.y + 2) - __view_get(e__VW.YView, 0))
