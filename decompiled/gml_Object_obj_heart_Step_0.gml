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
    self.px = (-self.wspeed)
if (self.press_d == 1)
    self.py = self.wspeed
if (self.press_u == 1)
    self.py = (-self.wspeed)
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
        while (self.g > 0)
        {
            self.mvd = 0
            if ((self.press_d == 0) && (!place_meeting((self.x + self.px), (self.y - self.g), obj_battlesolid)))
            {
                self.y -= self.g
                self.py = 0
                break
            }
            else if ((self.press_u == 0) && ((self.mvd == 0) && (!place_meeting((self.x + self.px), (self.y + self.g), obj_battlesolid))))
            {
                self.y += self.g
                self.py = 0
                break
            }
            else
            {
                self.g -= 1
                continue
            }
        }
    }
    self.xmeet = 1
    self.bkx = 0
    if (self.px > 0)
    {
        self.i = self.px
        while (self.i >= 0)
        {
            if (!place_meeting((self.x + self.i), self.y, obj_battlesolid))
            {
                self.px = self.i
                self.bkx = 1
                break
            }
            else
            {
                self.i -= 1
                continue
            }
        }
    }
    if (self.px < 0)
    {
        self.i = self.px
        while (self.i <= 0)
        {
            if (!place_meeting((self.x + self.i), self.y, obj_battlesolid))
            {
                self.px = self.i
                self.bkx = 1
                break
            }
            else
            {
                self.i += 1
                continue
            }
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
        while (self.g > 0)
        {
            self.mvd = 0
            if ((self.press_r == 0) && (!place_meeting((self.x - self.g), (self.y + self.py), obj_battlesolid)))
            {
                self.x -= self.g
                self.px = 0
                break
            }
            else if ((self.mvd == 0) && ((self.press_l == 0) && (!place_meeting((self.x + self.g), (self.y + self.py), obj_battlesolid))))
            {
                self.x += self.g
                self.px = 0
                break
            }
            else
            {
                self.g -= 1
                continue
            }
        }
    }
    if (self.py > 0)
    {
        self.i = self.py
        while (self.i >= 0)
        {
            if (!place_meeting(self.x, (self.y + self.i), obj_battlesolid))
            {
                self.py = self.i
                self.bky = 1
                break
            }
            else
            {
                self.i -= 1
                continue
            }
        }
    }
    if (self.py < 0)
    {
        self.i = self.py
        while (self.i <= 0)
        {
            if (!place_meeting(self.x, (self.y + self.i), obj_battlesolid))
            {
                self.py = self.i
                self.bky = 1
                break
            }
            else
            {
                self.i += 1
                continue
            }
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
    while ((self.j != 0) || (self.i != 0))
    {
        if (!place_meeting((self.x + self.i), (self.y + self.j), obj_battlesolid))
        {
            self.px = self.i
            self.py = self.j
            self.bkxy = 1
			break
        }
        else
        {
            if (abs(self.j) >= 1)
            {
                if (self.j > 0)
                    self.j -= 1
                if (self.j < 0)
                    self.j += 1
            }
            else
                self.j = 0
            if (abs(self.i) >= 1)
            {
                if (self.i > 0)
                    self.i -= 1
                if (self.i < 0)
                    self.i += 1
            }
            else
                self.i = 0
            continue
        }
    }
    if (self.bkxy == 0)
    {
        self.px = 0
        self.py = 0
    }
}
if ((self.x + self.px) >= ((__view_get(0, 0) + 640) - self.sprite_width))
    self.px = (((__view_get(0, 0) + 640) - self.sprite_width) - self.x)
if ((self.x + self.px) <= 0)
    self.px = (-self.x)
if ((self.y + self.py) <= 0)
    self.py = (-self.y)
if ((self.y + self.py) >= (((__view_get(1, 0) + 320) - self.sprite_height) + self.boundaryup))
    self.py = ((((__view_get(1, 0) + 320) - self.sprite_height) - self.y) + self.boundaryup)
self.x += self.px
self.y += self.py
if (self.dmgnoise == 1)
{
    self.dmgnoise = 0
    snd_stop(snd_hurt1)
    snd_play(snd_hurt1)
}
global.inv -= 1
if (global.inv > 0)
    self.image_speed = 0.25
else
{
    self.image_speed = 0
    self.image_index = 0
}
global.heartx = ((self.x + 2) - __view_get(0, 0))
global.hearty = ((self.y + 2) - __view_get(1, 0))
