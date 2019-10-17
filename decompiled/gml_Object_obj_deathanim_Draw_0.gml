if (self.t == 0)
    draw_self()
if (self.t >= 1)
{
    for (self.i = 0; self.i <= self.xs; self.i += 1)
    {
        for (self.j = 0; self.j <= self.ys; self.j += 1)
            draw_sprite_part_ext(self.sprite_index, self.image_index, self.bl[self.i, self.j], self.bh[self.i, self.j], self.bsize, self.bsize, self.bx[self.i, self.j], (self.y + ((self.j * self.bsize) * self.imgy)), self.imgx, self.imgy, self.image_blend, (1 - (self.bspeed[self.i, self.j] / 12)))
    }
    if (self.bspeed[0, self.ys] >= 12)
        instance_destroy()
}
