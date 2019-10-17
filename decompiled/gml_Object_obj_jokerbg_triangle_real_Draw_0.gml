self.trimax = 8
self.blackon = 0
self.curx = __view_get(0, 0)
self.curl = (0 + self.bgx)
if (self.bgx >= 640)
    self.bgx -= 640
self.curscale = 1
self.tempscale = 0
self.curw = 5
if (self.on == 1)
{
    if (self.bgalpha < 1)
        self.bgalpha += 0.02
}
if (self.on == 0)
{
    if (self.bgalpha > 0)
        self.bgalpha -= 0.02
}
for (self.i = 0; self.i < 16; self.i += 1)
{
    draw_sprite_part_ext(spr_carouselbg, 0, self.curl, 0, self.curw, 300, self.curx, ((-self.i) + __view_get(1, 0)), self.curscale, 1, self.dkblue3, self.bgalpha)
    self.tempscale = (1 + (0.5 * self.i))
    self.curscale = floor(self.tempscale)
    self.curl += 5
    if (self.curl >= 640)
        self.curl -= 640
    self.curw = 5
    self.curx += ((5 * self.curscale) - 5)
}
for (self.i = 16; self.i > 0; self.i -= 1)
{
    draw_sprite_part_ext(spr_carouselbg, 0, self.curl, 0, self.curw, 380, self.curx, ((-self.i) + __view_get(1, 0)), self.curscale, 1, self.dkblue3, self.bgalpha)
    self.tempscale = (1 + (0.5 * self.i))
    if (self.tempscale < 1)
        self.tempscale = 1
    self.curscale = ceil(self.tempscale)
    self.curl += 5
    if (self.curl >= 640)
        self.curl -= 640
    self.curw = 5
    self.curx += ((5 * self.curscale) - 5)
}
for (self.i = 0; self.i < self.trimax; self.i += 1)
{
    event_user(0)
    draw_triangle(self.xcen, self.ycen, (self.xcen + self.newx1), (self.ycen + self.newy1), (self.xcen + self.newx2), (self.ycen + self.newy2), 0)
}
for (self.i = 0; self.i < 8; self.i += 1)
{
    event_user(0)
    self.ng = 0
    if ((self.newy1 > 0) || (self.newy2 > 0))
    {
        if (self.newx2 > (self.newx1 - 48))
            draw_triangle(self.xcen, (self.ycen - 80), (self.xcen + (self.newx1 / 6)), (self.ycen + (self.newy1 / 6)), (self.xcen + (self.newx2 / 6)), (self.ycen + (self.newy2 / 6)), 0)
    }
}
for (self.i = 8; self.i >= 0; self.i -= 1)
{
    event_user(0)
    if ((self.newy1 > 0) || (self.newy2 > 0))
        draw_triangle(self.xcen, (self.ycen - 80), (self.xcen + (self.newx1 / 4)), ((self.ycen + self.newy1) - 380), (self.xcen + (self.newx2 / 4)), ((self.ycen + self.newy2) - 380), 0)
}
for (self.i = 0; self.i < self.trimax; self.i += 1)
{
    event_user(0)
    draw_triangle(self.xcen, (self.ycen - 320), (self.xcen + self.newx1), ((self.ycen + self.newy1) - 320), (self.xcen + self.newx2), ((self.ycen + self.newy2) - 320), 0)
}
self.siner += 2
if (self.on == 1)
    self.rotcounter += 1
if ((self.rotcounter >= self.rotfps) && (self.on == 1))
{
    if ((self.on == 1) && (self.rotspeed < 1))
        self.rotspeed += 0.1
    self.bgx += (1 * self.rotfps)
    self.rot += ((2.5 * self.rotfps) * self.rotspeed)
    self.rotcounter = 0
}
