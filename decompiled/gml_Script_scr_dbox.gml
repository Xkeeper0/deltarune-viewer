self.xxx = __view_get(e__VW.XView, 0)
self.yyy = __view_get(e__VW.YView, 0)
if (global.darkzone == 0)
{
    if (self.side == 0)
    {
        draw_set_color(0xFFFFFF)
        draw_rectangle((self.xxx + 16), (self.yyy + 5), (self.xxx + 304), (self.yyy + 80), 0)
        draw_set_color(0x000000)
        draw_rectangle((self.xxx + 19), (self.yyy + 8), (self.xxx + 301), (self.yyy + 77), 0)
    }
    else
    {
        draw_set_color(0xFFFFFF)
        draw_rectangle((self.xxx + 16), (self.yyy + 160), (self.xxx + 304), (self.yyy + 235), 0)
        draw_set_color(0x000000)
        draw_rectangle((self.xxx + 19), (self.yyy + 163), (self.xxx + 301), (self.yyy + 232), 0)
    }
}
if (global.darkzone == 1)
{
    if (self.side == 0)
    {
        draw_set_color(0x000000)
        draw_rectangle((self.xxx + 38), (self.yyy + 16), (self.xxx + 602), (self.yyy + 154), 0)
        scr_darkbox(((self.xxx + 32) - 8), ((self.yyy + 10) - 8), ((self.xxx + 608) + 8), ((self.yyy + 160) + 8))
    }
    else
    {
        draw_set_color(0x000000)
        draw_rectangle((self.xxx + 38), (self.yyy + 326), (self.xxx + 602), (self.yyy + 464), 0)
        scr_darkbox(((self.xxx + 32) - 8), ((self.yyy + 320) - 8), ((self.xxx + 608) + 8), ((self.yyy + 470) + 8))
    }
}
