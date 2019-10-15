scr_84_set_draw_font("main"@1558)
self.xfade = ((10 - self.fadebuffer) / 10)
if (self.xfade > 1)
    self.xfade = 1
if (self.TYPE <= 2)
{
    if (self.DRAWHEART == 1)
        draw_sprite_ext(IMAGE_SOUL_BLUR, 0, (self.HEARTX + self.xoff), (self.HEARTY + self.yoff), 1, 1, 0, 0xFFFFFF, (0.6 * self.xfade))
    draw_set_alpha(self.xfade)
    if (self.TYPE < 2)
    {
        self.i = 0
        while(true)
        {
            if (self.i <= self.XMAX)
            {
                draw_set_color(0xFFFFFF)
                if (self.CURX == self.i)
                    draw_set_color(0x00FFFF)
                draw_text(self.NAMEX[self.i][0], self.NAMEY[self.i][0], string_hash_to_newline(self.NAME[self.i][0]))
                self.i = (self.i + 1)
                continue
            }
            break
        }
    }
    if (self.TYPE == 2)
    {
        self.i = 0
        while(true)
        {
            if (self.i <= self.YMAX)
            {
                draw_set_color(0xFFFFFF)
                if (self.CURY == self.i)
                    draw_set_color(0x00FFFF)
                draw_text(self.NAMEX[0][self.i], self.NAMEY[0][self.i], string_hash_to_newline(self.NAME[0][self.i]))
                self.i = (self.i + 1)
                continue
            }
            break
        }
    }
    draw_set_alpha(1)
}
if (self.TYPE == 3)
{
    if (self.DRAWHEART == 1)
        draw_sprite_ext(IMAGE_SOUL_BLUR, 0, self.HEARTX, self.HEARTY, 1, 1, 0, 0xFFFFFF, (0.5 * self.xfade))
    draw_set_alpha(self.xfade)
    self.j = 0
    while(true)
    {
        if (self.j <= self.YMAX)
        {
            self.i = 0
            while(true)
            {
                if (self.i <= self.XMAX)
                {
                    draw_set_color(0xFFFFFF)
                    if (self.CURX == self.i)
                        _temp_local_var_1 = (self.CURY == self.j)
                    else
                        _temp_local_var_1 = 0
                    if _temp_local_var_1
                        draw_set_color(0x00FFFF)
                    local.str = string_hash_to_newline(self.NAME[self.i][self.j])
                    if (string_char_at(local.str, 1) == "("@9525)
                        _temp_local_var_2 = (string_length(local.str) > 3)
                    else
                        _temp_local_var_2 = 0
                    if _temp_local_var_2
                        local.str = string_copy(local.str, 4, (string_length(local.str) - 3))
                    if (local.str != "<"@9516)
                        _temp_local_var_3 = (local.str != ">"@9515)
                    else
                        _temp_local_var_3 = 0
                    if _temp_local_var_3
                        draw_text(self.NAMEX[self.i][self.j], self.NAMEY[self.i][self.j], local.str)
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
            self.j = (self.j + 1)
            continue
        }
        break
    }
    draw_set_color(0xFFFFFF)
    if (string_length(self.NAMESTRING) == self.STRINGMAX)
        draw_set_color(0x00FFFF)
    local.width = string_width(self.NAMESTRING)
    draw_text(((320 - local.width) / 2), self.PLAYERNAMEY, string_hash_to_newline(self.NAMESTRING))
    draw_set_alpha(1)
}
