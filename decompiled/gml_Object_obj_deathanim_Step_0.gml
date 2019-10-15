if (self.t == 0)
{
    self.truew = sprite_get_width(self.sprite_index)
    self.trueh = sprite_get_width(self.sprite_index)
    self.imgx = self.image_xscale
    self.imgy = self.image_yscale
    if (self.truew >= 50)
        _temp_local_var_1 = 1
    else
        _temp_local_var_1 = (self.trueh >= 50)
    if _temp_local_var_1
        self.bsize = 8
    if (self.truew >= 100)
        _temp_local_var_2 = 1
    else
        _temp_local_var_2 = (self.truew >= 100)
    if _temp_local_var_2
        self.bsize = 16
    self.xs = ceil((self.truew / self.bsize))
    self.ys = ceil((self.trueh / self.bsize))
    self.i = 0
    while(true)
    {
        if (self.i <= self.xs)
        {
            self.j = 0
            while(true)
            {
                if (self.j <= self.ys)
                {
                    self.bl[self.i][self.j] = (self.i * self.bsize)
                    self.bh[self.i][self.j] = (self.j * self.bsize)
                    self.bx[self.i][self.j] = (self.x + ((self.i * self.bsize) * self.imgx))
                    self.bspeed[self.i][self.j] = 0
                    self.bsin[self.i][self.j] = ((4 + (self.j * 3)) - self.i)
                    self.j = (self.j + 1)
                    continue
                }
                break
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
}
if (self.t >= 1)
{
    if (self.redup < 10)
        self.redup = (self.redup + 1)
    self.image_blend = merge_color(0xFFFFFF, 0x0000FF, (self.redup / 10))
    self.i = 0
    while(true)
    {
        if (self.i <= self.xs)
        {
            self.j = 0
            while(true)
            {
                if (self.j <= self.ys)
                {
                    if (self.bsin[self.i][self.j] <= 0)
                        self.bspeed[self.i][self.j] = (self.bspeed[self.i][self.j] + 1)
                    self.bx[self.i][self.j] = (self.bx[self.i][self.j] + self.bspeed[self.i][self.j])
                    self.bsin[self.i][self.j] = (self.bsin[self.i][self.j] - 1)
                    self.j = (self.j + 1)
                    continue
                }
                break
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
}
self.t = (self.t + 1)
