draw_self()
if (self.angledraw == 1)
{
    if (self.throwready == 1)
    {
        if (self.throwalpha < 1)
            self.throwalpha = (self.throwalpha + 0.125)
        draw_set_alpha(self.throwalpha)
        draw_set_color(merge_color(0xFF0000, 0xFFFFFF, 0.5))
        self.i = 0
        while(true)
        {
            if (self.i < 12)
            {
                self.fr = 2
                draw_circle((self.rx + (self.lx * ((self.i * self.fr) + self.fro))), (((self.ry + (self.ly * ((self.i * self.fr) + self.fro))) + self.ralyoff[((self.i * self.fr) + self.fro)]) - 20), 4, 0)
                draw_line_width((self.rx + (self.lx * ((self.i * self.fr) + self.fro))), (((self.ry + (self.ly * ((self.i * self.fr) + self.fro))) + self.ralyoff[((self.i * self.fr) + self.fro)]) - 20), (self.rx + (self.lx * (((self.i + 1) * self.fr) + self.fro))), (((self.ry + (self.ly * (((self.i + 1) * self.fr) + self.fro))) + self.ralyoff[(((self.i + 1) * self.fr) + self.fro)]) - 20), 2)
                draw_sprite_ext(spr_throwarrow, 0, self.rx, (self.ry - 20), 2, 2, self.angle, 0x0000FF, 1)
                self.i = (self.i + 1)
                continue
            }
            break
        }
        draw_set_alpha(1)
    }
    if (self.throwready == 0)
    {
        draw_set_color(0x0000FF)
        draw_sprite_ext(spr_throwarrow, 0, self.rx, (self.ry - 20), 2, 2, self.angle, 0xFFFFFF, 1)
    }
}
