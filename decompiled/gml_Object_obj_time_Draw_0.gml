if scr_debug()
{
    draw_set_font(fnt_main)
    draw_set_color(0x000000FF)
    draw_text(__view_get(0, 0), __view_get(1, 0), self.fps)
}
