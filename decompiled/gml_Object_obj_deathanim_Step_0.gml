if (self.t == 0)
{
    self.truew = sprite_get_width(self.sprite_index)
    self.trueh = sprite_get_width(self.sprite_index)
    self.imgx = self.image_xscale
    self.imgy = self.image_yscale
    if ((self.truew >= 50) || (self.trueh >= 50))
        self.bsize = 8
    if ((self.truew >= 100) || (self.truew >= 100))
        self.bsize = 16
    self.xs = ceil((self.truew / self.bsize))
    self.ys = ceil((self.trueh / self.bsize))
    for (self.i = 0; self.i <= self.xs; self.i += 1)
    {
        for (self.j = 0; self.j <= self.ys; self.j += 1)
        {
            self.bl[self.i, self.j] = (self.i * self.bsize)
            self.bh[self.i, self.j] = (self.j * self.bsize)
            self.bx[self.i, self.j] = (self.x + ((self.i * self.bsize) * self.imgx))
            self.bspeed[self.i, self.j] = 0
            self.bsin[self.i, self.j] = ((4 + (self.j * 3)) - self.i)
        }
    }
}
if (self.t >= 1)
{
    if (self.redup < 10)
        self.redup += 1
    self.image_blend = merge_color(0x00FFFFFF, 0x000000FF, (self.redup / 10))
    for (self.i = 0; self.i <= self.xs; self.i += 1)
    {
        for (self.j = 0; self.j <= self.ys; self.j += 1)
        {
            if (self.bsin[self.i, self.j] <= 0)
                self.bspeed[self.i, self.j] += 1
            self.bx[self.i, self.j] += self.bspeed[self.i, self.j]
            self.bsin[self.i, self.j] -= 1
        }
    }
}
self.t += 1
