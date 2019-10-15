if scr_debug()
{
    draw_set_font(fnt_main)
    draw_set_color(0x0000FF)
    draw_text(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), self.fps)
}
