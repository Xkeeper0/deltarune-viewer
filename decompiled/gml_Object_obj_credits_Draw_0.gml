scr_84_set_draw_font("main"@1558)
draw_set_halign(fa_center)
draw_set_alpha(self.creditalpha)
self.i = 0
while(true)
{
    if (self.i < 8)
    {
        draw_set_color(self.linecolor[self.i])
        draw_text((__view_get(e__VW.XView, 0) + (__view_get(e__VW.WView, 0) / 2)), ((__view_get(e__VW.YView, 0) + (20 * self.i)) + 50), string_hash_to_newline(self.line[self.i]))
        self.i = (self.i + 1)
        continue
    }
    break
}
draw_set_alpha(self.textalpha)
draw_set_color(0x00FFFF)
draw_text((__view_get(e__VW.XView, 0) + (__view_get(e__VW.WView, 0) / 2)), (__view_get(e__VW.HView, 0) - 40), string_hash_to_newline(self.lyric))
draw_set_alpha(1)
draw_set_halign(fa_left)
