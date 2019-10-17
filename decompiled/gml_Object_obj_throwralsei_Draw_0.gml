draw_self()
if (self.angledraw == 1)
{
    if (self.throwready == 1)
    {
        if (self.throwalpha < 1)
            self.throwalpha += 0.125
        draw_set_alpha(self.throwalpha)
        draw_set_color(merge_color(0x00FF0000, 0x00FFFFFF, 0.5))
        for (self.i = 0; self.i < 12; self.i += 1)
        {
            self.fr = 2
            draw_circle((self.rx + (self.lx * ((self.i * self.fr) + self.fro))), (((self.ry + (self.ly * ((self.i * self.fr) + self.fro))) + self.ralyoff[((self.i * self.fr) + self.fro)]) - 20), 4, 0)
            draw_line_width((self.rx + (self.lx * ((self.i * self.fr) + self.fro))), (((self.ry + (self.ly * ((self.i * self.fr) + self.fro))) + self.ralyoff[((self.i * self.fr) + self.fro)]) - 20), (self.rx + (self.lx * (((self.i + 1) * self.fr) + self.fro))), (((self.ry + (self.ly * (((self.i + 1) * self.fr) + self.fro))) + self.ralyoff[(((self.i + 1) * self.fr) + self.fro)]) - 20), 2)
            draw_sprite_ext(spr_throwarrow, 0, self.rx, (self.ry - 20), 2, 2, self.angle, 0x000000FF, 1)
        }
        draw_set_alpha(1)
    }
    if (self.throwready == 0)
    {
        draw_set_color(0x000000FF)
        draw_sprite_ext(spr_throwarrow, 0, self.rx, (self.ry - 20), 2, 2, self.angle, 0x00FFFFFF, 1)
    }
}
