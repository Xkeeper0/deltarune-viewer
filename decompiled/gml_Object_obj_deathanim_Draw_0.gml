if (self.t == 0)
    draw_self()
if (self.t >= 1)
{
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
                    draw_sprite_part_ext(self.sprite_index, self.image_index, self.bl[self.i][self.j], self.bh[self.i][self.j], self.bsize, self.bsize, self.bx[self.i][self.j], (self.y + ((self.j * self.bsize) * self.imgy)), self.imgx, self.imgy, self.image_blend, (1 - (self.bspeed[self.i][self.j] / 12)))
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
    if (self.bspeed[0][self.ys] >= 12)
        instance_destroy()
}
