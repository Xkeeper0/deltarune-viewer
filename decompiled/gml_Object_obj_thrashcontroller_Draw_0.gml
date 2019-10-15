if (self.logocon > 0)
{
    draw_set_color(0x800000)
    draw_set_alpha((self.logoalpha / 1.5))
    draw_rectangle((self.xx + 40), (self.yy + 10), ((self.xx + self.ww) - 40), ((self.yy + self.hh) - 20), 0)
    draw_set_alpha(1)
    draw_sprite_ext(scr_84_get_sprite("spr_thrashlogo"@3391), 0, ((self.xx + 40) + (self.logoalpha * 20)), (self.yy + 20), 2, 2, 0, 0xFFFFFF, self.logoalpha)
    if (self.logocon == 1)
    {
        self.logoalpha = (self.logoalpha + 0.05)
        if (self.logoalpha >= 1)
            self.logocon = 2
    }
    if (self.logocon == 3)
    {
        self.logoalpha = (self.logoalpha - 0.05)
        if (self.logoalpha <= 0)
            self.logocon = 4
    }
}
if (self.introtimer >= 0)
    _temp_local_var_1 = (self.introtimer < 200)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    self.presented_xoff = 0
    self.madeup_xoff = 0
    if (global.lang == "ja"@1566)
        self.presented_xoff = -26
    if (global.lang == "ja"@1566)
        self.madeup_xoff = -6
    scr_84_set_draw_font("mainbig"@1561)
    draw_set_color(0xFFFFFF)
    if (self.introtimer >= 50)
        _temp_local_var_2 = (self.introtimer <= 70)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
        self.textalpha1 = (self.textalpha1 + 0.05)
    if (self.introtimer >= 110)
        _temp_local_var_3 = (self.introtimer <= 130)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
        self.textalpha2 = (self.textalpha2 + 0.05)
    if (self.introtimer >= 180)
    {
        self.textalpha1 = (self.textalpha1 - 0.05)
        self.textalpha2 = (self.textalpha2 - 0.05)
    }
    draw_set_alpha(self.textalpha1)
    draw_text((((self.xx + self.presented_xoff) + 100) + (self.textalpha1 * 20)), (self.yy + 160), string_hash_to_newline(scr_84_get_lang_string("obj_thrashcontroller_slash_Draw_0_gml_39_0"@4571)))
    draw_set_alpha(self.textalpha2)
    draw_text((((self.xx + 100) + self.madeup_xoff) + (self.textalpha2 * 20)), (self.yy + 260), string_hash_to_newline(scr_84_get_lang_string("obj_thrashcontroller_slash_Draw_0_gml_41_0"@4572)))
    draw_set_alpha(1)
}
if (self.con >= 1)
{
    self.i = 0
    while(true)
    {
        if (self.i < 6)
        {
            draw_sprite_ext(scr_84_get_sprite("spr_thrashstats"@3392), self.i, (self.xx + 440), ((self.yy + 120) + (24 * self.i)), 2, 2, 0, self.statcolor[self.i], self.logoalpha)
            self.j = 0
            while(true)
            {
                if (self.j < self.stat[self.i])
                {
                    draw_sprite_ext(spr_thrashstar, self.i, ((self.xx + 510) + (self.j * 20)), ((self.yy + 120) + (24 * self.i)), 2, 2, 0, self.statcolor[self.i], self.logoalpha)
                    self.j = (self.j + 1)
                    continue
                }
                break
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
    if (self.menu >= 0)
        _temp_local_var_4 = (self.menu <= 3)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
    {
        self.colorbar_xoff = 0
        if (global.lang == "ja"@1566)
            self.colorbar_xoff = 22
        self.left_xoff = 0
        if (global.lang == "ja"@1566)
            self.left_xoff = -26
        self.colorname_xoff = 0
        if (global.lang == "ja"@1566)
            self.colorname_xoff = (86 - self.left_xoff)
        self.i = 0
        while(true)
        {
            if (self.i < 4)
            {
                self.j = 0
                while(true)
                {
                    if (self.j < 2)
                    {
                        draw_set_color(0xFFFFFF)
                        if (self.menucoord1y == self.i)
                            _temp_local_var_5 = (self.menucoord1x == self.j)
                        else
                            _temp_local_var_5 = 0
                        if _temp_local_var_5
                        {
                            draw_set_color(0x00FFFF)
                            draw_sprite(spr_heart, 0, (((self.xx + 80) + self.left_xoff) + ((200 + self.colorname_xoff) * self.j)), ((self.yy + 310) + (self.i * 36)))
                        }
                        if (self.j == 1)
                            _temp_local_var_6 = (global.flag[(220 + self.i)] < 0)
                        else
                            _temp_local_var_6 = 0
                        if _temp_local_var_6
                            draw_set_color(0x404040)
                        if (self.i == 3)
                        {
                            if (global.flag[220] < 0)
                                _temp_local_var_7 = 1
                            else
                            {
                                if (global.flag[221] < 0)
                                    _temp_local_var_7 = 1
                                else
                                    _temp_local_var_7 = (global.flag[222] < 0)
                            }
                            if _temp_local_var_7
                                draw_set_color(0x404040)
                        }
                        if (self.j == 1)
                            _temp_local_var_8 = (self.menu == (self.i + 1))
                        else
                            _temp_local_var_8 = 0
                        if _temp_local_var_8
                            draw_set_color(0x00FFFF)
                        draw_text((((self.xx + self.left_xoff) + 100) + ((self.colorname_xoff + 200) * self.j)), ((self.yy + 300) + (self.i * 36)), string_hash_to_newline(self.menutext1[self.j][self.i]))
                        self.j = (self.j + 1)
                        continue
                    }
                    break
                }
                self.i = (self.i + 1)
                continue
            }
            break
        }
        self.j = 0
        while(true)
        {
            if (self.j < 3)
            {
                self.i = 0
                while(true)
                {
                    if (self.i < 32)
                    {
                        draw_set_color(self.precolor[self.i])
                        draw_rectangle((((self.xx + 460) + (self.i * 3)) + self.colorbar_xoff), ((self.yy + 310) + (self.j * 36)), (((self.xx + 463) + (self.i * 3)) + self.colorbar_xoff), ((self.yy + 330) + (self.j * 36)), 0)
                        self.i = (self.i + 1)
                        continue
                    }
                    break
                }
                draw_set_color(0xFFFFFF)
                if (self.menu != (self.j + 1))
                {
                    draw_set_alpha(0.5)
                    draw_set_color(0x000000)
                    draw_rectangle(((self.xx + 460) + self.colorbar_xoff), ((self.yy + 310) + (self.j * 36)), ((self.xx + 556) + self.colorbar_xoff), ((self.yy + 330) + (self.j * 36)), 0)
                    draw_set_alpha(1)
                    draw_set_color(0x808080)
                }
                draw_rectangle((((self.xx + 460) + (global.flag[(223 + self.j)] * 3)) + self.colorbar_xoff), ((self.yy + 305) + (self.j * 36)), (((self.xx + 463) + (global.flag[(223 + self.j)] * 3)) + self.colorbar_xoff), ((self.yy + 315) + (self.j * 36)), 0)
                self.j = (self.j + 1)
                continue
            }
            break
        }
    }
    if (self.menu >= 4)
        _temp_local_var_13 = (self.menu <= 6)
    else
        _temp_local_var_13 = 0
    if _temp_local_var_13
    {
        self.i = 0
        while(true)
        {
            if (self.i < 4)
            {
                draw_set_color(0xFFFFFF)
                draw_text((self.xx + 360), (self.yy + 300), string_hash_to_newline(self.assetdesc[(self.menu - 4)][global.flag[(216 + self.menu)]]))
                if (self.menucoord2[(self.menu - 4)] == self.i)
                {
                    draw_set_color(0x00FFFF)
                    draw_sprite(spr_heart, 0, (self.xx + 80), ((self.yy + 310) + (self.i * 36)))
                }
                draw_text((self.xx + 100), ((self.yy + 300) + (self.i * 36)), string_hash_to_newline(self.menutext2[(self.menu - 4)][self.i]))
                self.i = (self.i + 1)
                continue
            }
            break
        }
    }
    if (self.menu == 7)
    {
        self.yoroshii_xoff = 0
        if (global.lang == "ja"@1566)
            self.yoroshii_xoff = -50
        self.endtext = scr_84_get_lang_string("obj_thrashcontroller_slash_Draw_0_gml_155_0"@4577)
        if (global.flag[220] == 3)
        {
            if (global.flag[221] == 3)
                _temp_local_var_14 = (global.flag[222] == 3)
            else
                _temp_local_var_14 = 0
        }
        else
            _temp_local_var_14 = 0
        if _temp_local_var_14
            self.endtext = scr_84_get_lang_string("obj_thrashcontroller_slash_Draw_0_gml_158_0"@4579)
        draw_set_color(0xFFFFFF)
        draw_text(((self.xx + 180) + self.yoroshii_xoff), (self.yy + 300), string_hash_to_newline(self.endtext))
        draw_set_color(0xFFFFFF)
        if (self.endcoord == 0)
        {
            draw_set_color(0x00FFFF)
            draw_sprite(spr_heart, 0, (self.xx + 220), (self.yy + 400))
        }
        draw_text((self.xx + 240), (self.yy + 390), string_hash_to_newline(scr_84_get_lang_string("obj_thrashcontroller_slash_Draw_0_gml_171_0"@4580)))
        if (self.endcoord == 1)
        {
            draw_set_color(0x00FFFF)
            draw_sprite(spr_heart, 0, (self.xx + 360), (self.yy + 400))
        }
        draw_set_color(0xFFFFFF)
        draw_text((self.xx + 380), (self.yy + 390), string_hash_to_newline(scr_84_get_lang_string("obj_thrashcontroller_slash_Draw_0_gml_180_0"@4581)))
    }
}
