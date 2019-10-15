scr_84_set_draw_font("main"@1558)
if (self.BGMADE == 1)
{
    self.ANIM_SINER = (self.ANIM_SINER + 1)
    self.ANIM_SINER_B = (self.ANIM_SINER_B + 1)
    self.BG_SINER = (self.BG_SINER + 1)
    if (self.BG_ALPHA < 0.5)
        self.BG_ALPHA = (self.BG_ALPHA + (0.04 - (self.BG_ALPHA / 14)))
    if (self.BG_ALPHA > 0.5)
        self.BG_ALPHA = 0.5
    self.__WAVEHEIGHT = 240
    self.__WAVEWIDTH = 320
    self.i = 0
    while(true)
    {
        if (self.i < (self.__WAVEHEIGHT - 50))
        {
            self.__WAVEMINUS = ((self.BGMAGNITUDE * (self.i / self.__WAVEHEIGHT)) * 1.3)
            if (self.__WAVEMINUS > self.BGMAGNITUDE)
                self.__WAVEMAG = 0
            else
                self.__WAVEMAG = (self.BGMAGNITUDE - self.__WAVEMINUS)
            draw_background_part_ext(IMAGE_MENU, 0, self.i, self.__WAVEWIDTH, 1, (sin(((self.i / 8) + (self.BG_SINER / 30))) * self.__WAVEMAG), ((-10 + self.i) - (self.BG_ALPHA * 20)), 1, 1, self.image_blend, (self.BG_ALPHA * 0.8))
            draw_background_part_ext(IMAGE_MENU, 0, self.i, self.__WAVEWIDTH, 1, ((variable)(- sin(((self.i / 8) + (self.BG_SINER / 30)))) * self.__WAVEMAG), ((-10 + self.i) - (self.BG_ALPHA * 20)), 1, 1, self.image_blend, (self.BG_ALPHA * 0.8))
            self.i = (self.i + 1)
            continue
        }
        break
    }
    self.T_SINER_ADD = ((sin((self.ANIM_SINER_B / 10)) * 0.6) - 0.25)
    if (self.T_SINER_ADD >= 0)
        self.TRUE_ANIM_SINER = (self.TRUE_ANIM_SINER + self.T_SINER_ADD)
    draw_sprite_ext(IMAGE_MENU_ANIMATION, (self.ANIM_SINER / 12), 0, (((10 - (self.BG_ALPHA * 20)) + self.__WAVEHEIGHT) - 70), 1, 1, 0, self.image_blend, (self.BG_ALPHA * 0.46))
    draw_sprite_ext(IMAGE_MENU_ANIMATION, ((self.ANIM_SINER / 12) + 0.4), 0, (((10 - (self.BG_ALPHA * 20)) + self.__WAVEHEIGHT) - 70), 1, 1, 0, self.image_blend, (self.BG_ALPHA * 0.56))
    draw_sprite_ext(IMAGE_MENU_ANIMATION, ((self.ANIM_SINER / 12) + 0.8), 0, (((10 - (self.BG_ALPHA * 20)) + self.__WAVEHEIGHT) - 70), 1, 1, 0, self.image_blend, (self.BG_ALPHA * 0.7))
}
self.i = 0
while(true)
{
    if (self.i < 3)
    {
        self.CONT_THIS = 0
        self.PREV_MENU = self.MENU_NO
        if (self.MENU_NO == 1)
            self.PREV_MENU = 0
        if (self.MENU_NO == 4)
            self.PREV_MENU = 3
        if (self.MENU_NO == 6)
            self.PREV_MENU = 5
        if (self.MENU_NO == 7)
            self.PREV_MENU = 5
        if (self.MENUCOORD[0] == self.i)
            _temp_local_var_1 = (self.MENU_NO == 1)
        else
            _temp_local_var_1 = 0
        if _temp_local_var_1
            self.CONT_THIS = 1
        if (self.MENUCOORD[3] == self.i)
            _temp_local_var_2 = (self.MENU_NO == 4)
        else
            _temp_local_var_2 = 0
        if _temp_local_var_2
            self.CONT_THIS = 4
        if (self.MENUCOORD[5] == self.i)
            _temp_local_var_3 = (self.MENU_NO == 6)
        else
            _temp_local_var_3 = 0
        if _temp_local_var_3
            self.CONT_THIS = 6
        if (self.MENUCOORD[5] == self.i)
            _temp_local_var_4 = (self.MENU_NO == 7)
        else
            _temp_local_var_4 = 0
        if _temp_local_var_4
            self.CONT_THIS = 7
        self.BOX_X1 = 55
        self.BOX_Y1 = (55 + ((self.YL + self.YS) * self.i))
        self.BOX_X2 = (55 + self.XL)
        self.BOX_Y2 = ((55 + ((self.YL + self.YS) * self.i)) + self.YL)
        draw_set_alpha(0.5)
        draw_set_color(0x000000)
        draw_rectangle(self.BOX_X1, self.BOX_Y1, self.BOX_X2, self.BOX_Y2, 0)
        draw_set_alpha(1)
        draw_set_color(self.COL_A)
        if (self.MENUCOORD[self.PREV_MENU] == self.i)
            draw_set_color(self.COL_B)
        if (self.MENU_NO == 3)
            _temp_local_var_5 = 1
        else
            _temp_local_var_5 = (self.MENU_NO == 4)
        if _temp_local_var_5
        {
            if (self.MENUCOORD[2] == self.i)
                draw_set_color(self.COL_PLUS)
        }
        if (self.MENU_NO == 7)
            _temp_local_var_6 = (self.MENUCOORD[5] == self.i)
        else
            _temp_local_var_6 = 0
        if _temp_local_var_6
            draw_set_color(0x0000FF)
        draw_rectangle(self.BOX_X1, self.BOX_Y1, self.BOX_X2, self.BOX_Y2, 1)
        if (self.TYPE == 1)
        {
            self.j = 0
            while(true)
            {
                if (self.j < 4)
                {
                    draw_rectangle((self.BOX_X1 - (0.5 * self.j)), (self.BOX_Y1 - (0.5 * self.j)), (self.BOX_X2 + (0.5 * self.j)), (self.BOX_Y2 + (0.5 * self.j)), 1)
                    self.j = (self.j + 1)
                    continue
                }
                break
            }
        }
        if (self.CONT_THIS < 4)
        {
            if (self.FILE[self.i] == 0)
                scr_84_set_draw_font("main"@1558)
            else
            {
                if (self.INITLANG[self.i] == 0)
                    draw_set_font(fnt_main)
                else
                {
                    if (self.INITLANG[self.i] == 1)
                        draw_set_font(fnt_ja_main)
                }
            }
            draw_text_shadow((self.BOX_X1 + 25), (self.BOX_Y1 + 5), self.NAME[self.i])
            scr_84_set_draw_font("main"@1558)
            draw_set_halign(fa_right)
            draw_text_shadow((self.BOX_X1 + 180), (self.BOX_Y1 + 5), self.TIME_STRING[self.i])
            draw_set_halign(fa_left)
        }
        if (self.CONT_THIS >= 1)
        {
            if (self.TYPE == 0)
            {
                if (self.MENU_NO == 1)
                {
                    self.SELTEXT_C = " "@24
                    self.SELTEXT_A = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_116_0"@9804)
                    self.SELTEXT_B = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_116_1"@9806)
                    if (self.FILE[self.MENUCOORD[0]] == 0)
                    {
                        self.SELTEXT_A = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_117_0"@9808)
                        self.SELTEXT_B = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_117_1"@9809)
                    }
                }
                if (self.MENU_NO == 4)
                {
                    self.SELTEXT_A = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_119_0"@9810)
                    self.SELTEXT_B = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_119_1"@9811)
                    self.SELTEXT_C = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_119_2"@9812)
                }
                if (self.MENU_NO == 6)
                {
                    self.SELTEXT_A = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_120_0"@9813)
                    self.SELTEXT_B = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_120_1"@9814)
                    self.SELTEXT_C = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_120_2"@9815)
                }
                if (self.MENU_NO == 7)
                {
                    self.SELTEXT_A = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_121_0"@9816)
                    self.SELTEXT_B = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_121_1"@9817)
                    self.SELTEXT_C = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_121_2"@9818)
                }
            }
            else
            {
                if (self.MENU_NO == 1)
                {
                    self.SELTEXT_C = " "@24
                    self.SELTEXT_A = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_128_0"@9819)
                    self.SELTEXT_B = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_128_1"@9820)
                    if (self.FILE[self.MENUCOORD[0]] == 0)
                    {
                        self.SELTEXT_A = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_129_0"@9821)
                        self.SELTEXT_B = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_129_1"@9822)
                    }
                }
                if (self.MENU_NO == 4)
                {
                    self.SELTEXT_A = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_131_0"@9823)
                    self.SELTEXT_B = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_131_1"@9824)
                    self.SELTEXT_C = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_131_2"@9825)
                }
                if (self.MENU_NO == 6)
                {
                    self.SELTEXT_A = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_132_0"@9826)
                    self.SELTEXT_B = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_132_1"@9827)
                    self.SELTEXT_C = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_132_2"@9828)
                }
                if (self.MENU_NO == 7)
                {
                    self.SELTEXT_A = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_133_0"@9829)
                    self.SELTEXT_B = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_133_1"@9830)
                    self.SELTEXT_C = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_133_2"@9831)
                }
            }
            draw_set_color(self.COL_B)
            if (self.MENU_NO == 7)
                draw_set_color(0x0000FF)
            draw_text_shadow((self.BOX_X1 + 25), (self.BOX_Y1 + 5), self.SELTEXT_C)
            draw_set_color(self.COL_A)
            if (self.MENUCOORD[self.MENU_NO] == 0)
            {
                draw_set_color(self.COL_B)
                self.HEARTX = 75
                self.HEARTY = (81 + ((self.YL + self.YS) * self.MENUCOORD[self.PREV_MENU]))
            }
            draw_text_shadow((self.BOX_X1 + 35), (self.BOX_Y1 + 22), self.SELTEXT_A)
            draw_set_color(self.COL_A)
            if (self.MENUCOORD[self.MENU_NO] == 1)
            {
                draw_set_color(self.COL_B)
                self.HEARTX = 165
                self.HEARTY = (81 + ((self.YL + self.YS) * self.MENUCOORD[self.PREV_MENU]))
            }
            draw_text_shadow((self.BOX_X1 + 125), (self.BOX_Y1 + 22), self.SELTEXT_B)
        }
        else
            draw_text_shadow((self.BOX_X1 + 25), (self.BOX_Y1 + 22), self.PLACE[self.i])
        self.i = (self.i + 1)
        continue
    }
    break
}
if (self.MENU_NO >= 0)
{
    if (self.MENU_NO == 0)
        _temp_local_var_13 = 1
    else
    {
        if (self.MENU_NO == 2)
            _temp_local_var_13 = 1
        else
        {
            if (self.MENU_NO == 3)
                _temp_local_var_13 = 1
            else
                _temp_local_var_13 = (self.MENU_NO == 5)
        }
    }
    if _temp_local_var_13
    {
        if (self.MENUCOORD[self.MENU_NO] >= 0)
            _temp_local_var_14 = (self.MENUCOORD[self.MENU_NO] <= 2)
        else
            _temp_local_var_14 = 0
        if _temp_local_var_14
        {
            self.HEARTX = 65
            self.HEARTY = (72 + ((self.YL + self.YS) * self.MENUCOORD[self.MENU_NO]))
        }
        if (self.MENUCOORD[self.MENU_NO] == 3)
        {
            self.HEARTX = 65
            self.HEARTY = 195
        }
        if (self.MENUCOORD[self.MENU_NO] == 4)
        {
            self.HEARTX = 115
            self.HEARTY = 195
        }
        if (self.MENUCOORD[self.MENU_NO] == 5)
        {
            self.HEARTX = 175
            self.HEARTY = 195
        }
    }
    if (self.MENU_NO >= 2)
    {
        self.CANCELTEXT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_189_0"@9832)
        if (self.TYPE == 1)
            self.CANCELTEXT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_190_0"@9834)
        draw_set_color(self.COL_A)
        if (self.MENUCOORD[self.PREV_MENU] == 3)
            draw_set_color(self.COL_B)
        draw_text_shadow(80, 190, self.CANCELTEXT)
    }
    if (self.MENU_NO == 0)
        _temp_local_var_15 = 1
    else
        _temp_local_var_15 = (self.MENU_NO == 1)
    if _temp_local_var_15
    {
        self.COPYTEXT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_199_0"@9835)
        self.ERASETEXT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_200_0"@9837)
        if (global.lang == "ja"@1566)
        {
            self.LANGUAGETEXT = "ENGLISH"@9839
            if (self.TYPE == 1)
                self.LANGUAGETEXT = "English"@9841
        }
        else
        {
            self.LANGUAGETEXT = "JAPANESE"@9842
            if (self.TYPE == 1)
                self.LANGUAGETEXT = "Japanese"@9843
        }
        if (self.TYPE == 1)
        {
            self.COPYTEXT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_201_0"@9844)
            self.ERASETEXT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_201_1"@9845)
        }
        draw_set_color(self.COL_A)
        if (self.MENUCOORD[0] == 3)
            draw_set_color(self.COL_B)
        draw_text_shadow(80, 190, self.COPYTEXT)
        draw_set_color(self.COL_A)
        if (self.MENUCOORD[0] == 4)
            draw_set_color(self.COL_B)
        draw_text_shadow(130, 190, self.ERASETEXT)
        draw_set_color(self.COL_A)
        if (self.MENUCOORD[0] == 5)
            draw_set_color(self.COL_B)
        draw_text_shadow(190, 190, self.LANGUAGETEXT)
    }
    if (self.MESSAGETIMER <= 0)
    {
        if (self.TYPE == 0)
        {
            if (self.MENU_NO == 0)
                _temp_local_var_16 = 1
            else
                _temp_local_var_16 = (self.MENU_NO == 1)
            if _temp_local_var_16
                self.TEMPCOMMENT = " "@24
            if (self.MENU_NO == 2)
                self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_216_0"@9846)
            if (self.MENU_NO == 3)
                self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_217_0"@9847)
            if (self.MENU_NO == 4)
                self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_218_0"@9848)
            if (self.MENU_NO == 5)
                _temp_local_var_17 = 1
            else
            {
                if (self.MENU_NO == 6)
                    _temp_local_var_17 = 1
                else
                    _temp_local_var_17 = (self.MENU_NO == 7)
            }
            if _temp_local_var_17
                self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_219_0"@9849)
        }
        if (self.TYPE == 1)
        {
            if (self.MENU_NO == 0)
                _temp_local_var_18 = 1
            else
                _temp_local_var_18 = (self.MENU_NO == 1)
            if _temp_local_var_18
                self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_223_0"@9850)
            if (self.MENU_NO == 2)
                self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_224_0"@9851)
            if (self.MENU_NO == 3)
                self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_225_0"@9852)
            if (self.MENU_NO == 4)
                self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_226_0"@9853)
            if (self.MENU_NO == 5)
                _temp_local_var_19 = 1
            else
            {
                if (self.MENU_NO == 6)
                    _temp_local_var_19 = 1
                else
                    _temp_local_var_19 = (self.MENU_NO == 7)
            }
            if _temp_local_var_19
                self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_227_0"@9854)
        }
    }
    draw_set_color(self.COL_B)
    draw_text_shadow(40, 30, self.TEMPCOMMENT)
    self.MESSAGETIMER = (self.MESSAGETIMER - 1)
}
if (abs((self.HEARTX - self.HEARTXCUR)) <= 2)
    self.HEARTXCUR = self.HEARTX
if (abs((self.HEARTY - self.HEARTYCUR)) <= 2)
    self.HEARTYCUR = self.HEARTY
self.HEARTXCUR = (self.HEARTXCUR + ((self.HEARTX - self.HEARTXCUR) / 2))
self.HEARTYCUR = (self.HEARTYCUR + ((self.HEARTY - self.HEARTYCUR) / 2))
draw_sprite(spr_heartsmall, 0, self.HEARTXCUR, self.HEARTYCUR)
