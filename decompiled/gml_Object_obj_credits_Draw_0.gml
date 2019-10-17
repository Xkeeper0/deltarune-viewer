scr_84_set_draw_font("main")
draw_set_halign(fa_center)
draw_set_alpha(self.creditalpha)
for (self.i = 0; self.i < 8; self.i += 1)
{
    draw_set_color(self.linecolor[self.i])
    draw_text((__view_get(0, 0) + (__view_get(2, 0) / 2)), ((__view_get(1, 0) + (20 * self.i)) + 50), string_hash_to_newline(self.line[self.i]))
}
draw_set_alpha(self.textalpha)
draw_set_color(0x0000FFFF)
draw_text((__view_get(0, 0) + (__view_get(2, 0) / 2)), (__view_get(3, 0) - 40), string_hash_to_newline(self.lyric))
draw_set_alpha(1)
draw_set_halign(fa_left)
