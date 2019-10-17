var ch_y;
self.xx = __view_get(0, 0)
self.yy = __view_get(1, 0)
self.tpoff = ((self.tp - self.tpy) + self.yy)
self.bpoff = (((-self.bp) + self.bpy) + self.yy)
if (self.drawchar == 1)
{
    draw_set_color(0x00000000)
    draw_rectangle((self.xx - 10), ((self.yy + 480) - self.bp), (self.xx + 650), (self.yy + 500), 0)
    draw_set_color(0x00000000)
    draw_rectangle((self.xx - 10), (self.yy + self.tp), (self.xx + 650), (self.yy - 10), 0)
    scr_charbox()
    if (global.menuno == 0)
        self.deschaver = 0
    if (self.deschaver == 0)
    {
        draw_sprite_ext(scr_84_get_sprite("spr_darkmenudesc"), global.menucoord[0], (self.xx + 20), ((self.yy + self.tp) - 56), 2, 2, 0, 0x00FFFFFF, 1)
        self.msprite[0] = spr_darkitembt
        self.msprite[1] = spr_darkequipbt
        self.msprite[2] = spr_darktalkbt
        self.msprite[3] = spr_darktechbt
        self.msprite[4] = spr_darkconfigbt
        for (self.i = 0; self.i < 5; self.i += 1)
        {
            self.off = 1
            if (global.menucoord[0] == self.i)
                self.off = 0
            if ((global.menuno - 1) == self.i)
                self.off = 2
            self.spritemx = 0
            if (self.i >= 2)
                self.spritemx = -100
            if (self.i != 2)
                draw_sprite_ext(self.msprite[self.i], self.off, (((self.xx + 120) + (self.i * 100)) + self.spritemx), ((self.yy + self.tp) - 60), 2, 2, 0, 0x00FFFFFF, 1)
        }
        draw_set_color(0x00FFFFFF)
        scr_84_set_draw_font("mainbig")
        draw_text((self.xx + 520), ((self.yy + self.tp) - 60), string_hash_to_newline((scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_47_0") + string(global.gold))))
    }
}
if (global.menuno == 5)
{
    draw_set_color(0x00000000)
    draw_rectangle((self.xx + 60), (self.yy + 90), (self.xx + 580), (self.yy + 410), 0)
    scr_darkbox((self.xx + 50), (self.yy + 80), (self.xx + 590), (self.yy + 420))
    if ((global.submenu >= 30) && (global.submenu <= 33))
    {
        draw_set_color(0x00FFFFFF)
        draw_text((self.xx + 270), (self.yy + 100), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_74_0")))
        self.audvol = (string(abs((global.flag[17] * 100))) + "%")
        self.musvol = (string(abs((global.flag[16] * 100))) + "%")
        self.runoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_79_0")
        if (global.flag[11] == 1)
            self.runoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_79_1")
        self.flashoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_80_0")
        if (global.flag[8] == 1)
            self.flashoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_80_1")
        self.shakeoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_81_0")
        if (global.flag[12] == 1)
            self.shakeoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_81_1")
        self.fullscreenoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_82_0")
        if window_get_fullscreen()
            self.fullscreenoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_82_1")
        draw_sprite(spr_heart, 0, (self.xx + 145), ((self.yy + 160) + (global.submenucoord[30] * 35)))
        if (global.submenu == 33)
            draw_set_color(0x0000FFFF)
        draw_text((self.xx + 170), (self.yy + 150), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_86_0")))
        draw_text((self.xx + 430), (self.yy + 150), string_hash_to_newline(self.audvol))
        draw_set_color(0x00FFFFFF)
        draw_text((self.xx + 170), (self.yy + 185), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_91_0")))
        draw_text((self.xx + 170), (self.yy + 220), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_92_0")))
        draw_text((self.xx + 430), (self.yy + 220), string_hash_to_newline(self.flashoff))
        draw_text((self.xx + 170), (self.yy + 255), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_93_0")))
        draw_text((self.xx + 430), (self.yy + 255), string_hash_to_newline(self.fullscreenoff))
        draw_text((self.xx + 170), (self.yy + 290), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_94_0")))
        draw_text((self.xx + 430), (self.yy + 290), string_hash_to_newline(self.runoff))
        draw_text((self.xx + 170), (self.yy + 325), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_95_0")))
        draw_text((self.xx + 170), (self.yy + 360), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_96_0")))
    }
    if (global.submenu == 34)
    {
        draw_set_color(0x00FFFFFF)
        draw_text((self.xx + 200), (self.yy + 150), string_hash_to_newline(scr_84_get_subst_string(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_101_0"), global.asc_def[global.input_k[5]])))
    }
    if (global.submenu == 35)
    {
        draw_set_color(0x00FFFFFF)
        draw_text((self.xx + 105), (self.yy + 100), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_113_0")))
        draw_text((self.xx + 325), (self.yy + 100), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_114_0")))
        if obj_time.gamepad_active
            draw_text((self.xx + 435), (self.yy + 100), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_115_0")))
        self.function[0] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_117_0")
        self.function[1] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_118_0")
        self.function[2] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_119_0")
        self.function[3] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_120_0")
        self.function[4] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_121_0")
        self.function[5] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_122_0")
        self.function[6] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_123_0")
        self.function[7] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_124_0")
        self.function[8] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_125_0")
        draw_sprite(spr_heart, 0, (self.xx + 80), ((self.yy + 150) + (global.submenucoord[35] * 28)))
        for (self.i = 0; self.i <= 8; self.i += 1)
        {
            draw_set_color(0x00FFFFFF)
            if (global.submenucoord[35] == self.i)
                draw_set_color(0x00FFFF00)
            if ((global.submenucoord[35] == self.i) && (self.control_select_con == 1))
                draw_set_color(0x000000FF)
            if ((self.i == 7) && (self.control_flash_timer > 0))
                draw_set_color(merge_color(0x00FFFF00, 0x0000FFFF, ((self.control_flash_timer / 10) - 0.1)))
            draw_text((self.xx + 105), ((self.yy + 140) + (self.i * 28)), string_hash_to_newline(self.function[self.i]))
            if (self.i < 7)
            {
                draw_text((self.xx + 325), ((self.yy + 140) + (self.i * 28)), string_hash_to_newline(global.asc_def[global.input_k[self.i]]))
                if obj_time.gamepad_active
                    draw_text((self.xx + 495), ((self.yy + 140) + (self.i * 28)), string_hash_to_newline(string(global.input_g[self.i])))
            }
        }
    }
}
if (global.menuno == 4)
{
    draw_set_color(0x00000000)
    if (global.lang == "ja")
    {
        draw_rectangle((self.xx + 60), (self.yy + 90), (self.xx + 612), (self.yy + 410), 0)
        scr_darkbox((self.xx + 50), (self.yy + 80), (self.xx + 622), (self.yy + 420))
    }
    else
    {
        draw_rectangle((self.xx + 60), (self.yy + 90), (self.xx + 580), (self.yy + 410), 0)
        scr_darkbox((self.xx + 50), (self.yy + 80), (self.xx + 590), (self.yy + 420))
    }
    draw_set_color(0x00FFFFFF)
    draw_rectangle((self.xx + 60), (self.yy + 216), ((self.xx + 60) + 520), ((self.yy + 216) + 5), 0)
    draw_rectangle((self.xx + 294), (self.yy + 220), ((self.xx + 294) + 5), ((self.yy + 220) + 190), 0)
    if (global.lang == "ja")
        draw_rectangle((self.xx + 60), (self.yy + 216), ((self.xx + 60) + 552), ((self.yy + 216) + 5), 0)
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 0, (self.xx + 124), (self.yy + 84), 2, 2, 0, 0x00FFFFFF, 1)
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 4, (self.xx + 124), (self.yy + 210), 2, 2, 0, 0x00FFFFFF, 1)
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 5, (self.xx + 380), (self.yy + 210), 2, 2, 0, 0x00FFFFFF, 1)
    draw_sprite_ext(spr_dmenu_captions, 6, (self.xx + 340), (self.yy + 225), 1, 1, 0, 0x00FFFFFF, 1)
    self.coord = global.submenucoord[20]
    self.charcoord = global.char[self.coord]
    draw_set_color(0x00FFFFFF)
    scr_84_set_draw_font("mainbig")
    draw_text((self.xx + 130), (self.yy + 105), string_hash_to_newline(global.charname[self.charcoord]))
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        self.chosen = 0.4
        if (self.i == self.coord)
            self.chosen = 1
        draw_sprite_ext(spr_equipchar, global.char[self.i], ((90 + self.xx) + (self.i * 50)), (160 + self.yy), 2, 2, 0, 0x00FFFFFF, self.chosen)
    }
    if (global.submenu == 20)
        draw_sprite(spr_heart_harrows, (self.menusiner / 20), ((100 + self.xx) + (self.coord * 50)), (141 + self.yy))
    var ch_yoff = (self.yy + 230)
    var ch_vspace = 25
    if (global.lang == "ja")
        ch_vspace = 28
    for (var ch_i = 0; ch_i < 6; ch_i++)
        ch_y[ch_i] = (ch_yoff + (ch_i * ch_vspace))
    draw_set_color(0x00FFFFFF)
    draw_text((self.xx + 100), ch_y[0], string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_207_0")))
    draw_item_icon((self.xx + 74), (ch_y[0] + 6), 1)
    draw_text((self.xx + 100), ch_y[1], string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_208_0")))
    draw_item_icon((self.xx + 74), (ch_y[1] + 6), 4)
    draw_text((self.xx + 100), ch_y[2], string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_209_0")))
    draw_item_icon((self.xx + 74), (ch_y[2] + 6), 5)
    draw_text((self.xx + 100), ch_y[5], string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_212_0")))
    draw_item_icon((self.xx + 74), (ch_y[5] + 6), 9)
    self.char_desc = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_214_0")
    self.guts_amount = 0
    self.fluff_amount = 0
    if (self.charcoord == 1)
    {
        self.guts_amount = 1
        draw_set_color(0x00404040)
        draw_text((self.xx + 100), ch_y[4], string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_226_0")))
        if (self.dograndom >= 99)
        {
            draw_set_color(0x00FFFFFF)
            draw_text((self.xx + 100), ch_y[3], string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_231_0")))
            draw_sprite_ext(spr_dog_sleep, ((-self.threebuffer) / 30), (self.xx + 220), (ch_y[3] + 5), 2, 2, 0, 0x00FFFFFF, 1)
        }
        else
            draw_text((self.xx + 100), ch_y[3], string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_236_0")))
        draw_set_color(0x00FFFFFF)
        self.char_desc = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_239_0")
        if (global.plot >= 30)
            self.char_desc = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_240_0")
        if (global.flag[252] == 1)
            self.char_desc = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_241_0")
    }
    if (self.charcoord == 2)
    {
        self.guts_amount = 2
        self.rude_amount = 100
        if (global.plot >= 154)
            self.rude_amount = 99
        self.crude_amount = 100
        if (global.flag[214] == 1)
            self.crude_amount = 101
        draw_text((self.xx + 100), ch_y[3], string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_251_0")))
        draw_item_icon((self.xx + 74), (ch_y[3] + 6), 13)
        if (global.lang == "ja")
        {
            draw_text_transformed((self.xx + 100), ch_y[4], string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_252_0")), 1, 1, 0)
            draw_item_icon((self.xx + 74), (ch_y[4] + 6), 13)
        }
        else
        {
            draw_text_transformed((self.xx + 100), ch_y[4], string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_252_0")), 0.8, 1, 0)
            draw_item_icon((self.xx + 74), (ch_y[4] + 6), 13)
        }
        draw_text((self.xx + 230), ch_y[3], string_hash_to_newline(self.rude_amount))
        draw_text((self.xx + 230), ch_y[4], string_hash_to_newline(self.crude_amount))
        self.char_desc = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_255_0")
        if (global.plot >= 154)
            self.char_desc = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_256_0")
    }
    if (self.charcoord == 3)
    {
        self.guts_amount = 0
        self.fluff_amount = 1
        self.kindness_amount = 100
        self.kind_icon = 10
        self.kind_text = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_265_0")
        if (self.dograndom >= 99)
        {
            self.kind_icon = 11
            self.kind_text = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_269_0")
            self.kindness_amount = 1
        }
        self.char_desc = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_272_0")
        if (global.charweapon[3] == 9)
            self.char_desc = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_275_0")
        if (global.charweapon[3] == 10)
        {
            self.char_desc = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_279_0")
            self.fluff_amount += 1
        }
        draw_text((self.xx + 100), ch_y[3], string_hash_to_newline(self.kind_text))
        draw_item_icon((self.xx + 74), (ch_y[3] + 6), self.kind_icon)
        draw_text((self.xx + 230), ch_y[3], string_hash_to_newline(self.kindness_amount))
        self.fluff_xscale = 0.8
        if (global.lang == "ja")
            self.fluff_xscale = 1
        draw_text_transformed((self.xx + 100), ch_y[4], string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_286_0")), self.fluff_xscale, 1, 0)
        draw_item_icon((self.xx + 74), (ch_y[4] + 6), 12)
        for (self.i = 0; self.i < self.fluff_amount; self.i += 1)
            draw_item_icon(((self.xx + 230) + (self.i * 20)), (ch_y[4] + 6), 12)
    }
    draw_text((self.xx + 320), (self.yy + 105), string_hash_to_newline(self.char_desc))
    self.guts_xoff = 0
    if (global.lang == "ja")
        self.guts_xoff = 16
    for (self.i = 0; self.i < self.guts_amount; self.i += 1)
        draw_item_icon((((self.xx + 190) + (self.i * 20)) + self.guts_xoff), (ch_y[5] + 6), 9)
    self.atsum = (((global.at[global.char[self.coord]] + global.itemat[global.char[self.coord], 0]) + global.itemat[global.char[self.coord], 1]) + global.itemat[global.char[self.coord], 2])
    self.dfsum = (((global.df[global.char[self.coord]] + global.itemdf[global.char[self.coord], 0]) + global.itemdf[global.char[self.coord], 1]) + global.itemdf[global.char[self.coord], 2])
    self.magsum = (((global.mag[global.char[self.coord]] + global.itemmag[global.char[self.coord], 0]) + global.itemmag[global.char[self.coord], 1]) + global.itemmag[global.char[self.coord], 2])
    self.grazesum = global.grazeamt
    self.sizesum = global.grazesize
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        for (self.j = 0; self.j < 3; self.j += 1)
        {
            if (global.char[self.i] != 0)
            {
                self.grazesum += global.itemgrazeamt[global.char[self.i], self.j]
                self.sizesum += global.itemgrazesize[global.char[self.i], self.j]
            }
        }
    }
    draw_text((self.xx + 230), ch_y[0], string_hash_to_newline(self.atsum))
    draw_text((self.xx + 230), ch_y[1], string_hash_to_newline(self.dfsum))
    draw_text((self.xx + 230), ch_y[2], string_hash_to_newline(self.magsum))
    self.spell_xoff = 0
    if (global.lang == "ja")
        self.spell_xoff = -10
    for (self.i = 0; self.i < 6; self.i += 1)
    {
        if (global.spell[self.charcoord, self.i] > 0)
        {
            self.g = 0
            if (global.spellusable[self.charcoord, self.i] == 0)
                self.g = 1
            if (global.spellcost[self.charcoord, self.i] > global.tension)
                self.g = 1
            if (self.g == 0)
                draw_set_color(0x00FFFFFF)
            if (self.g == 1)
                draw_set_color(0x00808080)
            draw_text((self.xx + 340), ch_y[self.i], string_hash_to_newline((string(round(((global.spellcost[self.charcoord, self.i] / global.maxtension) * 100))) + "%")))
            draw_text(((self.xx + 410) + self.spell_xoff), ch_y[self.i], string_hash_to_newline(global.spellname[self.charcoord, self.i]))
        }
    }
    if (global.submenu == 21)
        draw_sprite(spr_heart, 0, (self.xx + 320), ((self.yy + 240) + (global.submenucoord[21] * ch_vspace)))
    if (self.deschaver == 1)
    {
        draw_set_color(0x00FFFFFF)
        draw_text((self.xx + 20), (self.yy + 10), string_hash_to_newline(global.spelldesc[self.charcoord, global.submenucoord[21]]))
    }
}
if (global.menuno == 2)
{
    draw_set_color(0x00000000)
    ch_vspace = 27
    if (global.lang == "ja")
    {
        ch_vspace = 28
        draw_rectangle((self.xx + 60), (self.yy + 90), (self.xx + 626), (self.yy + 410), 0)
        scr_darkbox((self.xx + 50), (self.yy + 80), (self.xx + 636), (self.yy + 420))
    }
    else
    {
        draw_rectangle((self.xx + 60), (self.yy + 90), (self.xx + 580), (self.yy + 410), 0)
        scr_darkbox((self.xx + 50), (self.yy + 80), (self.xx + 590), (self.yy + 420))
    }
    draw_set_color(0x00FFFFFF)
    draw_rectangle((self.xx + 270), (self.yy + 91), (self.xx + 275), ((self.yy + 91) + 135), 0)
    draw_rectangle((self.xx + 59), (self.yy + 221), ((self.xx + 59) + 523), ((self.yy + 221) + 5), 0)
    if (global.lang == "ja")
        draw_rectangle((self.xx + 59), (self.yy + 221), ((self.xx + 63) + 565), ((self.yy + 221) + 5), 0)
    draw_rectangle((self.xx + 318), (self.yy + 221), ((self.xx + 318) + 5), ((self.yy + 221) + 190), 0)
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 0, (self.xx + 118), (self.yy + 86), 2, 2, 0, 0x00FFFFFF, 1)
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 1, (self.xx + 376), (self.yy + 86), 2, 2, 0, 0x00FFFFFF, 1)
    if ((global.submenucoord[11] == 1) || (global.submenucoord[11] == 2))
        draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 2, (self.xx + 372), (self.yy + 216), 2, 2, 0, 0x00FFFFFF, 1)
    else
        draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 3, (self.xx + 372), (self.yy + 216), 2, 2, 0, 0x00FFFFFF, 1)
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 4, (self.xx + 116), (self.yy + 216), 2, 2, 0, 0x00FFFFFF, 1)
    self.coord = global.submenucoord[10]
    self.charcoord = global.char[self.coord]
    self.menusiner += 1
    draw_set_color(0x00FFFFFF)
    scr_84_set_draw_font("mainbig")
    self.charname_xoff = 0
    if (global.lang == "ja")
        self.charname_xoff = -25
    draw_text(((self.xx + 135) + self.charname_xoff), (self.yy + 107), string_hash_to_newline(global.charname[self.charcoord]))
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        self.chosen = 0.4
        if (self.i == self.coord)
            self.chosen = 1
        draw_sprite_ext(spr_equipchar, global.char[self.i], ((90 + self.xx) + (self.i * 50)), (160 + self.yy), 2, 2, 0, 0x00FFFFFF, self.chosen)
    }
    if (global.submenu == 10)
        draw_sprite(spr_heart_harrows, (self.menusiner / 20), ((100 + self.xx) + (self.coord * 50)), (142 + self.yy))
    if (global.submenu != 11)
    {
        draw_sprite_ext(spr_dmenu_equip, (self.charcoord - 1), (self.xx + 302), (self.yy + 108), 2, 2, 0, 0x00FFFFFF, 1)
        draw_sprite_ext(spr_dmenu_equip, 3, (self.xx + 302), (self.yy + 142), 2, 2, 0, 0x00FFFFFF, 1)
        draw_sprite_ext(spr_dmenu_equip, 4, (self.xx + 302), (self.yy + 172), 2, 2, 0, 0x00FFFFFF, 1)
    }
    if (global.submenu == 11)
    {
        if (global.submenucoord[11] == 0)
            draw_sprite(spr_heart, 0, (self.xx + 308), (self.yy + 122))
        else
            draw_sprite_ext(spr_dmenu_equip, (self.charcoord - 1), (self.xx + 302), (self.yy + 108), 2, 2, 0, 0x00FFFFFF, 1)
        if (global.submenucoord[11] == 1)
            draw_sprite(spr_heart, 0, (self.xx + 308), (self.yy + 152))
        else
            draw_sprite_ext(spr_dmenu_equip, 3, (self.xx + 302), (self.yy + 142), 2, 2, 0, 0x00FFFFFF, 1)
        if (global.submenucoord[11] == 2)
            draw_sprite(spr_heart, 0, (self.xx + 308), (self.yy + 182))
        else
            draw_sprite_ext(spr_dmenu_equip, 4, (self.xx + 302), (self.yy + 172), 2, 2, 0, 0x00FFFFFF, 1)
    }
    if ((!self.charweaponname[self.charcoord]) == " ")
    {
        draw_text((self.xx + 365), (self.yy + 112), string_hash_to_newline(self.charweaponname[self.charcoord]))
        draw_item_icon((self.xx + 343), (self.yy + 118), self.charweaponicon[self.charcoord])
    }
    else
    {
        draw_set_color(0x00404040)
        draw_text((self.xx + 365), (self.yy + 112), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_423_0")))
        draw_set_color(0x00FFFFFF)
    }
    if (global.chararmor1[self.charcoord] != 0)
    {
        draw_text((self.xx + 365), (self.yy + 142), string_hash_to_newline(self.chararmor1name[self.charcoord]))
        draw_item_icon((self.xx + 343), (self.yy + 148), self.chararmor1icon[self.charcoord])
    }
    else
    {
        draw_set_color(0x00404040)
        draw_text((self.xx + 365), (self.yy + 142), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_435_0")))
        draw_set_color(0x00FFFFFF)
    }
    if (global.chararmor2[self.charcoord] != 0)
    {
        draw_text((self.xx + 365), (self.yy + 172), string_hash_to_newline(self.chararmor2name[self.charcoord]))
        draw_item_icon((self.xx + 343), (self.yy + 178), self.chararmor2icon[self.charcoord])
    }
    else
    {
        draw_set_color(0x00404040)
        draw_text((self.xx + 365), (self.yy + 172), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_447_0")))
        draw_set_color(0x00FFFFFF)
    }
    self.eq_xoff = 0
    if (global.lang == "ja")
        self.eq_xoff = -6
    if (global.submenucoord[11] == 0)
    {
        self.j = 0
        for (self.i = self.pagemax[0]; self.i < (6 + self.pagemax[0]); self.i += 1)
        {
            self.g = 0
            if ((self.charcoord == 1) && (self.weaponchar1[self.i] == 0))
                self.g = 1
            if ((self.charcoord == 2) && (self.weaponchar2[self.i] == 0))
                self.g = 1
            if ((self.charcoord == 3) && (self.weaponchar3[self.i] == 0))
                self.g = 1
            if (self.g == 0)
                draw_set_color(0x00FFFFFF)
            if (self.g == 1)
                draw_set_color(0x00808080)
            draw_item_icon(((self.xx + 364) + self.eq_xoff), ((self.yy + 236) + (self.j * ch_vspace)), self.weaponicon[self.i])
            if (global.weapon[self.i] != 0)
                draw_text(((self.xx + 384) + self.eq_xoff), ((self.yy + 230) + (self.j * ch_vspace)), string_hash_to_newline(self.weaponname[self.i]))
            else
            {
                draw_set_color(0x00404040)
                draw_text(((self.xx + 384) + self.eq_xoff), ((self.yy + 230) + (self.j * ch_vspace)), string_hash_to_newline("---------"))
            }
            self.j += 1
        }
    }
    if ((global.submenucoord[11] == 1) || (global.submenucoord[11] == 2))
    {
        self.j = 0
        for (self.i = self.pagemax[1]; self.i < (6 + self.pagemax[1]); self.i += 1)
        {
            self.g = 0
            if ((self.charcoord == 1) && (self.armorchar1[self.i] == 0))
                self.g = 1
            if ((self.charcoord == 2) && (self.armorchar2[self.i] == 0))
                self.g = 1
            if ((self.charcoord == 3) && (self.armorchar3[self.i] == 0))
                self.g = 1
            if (self.g == 0)
                draw_set_color(0x00FFFFFF)
            if (self.g == 1)
                draw_set_color(0x00808080)
            draw_item_icon(((self.xx + 364) + self.eq_xoff), ((self.yy + 236) + (self.j * ch_vspace)), self.armoricon[self.i])
            if (global.armor[self.i] != 0)
                draw_text(((self.xx + 384) + self.eq_xoff), ((self.yy + 230) + (self.j * ch_vspace)), string_hash_to_newline(self.armorname[self.i]))
            else
            {
                draw_set_color(0x00404040)
                draw_text(((self.xx + 384) + self.eq_xoff), ((self.yy + 230) + (self.j * ch_vspace)), string_hash_to_newline("---------"))
            }
            self.j += 1
        }
    }
    if ((global.submenu == 12) || ((global.submenu == 13) || (global.submenu == 14)))
    {
        self.scroll_xoff = 0
        if (global.lang == "ja")
            self.scroll_xoff = 54
        if (global.submenu == 12)
            self.pm = 0
        else
            self.pm = 1
        draw_sprite(spr_heart, 0, ((self.xx + 344) + self.eq_xoff), ((self.yy + 240) + ((global.submenucoord[global.submenu] - self.pagemax[self.pm]) * ch_vspace)))
        draw_set_color(0x00FFFFFF)
        for (self.i = 0; self.i < 12; self.i += 1)
        {
            self.buff = 0
            if (global.submenucoord[global.submenu] == self.i)
                self.buff += 3
            if (self.pm == 0)
            {
                if (global.weapon[self.i] == 0)
                    self.buff -= 1
            }
            if (self.pm == 1)
            {
                if (global.armor[self.i] == 0)
                    self.buff -= 1
            }
            draw_rectangle((((self.xx + 555) - self.buff) + self.scroll_xoff), (((self.yy + 260) + (self.i * 10)) - self.buff), (((self.xx + 558) + self.buff) + self.scroll_xoff), (((self.yy + 263) + (self.i * 10)) + self.buff), 0)
        }
        if (self.pagemax[self.pm] > 0)
            draw_sprite_ext(spr_morearrow, 0, ((self.xx + 551) + self.scroll_xoff), ((self.yy + 250) - (sin((self.cur_jewel / 12)) * 3)), 1, -1, 0, 0x00FFFFFF, 1)
        if ((5 + self.pagemax[self.pm]) < 11)
            draw_sprite_ext(spr_morearrow, 0, ((self.xx + 551) + self.scroll_xoff), ((self.yy + 385) + (sin((self.cur_jewel / 12)) * 3)), 1, 1, 0, 0x00FFFFFF, 1)
    }
    draw_set_color(0x00FFFFFF)
    if (global.submenu == 11)
    {
        if (global.submenucoord[11] == 0)
            draw_text((self.xx + 20), (self.yy + 10), string_hash_to_newline(self.charweapondesc[self.charcoord]))
        if (global.submenucoord[11] == 1)
            draw_text((self.xx + 20), (self.yy + 10), string_hash_to_newline(self.chararmor1desc[self.charcoord]))
        if (global.submenucoord[11] == 2)
            draw_text((self.xx + 20), (self.yy + 10), string_hash_to_newline(self.chararmor2desc[self.charcoord]))
    }
    if (global.submenu == 12)
        draw_text((self.xx + 20), (self.yy + 10), string_hash_to_newline(self.weapondesc[global.submenucoord[12]]))
    if ((global.submenu == 13) || (global.submenu == 14))
        draw_text((self.xx + 20), (self.yy + 10), string_hash_to_newline(self.armordesc[global.submenucoord[global.submenu]]))
    draw_set_color(0x00FFFFFF)
    draw_text((self.xx + 100), ((self.yy + 230) + (ch_vspace * 0)), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_556_0")))
    draw_item_icon((self.xx + 74), ((self.yy + 236) + (ch_vspace * 0)), 1)
    draw_text((self.xx + 100), ((self.yy + 230) + (ch_vspace * 1)), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_557_0")))
    draw_item_icon((self.xx + 74), ((self.yy + 236) + (ch_vspace * 1)), 4)
    draw_text((self.xx + 100), ((self.yy + 230) + (ch_vspace * 2)), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_558_0")))
    draw_item_icon((self.xx + 74), ((self.yy + 236) + (ch_vspace * 2)), 5)
    self.atsum = (((global.at[global.char[self.coord]] + global.itemat[global.char[self.coord], 0]) + global.itemat[global.char[self.coord], 1]) + global.itemat[global.char[self.coord], 2])
    self.dfsum = (((global.df[global.char[self.coord]] + global.itemdf[global.char[self.coord], 0]) + global.itemdf[global.char[self.coord], 1]) + global.itemdf[global.char[self.coord], 2])
    self.magsum = (((global.mag[global.char[self.coord]] + global.itemmag[global.char[self.coord], 0]) + global.itemmag[global.char[self.coord], 1]) + global.itemmag[global.char[self.coord], 2])
    self.grazesum = global.grazeamt
    self.sizesum = global.grazesize
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        for (self.j = 0; self.j < 3; self.j += 1)
        {
            if (global.char[self.i] != 0)
            {
                self.grazesum += global.itemgrazeamt[global.char[self.i], self.j]
                self.sizesum += global.itemgrazesize[global.char[self.i], self.j]
            }
        }
    }
    if ((global.submenu == 12) || ((global.submenu == 13) || (global.submenu == 14)))
    {
        self.cur = global.submenucoord[global.submenu]
        self.g = 0
        if (global.submenu == 12)
        {
            if ((self.charcoord == 1) && (self.weaponchar1[self.cur] == 0))
                self.g = 1
            if ((self.charcoord == 2) && (self.weaponchar2[self.cur] == 0))
                self.g = 1
            if ((self.charcoord == 3) && (self.weaponchar3[self.cur] == 0))
                self.g = 1
        }
        if ((global.submenu == 13) || (global.submenu == 14))
        {
            if ((self.charcoord == 1) && (self.armorchar1[self.cur] == 0))
                self.g = 1
            if ((self.charcoord == 2) && (self.armorchar2[self.cur] == 0))
                self.g = 1
            if ((self.charcoord == 3) && (self.armorchar3[self.cur] == 0))
                self.g = 1
        }
        self._abilitytext[0] = self.charweaponability[self.charcoord]
        self._abilitytext[1] = self.chararmor1ability[self.charcoord]
        self._abilitytext[2] = self.chararmor2ability[self.charcoord]
        self._abilitycolor[0] = 0x00404040
        self._abilitycolor[1] = 0x00404040
        self._abilitycolor[2] = 0x00404040
        self._abilityicon[0] = self.charweaponabilityicon[self.charcoord]
        self._abilityicon[1] = self.chararmor1abilityicon[self.charcoord]
        self._abilityicon[2] = self.chararmor2abilityicon[self.charcoord]
        if ((self.g == 0) && (global.submenu == 12))
        {
            self.atup = (self.weaponat[self.cur] - global.itemat[self.charcoord, 0])
            self.dfup = (self.weapondf[self.cur] - global.itemdf[self.charcoord, 0])
            self.magup = (self.weaponmag[self.cur] - global.itemmag[self.charcoord, 0])
            self.styleup = self.weaponstyle[self.cur]
            self.grazeup = (self.weapongrazeamt[self.cur] - global.itemgrazeamt[self.charcoord, 0])
            self.sizeup = (self.weapongrazesize[self.cur] - global.itemgrazesize[self.charcoord, 0])
            self._abilitycolor[0] = 0x00FFFFFF
            self._abilityicon[0] = self.weaponabilityicon[self.cur]
            if (self.weaponability[self.cur] != self._abilitytext[0])
            {
                self._abilitycolor[0] = 0x0000FFFF
                if (self.weaponability[self.cur] == " ")
                    self._abilitycolor[0] = 0x000000FF
            }
            self._abilitytext[0] = self.weaponability[self.cur]
            draw_set_color(0x00FFFFFF)
            if (self.atup > 0)
                draw_set_color(0x0000FFFF)
            if (self.atup < 0)
                draw_set_color(0x000000FF)
            if (global.lang == "ja")
                draw_text((self.xx + 230), ((self.yy + 230) + (ch_vspace * 0)), string_hash_to_newline(string((self.atsum + self.atup))))
            else
                draw_text((self.xx + 230), ((self.yy + 230) + (ch_vspace * 0)), string_hash_to_newline((((string((self.atsum + self.atup)) + scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_643_0")) + string(self.atup)) + ")")))
            draw_set_color(0x00FFFFFF)
            if (self.dfup > 0)
                draw_set_color(0x0000FFFF)
            if (self.dfup < 0)
                draw_set_color(0x000000FF)
            draw_text((self.xx + 230), ((self.yy + 230) + (ch_vspace * 1)), string_hash_to_newline((self.dfsum + self.dfup)))
            draw_set_color(0x00FFFFFF)
            if (self.magup > 0)
                draw_set_color(0x0000FFFF)
            if (self.magup < 0)
                draw_set_color(0x000000FF)
            draw_text((self.xx + 230), ((self.yy + 230) + (ch_vspace * 2)), string_hash_to_newline((self.magsum + self.magup)))
        }
        if (self.g == 0)
        {
            if ((global.submenu == 13) || (global.submenu == 14))
            {
                self.arno = (global.submenu - 12)
                self.atup = (self.armorat[self.cur] - global.itemat[self.charcoord, self.arno])
                self.dfup = (self.armordf[self.cur] - global.itemdf[self.charcoord, self.arno])
                self.magup = (self.armormag[self.cur] - global.itemmag[self.charcoord, self.arno])
                self.grazeup = (self.armorgrazeamt[self.cur] - global.itemgrazeamt[self.charcoord, self.arno])
                self.sizeup = (self.armorgrazesize[self.cur] - global.itemgrazesize[self.charcoord, self.arno])
                self._abilitycolor[self.arno] = 0x00FFFFFF
                self._abilityicon[self.arno] = self.armorabilityicon[self.cur]
                if (self.armorability[self.cur] != self._abilitytext[self.arno])
                {
                    self._abilitycolor[self.arno] = 0x0000FFFF
                    if (self.armorability[self.cur] == " ")
                        self._abilitycolor[self.arno] = 0x000000FF
                }
                self._abilitytext[self.arno] = self.armorability[self.cur]
                draw_set_color(0x00FFFFFF)
                if (self.atup > 0)
                    draw_set_color(0x0000FFFF)
                if (self.atup < 0)
                    draw_set_color(0x000000FF)
                draw_text((self.xx + 230), ((self.yy + 230) + (ch_vspace * 0)), string_hash_to_newline((self.atsum + self.atup)))
                draw_set_color(0x00FFFFFF)
                if (self.dfup > 0)
                    draw_set_color(0x0000FFFF)
                if (self.dfup < 0)
                    draw_set_color(0x000000FF)
                draw_text((self.xx + 230), ((self.yy + 230) + (ch_vspace * 1)), string_hash_to_newline((self.dfsum + self.dfup)))
                draw_set_color(0x00FFFFFF)
                if (self.magup > 0)
                    draw_set_color(0x0000FFFF)
                if (self.magup < 0)
                    draw_set_color(0x000000FF)
                draw_text((self.xx + 230), ((self.yy + 230) + (ch_vspace * 2)), string_hash_to_newline((self.magsum + self.magup)))
            }
        }
        if (self.g == 1)
        {
            draw_text((self.xx + 230), ((self.yy + 230) + (ch_vspace * 0)), string_hash_to_newline(self.atsum))
            draw_text((self.xx + 230), ((self.yy + 230) + (ch_vspace * 1)), string_hash_to_newline(self.dfsum))
            draw_text((self.xx + 230), ((self.yy + 230) + (ch_vspace * 2)), string_hash_to_newline(self.magsum))
        }
        for (self.i = 0; self.i < 3; self.i += 1)
        {
            if (self._abilitytext[self.i] == " ")
            {
                draw_set_color(self._abilitycolor[self.i])
                draw_text((self.xx + 100), ((self.yy + 230) + (ch_vspace * (self.i + 3))), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_736_0")))
            }
            else
            {
                draw_set_color(self._abilitycolor[self.i])
                draw_text((self.xx + 100), ((self.yy + 230) + (ch_vspace * (self.i + 3))), string_hash_to_newline(self._abilitytext[self.i]))
                draw_set_color(0x0040A0FF)
                draw_item_icon((self.xx + 74), (((self.yy + 230) + (ch_vspace * (self.i + 3))) + 8), self._abilityicon[self.i])
            }
        }
    }
    else
    {
        draw_text((self.xx + 230), ((self.yy + 230) + (ch_vspace * 0)), string_hash_to_newline(self.atsum))
        draw_text((self.xx + 230), ((self.yy + 230) + (ch_vspace * 1)), string_hash_to_newline(self.dfsum))
        draw_text((self.xx + 230), ((self.yy + 230) + (ch_vspace * 2)), string_hash_to_newline(self.magsum))
        self._abilitytext[0] = self.charweaponability[self.charcoord]
        self._abilitytext[1] = self.chararmor1ability[self.charcoord]
        self._abilitytext[2] = self.chararmor2ability[self.charcoord]
        self._abilitycolor[0] = 0x00FFFFFF
        self._abilitycolor[1] = 0x00FFFFFF
        self._abilitycolor[2] = 0x00FFFFFF
        self._abilityicon[0] = self.charweaponabilityicon[self.charcoord]
        self._abilityicon[1] = self.chararmor1abilityicon[self.charcoord]
        self._abilityicon[2] = self.chararmor2abilityicon[self.charcoord]
        for (self.i = 0; self.i < 3; self.i += 1)
        {
            if (self._abilitytext[self.i] == " ")
            {
                draw_set_color(0x00404040)
                draw_text((self.xx + 100), ((self.yy + 230) + (ch_vspace * (self.i + 3))), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_773_0")))
            }
            else
            {
                draw_set_color(self._abilitycolor[self.i])
                draw_text((self.xx + 100), ((self.yy + 230) + (ch_vspace * (self.i + 3))), string_hash_to_newline(self._abilitytext[self.i]))
                draw_set_color(0x0040A0FF)
                draw_item_icon((self.xx + 74), (((self.yy + 230) + (ch_vspace * (self.i + 3))) + 8), self._abilityicon[self.i])
            }
        }
    }
}
if (global.menuno == 1)
{
    draw_set_color(0x00000000)
    if (global.lang == "ja")
    {
        draw_rectangle((self.xx + 46), (self.yy + 90), (self.xx + 594), (self.yy + 360), 0)
        scr_darkbox((self.xx + 36), (self.yy + 80), (self.xx + 604), (self.yy + 370))
    }
    else
    {
        draw_rectangle((self.xx + 70), (self.yy + 90), (self.xx + 570), (self.yy + 360), 0)
        scr_darkbox((self.xx + 60), (self.yy + 80), (self.xx + 580), (self.yy + 370))
    }
    scr_84_set_draw_font("mainbig")
    scr_itemname()
    if (global.lang == "ja")
    {
        if (global.submenu == 1)
            draw_sprite(spr_heart, 0, ((self.xx + 134) + (120 * global.submenucoord[1])), (self.yy + 120))
        draw_set_color(0x00FFFFFF)
        if (global.submenu > 1)
        {
            if (global.submenucoord[1] == 0)
                draw_set_color(0x0040A0FF)
            else
                draw_set_color(0x00808080)
        }
        draw_text((self.xx + 158), (self.yy + 110), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_807_0")))
        if (global.submenu > 1)
        {
            if (global.submenucoord[1] == 1)
                draw_set_color(0x0040A0FF)
            else
                draw_set_color(0x00808080)
        }
        draw_text((self.xx + 278), (self.yy + 110), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_809_0")))
        if (global.submenu > 1)
        {
            if (global.submenucoord[1] == 2)
                draw_set_color(0x0040A0FF)
            else
                draw_set_color(0x00808080)
        }
        draw_text((self.xx + 398), (self.yy + 110), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_811_0")))
    }
    else
    {
        if (global.submenu == 1)
            draw_sprite(spr_heart, 0, ((self.xx + 155) + (120 * global.submenucoord[1])), (self.yy + 120))
        draw_set_color(0x00FFFFFF)
        if (global.submenu > 1)
        {
            if (global.submenucoord[1] == 0)
                draw_set_color(0x0040A0FF)
            else
                draw_set_color(0x00808080)
        }
        draw_text((self.xx + 180), (self.yy + 110), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_807_0")))
        if (global.submenu > 1)
        {
            if (global.submenucoord[1] == 1)
                draw_set_color(0x0040A0FF)
            else
                draw_set_color(0x00808080)
        }
        draw_text((self.xx + 300), (self.yy + 110), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_809_0")))
        if (global.submenu > 1)
        {
            if (global.submenucoord[1] == 2)
                draw_set_color(0x0040A0FF)
            else
                draw_set_color(0x00808080)
        }
        draw_text((self.xx + 420), (self.yy + 110), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_811_0")))
    }
    if ((global.submenu >= 2) && ((global.submenu <= 6) && (global.submenu != 4)))
    {
        self.sm = global.submenucoord[2]
        self.yheart = (((floor((self.sm / 2)) * 30) + 162) + self.yy)
        if (global.lang == "ja")
        {
            self.xheart = (72 + self.xx)
            if ((self.sm == 1) || ((self.sm == 3) || ((self.sm == 5) || ((self.sm == 7) || ((self.sm == 9) || (self.sm == 11))))))
                self.xheart = (334 + self.xx)
        }
        else
        {
            self.xheart = (120 + self.xx)
            if ((self.sm == 1) || ((self.sm == 3) || ((self.sm == 5) || ((self.sm == 7) || ((self.sm == 9) || (self.sm == 11))))))
                self.xheart = (330 + self.xx)
        }
        if ((global.submenu == 2) || (global.submenu == 3))
            draw_sprite(spr_heart, 0, self.xheart, self.yheart)
        draw_set_color(0x00FFFFFF)
        draw_text((self.xx + 20), (self.yy + 10), string_hash_to_newline(self.itemdesc[global.submenucoord[2]]))
    }
    if (global.submenu == 7)
    {
        draw_set_color(0x00FFFFFF)
        if (global.lang == "ja")
            draw_text((self.xx + 20), (self.yy + 10), (global.itemname[global.submenucoord[2]] + string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_829_0"))))
        else
            draw_text((self.xx + 20), (self.yy + 10), string_hash_to_newline(((scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_829_0") + global.itemname[global.submenucoord[2]]) + "?")))
    }
    if (global.submenucoord[1] != 2)
    {
        if (global.lang == "ja")
        {
            draw_set_color(self.bcolor)
            for (self.i = 0; self.i < 6; self.i += 1)
            {
                draw_text((self.xx + 94), ((self.yy + 154) + (30 * self.i)), string_hash_to_newline(global.itemname[(self.i * 2)]))
                draw_text((self.xx + 358), ((self.yy + 154) + (30 * self.i)), string_hash_to_newline(global.itemname[((self.i * 2) + 1)]))
            }
            draw_set_color(0x00FFFFFF)
            if (global.submenu == 1)
                draw_set_color(0x00808080)
            for (self.i = 0; self.i < 6; self.i += 1)
            {
                draw_text((self.xx + 92), ((self.yy + 152) + (30 * self.i)), string_hash_to_newline(global.itemname[(self.i * 2)]))
                draw_text((self.xx + 356), ((self.yy + 152) + (30 * self.i)), string_hash_to_newline(global.itemname[((self.i * 2) + 1)]))
            }
        }
        else
        {
            draw_set_color(self.bcolor)
            for (self.i = 0; self.i < 6; self.i += 1)
            {
                draw_text((self.xx + 148), ((self.yy + 154) + (30 * self.i)), string_hash_to_newline(global.itemname[(self.i * 2)]))
                draw_text((self.xx + 358), ((self.yy + 154) + (30 * self.i)), string_hash_to_newline(global.itemname[((self.i * 2) + 1)]))
            }
            draw_set_color(0x00FFFFFF)
            if (global.submenu == 1)
                draw_set_color(0x00808080)
            for (self.i = 0; self.i < 6; self.i += 1)
            {
                draw_text((self.xx + 146), ((self.yy + 152) + (30 * self.i)), string_hash_to_newline(global.itemname[(self.i * 2)]))
                draw_text((self.xx + 356), ((self.yy + 152) + (30 * self.i)), string_hash_to_newline(global.itemname[((self.i * 2) + 1)]))
            }
        }
    }
    if (global.submenucoord[1] == 2)
    {
        scr_keyiteminfo_all()
        if (global.lang == "ja")
        {
            draw_set_color(self.bcolor)
            for (self.i = 0; self.i < 6; self.i += 1)
            {
                draw_text((self.xx + 94), ((self.yy + 154) + (30 * self.i)), string_hash_to_newline(self.keyitemname[(self.i * 2)]))
                draw_text((self.xx + 358), ((self.yy + 154) + (30 * self.i)), string_hash_to_newline(self.keyitemname[((self.i * 2) + 1)]))
            }
            draw_set_color(0x00FFFFFF)
            if (global.submenu == 1)
                draw_set_color(0x00808080)
            for (self.i = 0; self.i < 6; self.i += 1)
            {
                if (global.submenu == 4)
                {
                    if (self.keyitemusable[(self.i * 2)] == 1)
                        draw_set_color(0x00FFFFFF)
                    else
                        draw_set_color(0x00C0C0C0)
                }
                draw_text((self.xx + 92), ((self.yy + 152) + (30 * self.i)), string_hash_to_newline(self.keyitemname[(self.i * 2)]))
                if (global.submenu == 4)
                {
                    if (self.keyitemusable[((self.i * 2) + 1)] == 1)
                        draw_set_color(0x00FFFFFF)
                    else
                        draw_set_color(0x00C0C0C0)
                }
                draw_text((self.xx + 356), ((self.yy + 152) + (30 * self.i)), string_hash_to_newline(self.keyitemname[((self.i * 2) + 1)]))
            }
        }
        else
        {
            draw_set_color(self.bcolor)
            for (self.i = 0; self.i < 6; self.i += 1)
            {
                draw_text((self.xx + 148), ((self.yy + 154) + (30 * self.i)), string_hash_to_newline(self.keyitemname[(self.i * 2)]))
                draw_text((self.xx + 358), ((self.yy + 154) + (30 * self.i)), string_hash_to_newline(self.keyitemname[((self.i * 2) + 1)]))
            }
            draw_set_color(0x00FFFFFF)
            if (global.submenu == 1)
                draw_set_color(0x00808080)
            for (self.i = 0; self.i < 6; self.i += 1)
            {
                if (global.submenu == 4)
                {
                    if (self.keyitemusable[(self.i * 2)] == 1)
                        draw_set_color(0x00FFFFFF)
                    else
                        draw_set_color(0x00C0C0C0)
                }
                draw_text((self.xx + 146), ((self.yy + 152) + (30 * self.i)), string_hash_to_newline(self.keyitemname[(self.i * 2)]))
                if (global.submenu == 4)
                {
                    if (self.keyitemusable[((self.i * 2) + 1)] == 1)
                        draw_set_color(0x00FFFFFF)
                    else
                        draw_set_color(0x00C0C0C0)
                }
                draw_text((self.xx + 356), ((self.yy + 152) + (30 * self.i)), string_hash_to_newline(self.keyitemname[((self.i * 2) + 1)]))
            }
        }
        if (global.submenu == 4)
        {
            self.sm = global.submenucoord[4]
            self.yheart = (((floor((self.sm / 2)) * 30) + 162) + self.yy)
            if (global.lang == "ja")
            {
                self.xheart = (72 + self.xx)
                if ((self.sm == 1) || ((self.sm == 3) || ((self.sm == 5) || ((self.sm == 7) || ((self.sm == 9) || (self.sm == 11))))))
                    self.xheart = (334 + self.xx)
            }
            else
            {
                self.xheart = (120 + self.xx)
                if ((self.sm == 1) || ((self.sm == 3) || ((self.sm == 5) || ((self.sm == 7) || ((self.sm == 9) || (self.sm == 11))))))
                    self.xheart = (330 + self.xx)
            }
            draw_sprite(spr_heart, 0, self.xheart, self.yheart)
            draw_set_color(0x00FFFFFF)
            draw_text((self.xx + 20), (self.yy + 10), string_hash_to_newline(self.keyitemdesc[global.submenucoord[4]]))
        }
    }
}
