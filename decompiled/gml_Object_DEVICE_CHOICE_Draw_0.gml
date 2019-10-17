scr_84_set_draw_font("main")
self.xfade = ((10 - self.fadebuffer) / 10)
if (self.xfade > 1)
    self.xfade = 1
if (self.TYPE <= 2)
{
    if (self.DRAWHEART == 1)
        draw_sprite_ext(IMAGE_SOUL_BLUR, 0, (self.HEARTX + self.xoff), (self.HEARTY + self.yoff), 1, 1, 0, 0x00FFFFFF, (0.6 * self.xfade))
    draw_set_alpha(self.xfade)
    if (self.TYPE < 2)
    {
        for (self.i = 0; self.i <= self.XMAX; self.i += 1)
        {
            draw_set_color(0x00FFFFFF)
            if (self.CURX == self.i)
                draw_set_color(0x0000FFFF)
            draw_text(self.NAMEX[self.i, 0], self.NAMEY[self.i, 0], string_hash_to_newline(self.NAME[self.i, 0]))
        }
    }
    if (self.TYPE == 2)
    {
        for (self.i = 0; self.i <= self.YMAX; self.i += 1)
        {
            draw_set_color(0x00FFFFFF)
            if (self.CURY == self.i)
                draw_set_color(0x0000FFFF)
            draw_text(self.NAMEX[0, self.i], self.NAMEY[0, self.i], string_hash_to_newline(self.NAME[0, self.i]))
        }
    }
    draw_set_alpha(1)
}
if (self.TYPE == 3)
{
    if (self.DRAWHEART == 1)
        draw_sprite_ext(IMAGE_SOUL_BLUR, 0, self.HEARTX, self.HEARTY, 1, 1, 0, 0x00FFFFFF, (0.5 * self.xfade))
    draw_set_alpha(self.xfade)
    for (self.j = 0; self.j <= self.YMAX; self.j += 1)
    {
        for (self.i = 0; self.i <= self.XMAX; self.i += 1)
        {
            draw_set_color(0x00FFFFFF)
            if ((self.CURX == self.i) && (self.CURY == self.j))
                draw_set_color(0x0000FFFF)
            var str = string_hash_to_newline(self.NAME[self.i, self.j])
            if ((string_char_at(str, 1) == "(") && (string_length(str) > 3))
                str = string_copy(str, 4, (string_length(str) - 3))
            if ((str != "<") && (str != ">"))
                draw_text(self.NAMEX[self.i, self.j], self.NAMEY[self.i, self.j], str)
        }
    }
    draw_set_color(0x00FFFFFF)
    if (string_length(self.NAMESTRING) == self.STRINGMAX)
        draw_set_color(0x0000FFFF)
    var width = string_width(self.NAMESTRING)
    draw_text(((320 - width) / 2), self.PLAYERNAMEY, string_hash_to_newline(self.NAMESTRING))
    draw_set_alpha(1)
}
