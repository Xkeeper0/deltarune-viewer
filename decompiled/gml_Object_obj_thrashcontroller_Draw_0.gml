if (self.logocon > 0)
{
    draw_set_color(0x00800000)
    draw_set_alpha((self.logoalpha / 1.5))
    draw_rectangle((self.xx + 40), (self.yy + 10), ((self.xx + self.ww) - 40), ((self.yy + self.hh) - 20), 0)
    draw_set_alpha(1)
    draw_sprite_ext(scr_84_get_sprite("spr_thrashlogo"), 0, ((self.xx + 40) + (self.logoalpha * 20)), (self.yy + 20), 2, 2, 0, 0x00FFFFFF, self.logoalpha)
    if (self.logocon == 1)
    {
        self.logoalpha += 0.05
        if (self.logoalpha >= 1)
            self.logocon = 2
    }
    if (self.logocon == 3)
    {
        self.logoalpha -= 0.05
        if (self.logoalpha <= 0)
            self.logocon = 4
    }
}
if ((self.introtimer >= 0) && (self.introtimer < 200))
{
    self.presented_xoff = 0
    self.madeup_xoff = 0
    if (global.lang == "ja")
        self.presented_xoff = -26
    if (global.lang == "ja")
        self.madeup_xoff = -6
    scr_84_set_draw_font("mainbig")
    draw_set_color(0x00FFFFFF)
    if ((self.introtimer >= 50) && (self.introtimer <= 70))
        self.textalpha1 += 0.05
    if ((self.introtimer >= 110) && (self.introtimer <= 130))
        self.textalpha2 += 0.05
    if (self.introtimer >= 180)
    {
        self.textalpha1 -= 0.05
        self.textalpha2 -= 0.05
    }
    draw_set_alpha(self.textalpha1)
    draw_text((((self.xx + self.presented_xoff) + 100) + (self.textalpha1 * 20)), (self.yy + 160), string_hash_to_newline(scr_84_get_lang_string("obj_thrashcontroller_slash_Draw_0_gml_39_0")))
    draw_set_alpha(self.textalpha2)
    draw_text((((self.xx + 100) + self.madeup_xoff) + (self.textalpha2 * 20)), (self.yy + 260), string_hash_to_newline(scr_84_get_lang_string("obj_thrashcontroller_slash_Draw_0_gml_41_0")))
    draw_set_alpha(1)
}
if (self.con >= 1)
{
    for (self.i = 0; self.i < 6; self.i += 1)
    {
        draw_sprite_ext(scr_84_get_sprite("spr_thrashstats"), self.i, (self.xx + 440), ((self.yy + 120) + (24 * self.i)), 2, 2, 0, self.statcolor[self.i], self.logoalpha)
        for (self.j = 0; self.j < self.stat[self.i]; self.j += 1)
            draw_sprite_ext(spr_thrashstar, self.i, ((self.xx + 510) + (self.j * 20)), ((self.yy + 120) + (24 * self.i)), 2, 2, 0, self.statcolor[self.i], self.logoalpha)
    }
    if ((self.menu >= 0) && (self.menu <= 3))
    {
        self.colorbar_xoff = 0
        if (global.lang == "ja")
            self.colorbar_xoff = 22
        self.left_xoff = 0
        if (global.lang == "ja")
            self.left_xoff = -26
        self.colorname_xoff = 0
        if (global.lang == "ja")
            self.colorname_xoff = (86 - self.left_xoff)
        for (self.i = 0; self.i < 4; self.i += 1)
        {
            for (self.j = 0; self.j < 2; self.j += 1)
            {
                draw_set_color(0x00FFFFFF)
                if ((self.menucoord1y == self.i) && (self.menucoord1x == self.j))
                {
                    draw_set_color(0x0000FFFF)
                    draw_sprite(spr_heart, 0, (((self.xx + 80) + self.left_xoff) + ((200 + self.colorname_xoff) * self.j)), ((self.yy + 310) + (self.i * 36)))
                }
                if ((self.j == 1) && (global.flag[(220 + self.i)] < 0))
                    draw_set_color(0x00404040)
                if (self.i == 3)
                {
                    if ((global.flag[220] < 0) || ((global.flag[221] < 0) || (global.flag[222] < 0)))
                        draw_set_color(0x00404040)
                }
                if ((self.j == 1) && (self.menu == (self.i + 1)))
                    draw_set_color(0x0000FFFF)
                draw_text((((self.xx + self.left_xoff) + 100) + ((self.colorname_xoff + 200) * self.j)), ((self.yy + 300) + (self.i * 36)), string_hash_to_newline(self.menutext1[self.j, self.i]))
            }
        }
        for (self.j = 0; self.j < 3; self.j += 1)
        {
            for (self.i = 0; self.i < 32; self.i += 1)
            {
                draw_set_color(self.precolor[self.i])
                draw_rectangle((((self.xx + 460) + (self.i * 3)) + self.colorbar_xoff), ((self.yy + 310) + (self.j * 36)), (((self.xx + 463) + (self.i * 3)) + self.colorbar_xoff), ((self.yy + 330) + (self.j * 36)), 0)
            }
            draw_set_color(0x00FFFFFF)
            if (self.menu != (self.j + 1))
            {
                draw_set_alpha(0.5)
                draw_set_color(0x00000000)
                draw_rectangle(((self.xx + 460) + self.colorbar_xoff), ((self.yy + 310) + (self.j * 36)), ((self.xx + 556) + self.colorbar_xoff), ((self.yy + 330) + (self.j * 36)), 0)
                draw_set_alpha(1)
                draw_set_color(0x00808080)
            }
            draw_rectangle((((self.xx + 460) + (global.flag[(223 + self.j)] * 3)) + self.colorbar_xoff), ((self.yy + 305) + (self.j * 36)), (((self.xx + 463) + (global.flag[(223 + self.j)] * 3)) + self.colorbar_xoff), ((self.yy + 315) + (self.j * 36)), 0)
        }
    }
    if ((self.menu >= 4) && (self.menu <= 6))
    {
        for (self.i = 0; self.i < 4; self.i += 1)
        {
            draw_set_color(0x00FFFFFF)
            draw_text((self.xx + 360), (self.yy + 300), string_hash_to_newline(self.assetdesc[(self.menu - 4), global.flag[(216 + self.menu)]]))
            if (self.menucoord2[(self.menu - 4)] == self.i)
            {
                draw_set_color(0x0000FFFF)
                draw_sprite(spr_heart, 0, (self.xx + 80), ((self.yy + 310) + (self.i * 36)))
            }
            draw_text((self.xx + 100), ((self.yy + 300) + (self.i * 36)), string_hash_to_newline(self.menutext2[(self.menu - 4), self.i]))
        }
    }
    if (self.menu == 7)
    {
        self.yoroshii_xoff = 0
        if (global.lang == "ja")
            self.yoroshii_xoff = -50
        self.endtext = scr_84_get_lang_string("obj_thrashcontroller_slash_Draw_0_gml_155_0")
        if ((global.flag[220] == 3) && ((global.flag[221] == 3) && (global.flag[222] == 3)))
            self.endtext = scr_84_get_lang_string("obj_thrashcontroller_slash_Draw_0_gml_158_0")
        draw_set_color(0x00FFFFFF)
        draw_text(((self.xx + 180) + self.yoroshii_xoff), (self.yy + 300), string_hash_to_newline(self.endtext))
        draw_set_color(0x00FFFFFF)
        if (self.endcoord == 0)
        {
            draw_set_color(0x0000FFFF)
            draw_sprite(spr_heart, 0, (self.xx + 220), (self.yy + 400))
        }
        draw_text((self.xx + 240), (self.yy + 390), string_hash_to_newline(scr_84_get_lang_string("obj_thrashcontroller_slash_Draw_0_gml_171_0")))
        if (self.endcoord == 1)
        {
            draw_set_color(0x0000FFFF)
            draw_sprite(spr_heart, 0, (self.xx + 360), (self.yy + 400))
        }
        draw_set_color(0x00FFFFFF)
        draw_text((self.xx + 380), (self.yy + 390), string_hash_to_newline(scr_84_get_lang_string("obj_thrashcontroller_slash_Draw_0_gml_180_0")))
    }
}
