self.cur_alpha = self.darkamt
if (self.darkamt < 0.6)
    self.darkamt += 0.04
if (self.tile_fade == 1)
{
    if (self.cur_alpha != self.darkamt)
    {
        for (var i = 0; i < array_length_1d(self.tilearray); i++)
            tile_set_alpha(self.tilearray[i], (self.darkamt * 2))
    }
}
draw_set_alpha(self.darkamt)
draw_set_color(0x00000000)
draw_rectangle((__view_get(0, 0) - 10), (__view_get(1, 0) - 10), (__view_get(0, 0) + 650), (__view_get(1, 0) + 650), 0)
draw_set_alpha(1)
