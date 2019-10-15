self.trimax = 8
self.blackon = 0
self.curx = __view_get(e__VW.XView, 0)
self.curl = (0 + self.bgx)
if (self.bgx >= 640)
    self.bgx = (self.bgx - 640)
self.curscale = 1
self.tempscale = 0
self.curw = 5
if (self.on == 1)
{
    if (self.bgalpha < 1)
        self.bgalpha = (self.bgalpha + 0.02)
}
if (self.on == 0)
{
    if (self.bgalpha > 0)
        self.bgalpha = (self.bgalpha - 0.02)
}
self.i = 0
while(true)
{
    if (self.i < 16)
    {
        draw_sprite_part_ext(spr_carouselbg, 0, self.curl, 0, self.curw, 300, self.curx, ((variable)(- self.i) + __view_get(e__VW.YView, 0)), self.curscale, 1, self.dkblue3, self.bgalpha)
        self.tempscale = (1 + (0.5 * self.i))
        self.curscale = floor(self.tempscale)
        self.curl = (self.curl + 5)
        if (self.curl >= 640)
            self.curl = (self.curl - 640)
        self.curw = 5
        self.curx = (self.curx + ((5 * self.curscale) - 5))
        self.i = (self.i + 1)
        continue
    }
    break
}
self.i = 16
while(true)
{
    if (self.i > 0)
    {
        draw_sprite_part_ext(spr_carouselbg, 0, self.curl, 0, self.curw, 380, self.curx, ((variable)(- self.i) + __view_get(e__VW.YView, 0)), self.curscale, 1, self.dkblue3, self.bgalpha)
        self.tempscale = (1 + (0.5 * self.i))
        if (self.tempscale < 1)
            self.tempscale = 1
        self.curscale = ceil(self.tempscale)
        self.curl = (self.curl + 5)
        if (self.curl >= 640)
            self.curl = (self.curl - 640)
        self.curw = 5
        self.curx = (self.curx + ((5 * self.curscale) - 5))
        self.i = (self.i - 1)
        continue
    }
    break
}
self.i = 0
while(true)
{
    if (self.i < self.trimax)
    {
        event_user(0)
        draw_triangle(self.xcen, self.ycen, (self.xcen + self.newx1), (self.ycen + self.newy1), (self.xcen + self.newx2), (self.ycen + self.newy2), 0)
        self.i = (self.i + 1)
        continue
    }
    break
}
self.i = 0
while(true)
{
    if (self.i < 8)
    {
        event_user(0)
        self.ng = 0
        if (self.newy1 > 0)
            _temp_local_var_1 = 1
        else
            _temp_local_var_1 = (self.newy2 > 0)
        if _temp_local_var_1
        {
            if (self.newx2 > (self.newx1 - 48))
                draw_triangle(self.xcen, (self.ycen - 80), (self.xcen + (self.newx1 / 6)), (self.ycen + (self.newy1 / 6)), (self.xcen + (self.newx2 / 6)), (self.ycen + (self.newy2 / 6)), 0)
        }
        self.i = (self.i + 1)
        continue
    }
    break
}
self.i = 8
while(true)
{
    if (self.i >= 0)
    {
        event_user(0)
        if (self.newy1 > 0)
            _temp_local_var_3 = 1
        else
            _temp_local_var_3 = (self.newy2 > 0)
        if _temp_local_var_3
            draw_triangle(self.xcen, (self.ycen - 80), (self.xcen + (self.newx1 / 4)), ((self.ycen + self.newy1) - 380), (self.xcen + (self.newx2 / 4)), ((self.ycen + self.newy2) - 380), 0)
        self.i = (self.i - 1)
        continue
    }
    break
}
self.i = 0
while(true)
{
    if (self.i < self.trimax)
    {
        event_user(0)
        draw_triangle(self.xcen, (self.ycen - 320), (self.xcen + self.newx1), ((self.ycen + self.newy1) - 320), (self.xcen + self.newx2), ((self.ycen + self.newy2) - 320), 0)
        self.i = (self.i + 1)
        continue
    }
    break
}
self.siner = (self.siner + 2)
if (self.on == 1)
    self.rotcounter = (self.rotcounter + 1)
if (self.rotcounter >= self.rotfps)
    _temp_local_var_5 = (self.on == 1)
else
    _temp_local_var_5 = 0
if _temp_local_var_5
{
    if (self.on == 1)
        _temp_local_var_6 = (self.rotspeed < 1)
    else
        _temp_local_var_6 = 0
    if _temp_local_var_6
        self.rotspeed = (self.rotspeed + 0.1)
    self.bgx = (self.bgx + (1 * self.rotfps))
    self.rot = (self.rot + ((2.5 * self.rotfps) * self.rotspeed))
    self.rotcounter = 0
}
