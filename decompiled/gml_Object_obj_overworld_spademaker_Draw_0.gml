self.cur_alpha = self.darkamt
if (self.darkamt < 0.6)
    self.darkamt = (self.darkamt + 0.04)
if (self.tile_fade == 1)
{
    if (self.cur_alpha != self.darkamt)
    {
        local.i = 0
        while(true)
        {
            if (local.i < array_length_1d(self.tilearray))
            {
                tile_set_alpha(self.tilearray[local.i], (self.darkamt * 2))
                local.i = (local.i + 1)
                continue
            }
            break
        }
    }
}
draw_set_alpha(self.darkamt)
draw_set_color(0x000000)
draw_rectangle((__view_get(e__VW.XView, 0) - 10), (__view_get(e__VW.YView, 0) - 10), (__view_get(e__VW.XView, 0) + 650), (__view_get(e__VW.YView, 0) + 650), 0)
draw_set_alpha(1)
