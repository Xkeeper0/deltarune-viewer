self.xx = __view_get(e__VW.XView, 0)
self.yy = __view_get(e__VW.YView, 0)
self.tpoff = ((self.tp - self.tpy) + self.yy)
self.bpoff = (((variable)(- self.bp) + self.bpy) + self.yy)
if (self.drawchar == 1)
{
    draw_set_color(0x000000)
    draw_rectangle((self.xx - 10), ((self.yy + 480) - self.bp), (self.xx + 650), (self.yy + 500), 0)
    draw_set_color(0x000000)
    draw_rectangle((self.xx - 10), (self.yy + self.tp), (self.xx + 650), (self.yy - 10), 0)
    scr_charbox()
    if (global.menuno == 0)
        self.deschaver = 0
    if (self.deschaver == 0)
    {
        draw_sprite_ext(scr_84_get_sprite("spr_darkmenudesc"@3386), global.menucoord[0], (self.xx + 20), ((self.yy + self.tp) - 56), 2, 2, 0, 0xFFFFFF, 1)
        self.msprite[0] = spr_darkitembt
        self.msprite[1] = spr_darkequipbt
        self.msprite[2] = spr_darktalkbt
        self.msprite[3] = spr_darktechbt
        self.msprite[4] = spr_darkconfigbt
        self.i = 0
        while(true)
        {
            if (self.i < 5)
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
                    draw_sprite_ext(self.msprite[self.i], self.off, (((self.xx + 120) + (self.i * 100)) + self.spritemx), ((self.yy + self.tp) - 60), 2, 2, 0, 0xFFFFFF, 1)
                self.i = (self.i + 1)
                continue
            }
            break
        }
        draw_set_color(0xFFFFFF)
        scr_84_set_draw_font("mainbig"@1561)
        draw_text((self.xx + 520), ((self.yy + self.tp) - 60), string_hash_to_newline((scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_47_0"@7057) + string(global.gold))))
    }
}
if (global.menuno == 5)
{
    draw_set_color(0x000000)
    draw_rectangle((self.xx + 60), (self.yy + 90), (self.xx + 580), (self.yy + 410), 0)
    scr_darkbox((self.xx + 50), (self.yy + 80), (self.xx + 590), (self.yy + 420))
    if (global.submenu >= 30)
        _temp_local_var_1 = (global.submenu <= 33)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        draw_set_color(0xFFFFFF)
        draw_text((self.xx + 270), (self.yy + 100), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_74_0"@7058)))
        self.audvol = (string(abs((global.flag[17] * 100))) + "%"@3588)
        self.musvol = (string(abs((global.flag[16] * 100))) + "%"@3588)
        self.runoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_79_0"@7061)
        if (global.flag[11] == 1)
            self.runoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_79_1"@7063)
        self.flashoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_80_0"@7064)
        if (global.flag[8] == 1)
            self.flashoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_80_1"@7066)
        self.shakeoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_81_0"@7067)
        if (global.flag[12] == 1)
            self.shakeoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_81_1"@7069)
        self.fullscreenoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_82_0"@7070)
        if window_get_fullscreen()
            self.fullscreenoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_82_1"@7073)
        draw_sprite(spr_heart, 0, (self.xx + 145), ((self.yy + 160) + (global.submenucoord[30] * 35)))
        if (global.submenu == 33)
            draw_set_color(0x00FFFF)
        draw_text((self.xx + 170), (self.yy + 150), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_86_0"@7074)))
        draw_text((self.xx + 430), (self.yy + 150), string_hash_to_newline(self.audvol))
        draw_set_color(0xFFFFFF)
        draw_text((self.xx + 170), (self.yy + 185), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_91_0"@7075)))
        draw_text((self.xx + 170), (self.yy + 220), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_92_0"@7076)))
        draw_text((self.xx + 430), (self.yy + 220), string_hash_to_newline(self.flashoff))
        draw_text((self.xx + 170), (self.yy + 255), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_93_0"@7077)))
        draw_text((self.xx + 430), (self.yy + 255), string_hash_to_newline(self.fullscreenoff))
        draw_text((self.xx + 170), (self.yy + 290), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_94_0"@7078)))
        draw_text((self.xx + 430), (self.yy + 290), string_hash_to_newline(self.runoff))
        draw_text((self.xx + 170), (self.yy + 325), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_95_0"@7079)))
        draw_text((self.xx + 170), (self.yy + 360), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_96_0"@7080)))
    }
    if (global.submenu == 34)
    {
        draw_set_color(0xFFFFFF)
        draw_text((self.xx + 200), (self.yy + 150), string_hash_to_newline(scr_84_get_subst_string(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_101_0"@7081), global.asc_def[global.input_k[5]])))
    }
    if (global.submenu == 35)
    {
        draw_set_color(0xFFFFFF)
        draw_text((self.xx + 105), (self.yy + 100), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_113_0"@7082)))
        draw_text((self.xx + 325), (self.yy + 100), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_114_0"@7083)))
        if obj_time.gamepad_active
            draw_text((self.xx + 435), (self.yy + 100), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_115_0"@7084)))
        self.function[0] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_117_0"@7085)
        self.function[1] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_118_0"@7087)
        self.function[2] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_119_0"@7088)
        self.function[3] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_120_0"@7089)
        self.function[4] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_121_0"@7090)
        self.function[5] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_122_0"@7091)
        self.function[6] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_123_0"@7092)
        self.function[7] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_124_0"@7093)
        self.function[8] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_125_0"@7094)
        draw_sprite(spr_heart, 0, (self.xx + 80), ((self.yy + 150) + (global.submenucoord[35] * 28)))
        self.i = 0
        while(true)
        {
            if (self.i <= 8)
            {
                draw_set_color(0xFFFFFF)
                if (global.submenucoord[35] == self.i)
                    draw_set_color(0xFFFF00)
                if (global.submenucoord[35] == self.i)
                    _temp_local_var_2 = (self.control_select_con == 1)
                else
                    _temp_local_var_2 = 0
                if _temp_local_var_2
                    draw_set_color(0x0000FF)
                if (self.i == 7)
                    _temp_local_var_3 = (self.control_flash_timer > 0)
                else
                    _temp_local_var_3 = 0
                if _temp_local_var_3
                    draw_set_color(merge_color(0xFFFF00, 0x00FFFF, ((self.control_flash_timer / 10) - 0.1)))
                draw_text((self.xx + 105), ((self.yy + 140) + (self.i * 28)), string_hash_to_newline(self.function[self.i]))
                if (self.i < 7)
                {
                    draw_text((self.xx + 325), ((self.yy + 140) + (self.i * 28)), string_hash_to_newline(global.asc_def[global.input_k[self.i]]))
                    if obj_time.gamepad_active
                        draw_text((self.xx + 495), ((self.yy + 140) + (self.i * 28)), string_hash_to_newline(string(global.input_g[self.i])))
                }
                self.i = (self.i + 1)
                continue
            }
            break
        }
    }
}
if (global.menuno == 4)
{
    draw_set_color(0x000000)
    if (global.lang == "ja"@1566)
    {
        draw_rectangle((self.xx + 60), (self.yy + 90), (self.xx + 612), (self.yy + 410), 0)
        scr_darkbox((self.xx + 50), (self.yy + 80), (self.xx + 622), (self.yy + 420))
    }
    else
    {
        draw_rectangle((self.xx + 60), (self.yy + 90), (self.xx + 580), (self.yy + 410), 0)
        scr_darkbox((self.xx + 50), (self.yy + 80), (self.xx + 590), (self.yy + 420))
    }
    draw_set_color(0xFFFFFF)
    draw_rectangle((self.xx + 60), (self.yy + 216), ((self.xx + 60) + 520), ((self.yy + 216) + 5), 0)
    draw_rectangle((self.xx + 294), (self.yy + 220), ((self.xx + 294) + 5), ((self.yy + 220) + 190), 0)
    if (global.lang == "ja"@1566)
        draw_rectangle((self.xx + 60), (self.yy + 216), ((self.xx + 60) + 552), ((self.yy + 216) + 5), 0)
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"@3387), 0, (self.xx + 124), (self.yy + 84), 2, 2, 0, 0xFFFFFF, 1)
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"@3387), 4, (self.xx + 124), (self.yy + 210), 2, 2, 0, 0xFFFFFF, 1)
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"@3387), 5, (self.xx + 380), (self.yy + 210), 2, 2, 0, 0xFFFFFF, 1)
    draw_sprite_ext(spr_dmenu_captions, 6, (self.xx + 340), (self.yy + 225), 1, 1, 0, 0xFFFFFF, 1)
    self.coord = global.submenucoord[20]
    self.charcoord = global.char[self.coord]
    draw_set_color(0xFFFFFF)
    scr_84_set_draw_font("mainbig"@1561)
    draw_text((self.xx + 130), (self.yy + 105), string_hash_to_newline(global.charname[self.charcoord]))
    self.i = 0
    while(true)
    {
        if (self.i < 3)
        {
            self.chosen = 0.4
            if (self.i == self.coord)
                self.chosen = 1
            draw_sprite_ext(spr_equipchar, global.char[self.i], ((90 + self.xx) + (self.i * 50)), (160 + self.yy), 2, 2, 0, 0xFFFFFF, self.chosen)
            self.i = (self.i + 1)
            continue
        }
        break
    }
    if (global.submenu == 20)
        draw_sprite(spr_heart_harrows, (self.menusiner / 20), ((100 + self.xx) + (self.coord * 50)), (141 + self.yy))
    local.ch_yoff = (self.yy + 230)
    local.ch_vspace = 25
    if (global.lang == "ja"@1566)
        local.ch_vspace = 28
    local.ch_i = 0
    while(true)
    {
        if (local.ch_i < 6)
        {
            local.ch_y[local.ch_i] = (local.ch_yoff + (local.ch_i * local.ch_vspace))
            local.ch_i = (local.ch_i + 1)
            continue
        }
        break
    }
    draw_set_color(0xFFFFFF)
    draw_text((self.xx + 100), local.ch_y[0], string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_207_0"@7101)))
    draw_item_icon((self.xx + 74), (local.ch_y[0] + 6), 1)
    draw_text((self.xx + 100), local.ch_y[1], string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_208_0"@7103)))
    draw_item_icon((self.xx + 74), (local.ch_y[1] + 6), 4)
    draw_text((self.xx + 100), local.ch_y[2], string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_209_0"@7104)))
    draw_item_icon((self.xx + 74), (local.ch_y[2] + 6), 5)
    draw_text((self.xx + 100), local.ch_y[5], string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_212_0"@7105)))
    draw_item_icon((self.xx + 74), (local.ch_y[5] + 6), 9)
    self.char_desc = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_214_0"@7106)
    self.guts_amount = 0
    self.fluff_amount = 0
    if (self.charcoord == 1)
    {
        self.guts_amount = 1
        draw_set_color(0x404040)
        draw_text((self.xx + 100), local.ch_y[4], string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_226_0"@7110)))
        if (self.dograndom >= 99)
        {
            draw_set_color(0xFFFFFF)
            draw_text((self.xx + 100), local.ch_y[3], string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_231_0"@7111)))
            draw_sprite_ext(spr_dog_sleep, ((variable)(- self.threebuffer) / 30), (self.xx + 220), (local.ch_y[3] + 5), 2, 2, 0, 0xFFFFFF, 1)
        }
        else
            draw_text((self.xx + 100), local.ch_y[3], string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_236_0"@7112)))
        draw_set_color(0xFFFFFF)
        self.char_desc = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_239_0"@7113)
        if (global.plot >= 30)
            self.char_desc = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_240_0"@7114)
        if (global.flag[252] == 1)
            self.char_desc = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_241_0"@7115)
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
        draw_text((self.xx + 100), local.ch_y[3], string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_251_0"@7118)))
        draw_item_icon((self.xx + 74), (local.ch_y[3] + 6), 13)
        if (global.lang == "ja"@1566)
        {
            draw_text_transformed((self.xx + 100), local.ch_y[4], string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_252_0"@7119)), 1, 1, 0)
            draw_item_icon((self.xx + 74), (local.ch_y[4] + 6), 13)
        }
        else
        {
            draw_text_transformed((self.xx + 100), local.ch_y[4], string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_252_0"@7119)), 0.8, 1, 0)
            draw_item_icon((self.xx + 74), (local.ch_y[4] + 6), 13)
        }
        draw_text((self.xx + 230), local.ch_y[3], string_hash_to_newline(self.rude_amount))
        draw_text((self.xx + 230), local.ch_y[4], string_hash_to_newline(self.crude_amount))
        self.char_desc = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_255_0"@7120)
        if (global.plot >= 154)
            self.char_desc = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_256_0"@7121)
    }
    if (self.charcoord == 3)
    {
        self.guts_amount = 0
        self.fluff_amount = 1
        self.kindness_amount = 100
        self.kind_icon = 10
        self.kind_text = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_265_0"@7124)
        if (self.dograndom >= 99)
        {
            self.kind_icon = 11
            self.kind_text = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_269_0"@7126)
            self.kindness_amount = 1
        }
        self.char_desc = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_272_0"@7127)
        if (global.charweapon[3] == 9)
            self.char_desc = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_275_0"@7128)
        if (global.charweapon[3] == 10)
        {
            self.char_desc = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_279_0"@7129)
            self.fluff_amount = (self.fluff_amount + 1)
        }
        draw_text((self.xx + 100), local.ch_y[3], string_hash_to_newline(self.kind_text))
        draw_item_icon((self.xx + 74), (local.ch_y[3] + 6), self.kind_icon)
        draw_text((self.xx + 230), local.ch_y[3], string_hash_to_newline(self.kindness_amount))
        self.fluff_xscale = 0.8
        if (global.lang == "ja"@1566)
            self.fluff_xscale = 1
        draw_text_transformed((self.xx + 100), local.ch_y[4], string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_286_0"@7131)), self.fluff_xscale, 1, 0)
        draw_item_icon((self.xx + 74), (local.ch_y[4] + 6), 12)
        self.i = 0
        while(true)
        {
            if (self.i < self.fluff_amount)
            {
                draw_item_icon(((self.xx + 230) + (self.i * 20)), (local.ch_y[4] + 6), 12)
                self.i = (self.i + 1)
                continue
            }
            break
        }
    }
    draw_text((self.xx + 320), (self.yy + 105), string_hash_to_newline(self.char_desc))
    self.guts_xoff = 0
    if (global.lang == "ja"@1566)
        self.guts_xoff = 16
    self.i = 0
    while(true)
    {
        if (self.i < self.guts_amount)
        {
            draw_item_icon((((self.xx + 190) + (self.i * 20)) + self.guts_xoff), (local.ch_y[5] + 6), 9)
            self.i = (self.i + 1)
            continue
        }
        break
    }
    self.atsum = (((global.at[global.char[self.coord]] + global.itemat[global.char[self.coord]][0]) + global.itemat[global.char[self.coord]][1]) + global.itemat[global.char[self.coord]][2])
    self.dfsum = (((global.df[global.char[self.coord]] + global.itemdf[global.char[self.coord]][0]) + global.itemdf[global.char[self.coord]][1]) + global.itemdf[global.char[self.coord]][2])
    self.magsum = (((global.mag[global.char[self.coord]] + global.itemmag[global.char[self.coord]][0]) + global.itemmag[global.char[self.coord]][1]) + global.itemmag[global.char[self.coord]][2])
    self.grazesum = global.grazeamt
    self.sizesum = global.grazesize
    self.i = 0
    while(true)
    {
        if (self.i < 3)
        {
            self.j = 0
            while(true)
            {
                if (self.j < 3)
                {
                    if (global.char[self.i] != 0)
                    {
                        self.grazesum = (self.grazesum + global.itemgrazeamt[global.char[self.i]][self.j])
                        self.sizesum = (self.sizesum + global.itemgrazesize[global.char[self.i]][self.j])
                    }
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
    draw_text((self.xx + 230), local.ch_y[0], string_hash_to_newline(self.atsum))
    draw_text((self.xx + 230), local.ch_y[1], string_hash_to_newline(self.dfsum))
    draw_text((self.xx + 230), local.ch_y[2], string_hash_to_newline(self.magsum))
    self.spell_xoff = 0
    if (global.lang == "ja"@1566)
        self.spell_xoff = -10
    self.i = 0
    while(true)
    {
        if (self.i < 6)
        {
            if (global.spell[self.charcoord][self.i] > 0)
            {
                self.g = 0
                if (global.spellusable[self.charcoord][self.i] == 0)
                    self.g = 1
                if (global.spellcost[self.charcoord][self.i] > global.tension)
                    self.g = 1
                if (self.g == 0)
                    draw_set_color(0xFFFFFF)
                if (self.g == 1)
                    draw_set_color(0x808080)
                draw_text((self.xx + 340), local.ch_y[self.i], string_hash_to_newline((string(round(((global.spellcost[self.charcoord][self.i] / global.maxtension) * 100))) + "%"@3588)))
                draw_text(((self.xx + 410) + self.spell_xoff), local.ch_y[self.i], string_hash_to_newline(global.spellname[self.charcoord][self.i]))
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
    if (global.submenu == 21)
        draw_sprite(spr_heart, 0, (self.xx + 320), ((self.yy + 240) + (global.submenucoord[21] * local.ch_vspace)))
    if (self.deschaver == 1)
    {
        draw_set_color(0xFFFFFF)
        draw_text((self.xx + 20), (self.yy + 10), string_hash_to_newline(global.spelldesc[self.charcoord][global.submenucoord[21]]))
    }
}
if (global.menuno == 2)
{
    draw_set_color(0x000000)
    local.ch_vspace = 27
    if (global.lang == "ja"@1566)
    {
        local.ch_vspace = 28
        draw_rectangle((self.xx + 60), (self.yy + 90), (self.xx + 626), (self.yy + 410), 0)
        scr_darkbox((self.xx + 50), (self.yy + 80), (self.xx + 636), (self.yy + 420))
    }
    else
    {
        draw_rectangle((self.xx + 60), (self.yy + 90), (self.xx + 580), (self.yy + 410), 0)
        scr_darkbox((self.xx + 50), (self.yy + 80), (self.xx + 590), (self.yy + 420))
    }
    draw_set_color(0xFFFFFF)
    draw_rectangle((self.xx + 270), (self.yy + 91), (self.xx + 275), ((self.yy + 91) + 135), 0)
    draw_rectangle((self.xx + 59), (self.yy + 221), ((self.xx + 59) + 523), ((self.yy + 221) + 5), 0)
    if (global.lang == "ja"@1566)
        draw_rectangle((self.xx + 59), (self.yy + 221), ((self.xx + 63) + 565), ((self.yy + 221) + 5), 0)
    draw_rectangle((self.xx + 318), (self.yy + 221), ((self.xx + 318) + 5), ((self.yy + 221) + 190), 0)
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"@3387), 0, (self.xx + 118), (self.yy + 86), 2, 2, 0, 0xFFFFFF, 1)
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"@3387), 1, (self.xx + 376), (self.yy + 86), 2, 2, 0, 0xFFFFFF, 1)
    if (global.submenucoord[11] == 1)
        _temp_local_var_6 = 1
    else
        _temp_local_var_6 = (global.submenucoord[11] == 2)
    if _temp_local_var_6
        draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"@3387), 2, (self.xx + 372), (self.yy + 216), 2, 2, 0, 0xFFFFFF, 1)
    else
        draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"@3387), 3, (self.xx + 372), (self.yy + 216), 2, 2, 0, 0xFFFFFF, 1)
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"@3387), 4, (self.xx + 116), (self.yy + 216), 2, 2, 0, 0xFFFFFF, 1)
    self.coord = global.submenucoord[10]
    self.charcoord = global.char[self.coord]
    self.menusiner = (self.menusiner + 1)
    draw_set_color(0xFFFFFF)
    scr_84_set_draw_font("mainbig"@1561)
    self.charname_xoff = 0
    if (global.lang == "ja"@1566)
        self.charname_xoff = -25
    draw_text(((self.xx + 135) + self.charname_xoff), (self.yy + 107), string_hash_to_newline(global.charname[self.charcoord]))
    self.i = 0
    while(true)
    {
        if (self.i < 3)
        {
            self.chosen = 0.4
            if (self.i == self.coord)
                self.chosen = 1
            draw_sprite_ext(spr_equipchar, global.char[self.i], ((90 + self.xx) + (self.i * 50)), (160 + self.yy), 2, 2, 0, 0xFFFFFF, self.chosen)
            self.i = (self.i + 1)
            continue
        }
        break
    }
    if (global.submenu == 10)
        draw_sprite(spr_heart_harrows, (self.menusiner / 20), ((100 + self.xx) + (self.coord * 50)), (142 + self.yy))
    if (global.submenu != 11)
    {
        draw_sprite_ext(spr_dmenu_equip, (self.charcoord - 1), (self.xx + 302), (self.yy + 108), 2, 2, 0, 0xFFFFFF, 1)
        draw_sprite_ext(spr_dmenu_equip, 3, (self.xx + 302), (self.yy + 142), 2, 2, 0, 0xFFFFFF, 1)
        draw_sprite_ext(spr_dmenu_equip, 4, (self.xx + 302), (self.yy + 172), 2, 2, 0, 0xFFFFFF, 1)
    }
    if (global.submenu == 11)
    {
        if (global.submenucoord[11] == 0)
            draw_sprite(spr_heart, 0, (self.xx + 308), (self.yy + 122))
        else
            draw_sprite_ext(spr_dmenu_equip, (self.charcoord - 1), (self.xx + 302), (self.yy + 108), 2, 2, 0, 0xFFFFFF, 1)
        if (global.submenucoord[11] == 1)
            draw_sprite(spr_heart, 0, (self.xx + 308), (self.yy + 152))
        else
            draw_sprite_ext(spr_dmenu_equip, 3, (self.xx + 302), (self.yy + 142), 2, 2, 0, 0xFFFFFF, 1)
        if (global.submenucoord[11] == 2)
            draw_sprite(spr_heart, 0, (self.xx + 308), (self.yy + 182))
        else
            draw_sprite_ext(spr_dmenu_equip, 4, (self.xx + 302), (self.yy + 172), 2, 2, 0, 0xFFFFFF, 1)
    }
    if ((~ self.charweaponname[self.charcoord]) == " "@24)
    {
        draw_text((self.xx + 365), (self.yy + 112), string_hash_to_newline(self.charweaponname[self.charcoord]))
        draw_item_icon((self.xx + 343), (self.yy + 118), self.charweaponicon[self.charcoord])
    }
    else
    {
        draw_set_color(0x404040)
        draw_text((self.xx + 365), (self.yy + 112), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_423_0"@7140)))
        draw_set_color(0xFFFFFF)
    }
    if (global.chararmor1[self.charcoord] != 0)
    {
        draw_text((self.xx + 365), (self.yy + 142), string_hash_to_newline(self.chararmor1name[self.charcoord]))
        draw_item_icon((self.xx + 343), (self.yy + 148), self.chararmor1icon[self.charcoord])
    }
    else
    {
        draw_set_color(0x404040)
        draw_text((self.xx + 365), (self.yy + 142), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_435_0"@7141)))
        draw_set_color(0xFFFFFF)
    }
    if (global.chararmor2[self.charcoord] != 0)
    {
        draw_text((self.xx + 365), (self.yy + 172), string_hash_to_newline(self.chararmor2name[self.charcoord]))
        draw_item_icon((self.xx + 343), (self.yy + 178), self.chararmor2icon[self.charcoord])
    }
    else
    {
        draw_set_color(0x404040)
        draw_text((self.xx + 365), (self.yy + 172), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_447_0"@7142)))
        draw_set_color(0xFFFFFF)
    }
    self.eq_xoff = 0
    if (global.lang == "ja"@1566)
        self.eq_xoff = -6
    if (global.submenucoord[11] == 0)
    {
        self.j = 0
        self.i = self.pagemax[0]
        while(true)
        {
            if (self.i < (6 + self.pagemax[0]))
            {
                self.g = 0
                if (self.charcoord == 1)
                    _temp_local_var_7 = (self.weaponchar1[self.i] == 0)
                else
                    _temp_local_var_7 = 0
                if _temp_local_var_7
                    self.g = 1
                if (self.charcoord == 2)
                    _temp_local_var_8 = (self.weaponchar2[self.i] == 0)
                else
                    _temp_local_var_8 = 0
                if _temp_local_var_8
                    self.g = 1
                if (self.charcoord == 3)
                    _temp_local_var_9 = (self.weaponchar3[self.i] == 0)
                else
                    _temp_local_var_9 = 0
                if _temp_local_var_9
                    self.g = 1
                if (self.g == 0)
                    draw_set_color(0xFFFFFF)
                if (self.g == 1)
                    draw_set_color(0x808080)
                draw_item_icon(((self.xx + 364) + self.eq_xoff), ((self.yy + 236) + (self.j * local.ch_vspace)), self.weaponicon[self.i])
                if (global.weapon[self.i] != 0)
                    draw_text(((self.xx + 384) + self.eq_xoff), ((self.yy + 230) + (self.j * local.ch_vspace)), string_hash_to_newline(self.weaponname[self.i]))
                else
                {
                    draw_set_color(0x404040)
                    draw_text(((self.xx + 384) + self.eq_xoff), ((self.yy + 230) + (self.j * local.ch_vspace)), string_hash_to_newline("---------"@7144))
                }
                self.j = (self.j + 1)
                self.i = (self.i + 1)
                continue
            }
            break
        }
    }
    if (global.submenucoord[11] == 1)
        _temp_local_var_13 = 1
    else
        _temp_local_var_13 = (global.submenucoord[11] == 2)
    if _temp_local_var_13
    {
        self.j = 0
        self.i = self.pagemax[1]
        while(true)
        {
            if (self.i < (6 + self.pagemax[1]))
            {
                self.g = 0
                if (self.charcoord == 1)
                    _temp_local_var_14 = (self.armorchar1[self.i] == 0)
                else
                    _temp_local_var_14 = 0
                if _temp_local_var_14
                    self.g = 1
                if (self.charcoord == 2)
                    _temp_local_var_15 = (self.armorchar2[self.i] == 0)
                else
                    _temp_local_var_15 = 0
                if _temp_local_var_15
                    self.g = 1
                if (self.charcoord == 3)
                    _temp_local_var_16 = (self.armorchar3[self.i] == 0)
                else
                    _temp_local_var_16 = 0
                if _temp_local_var_16
                    self.g = 1
                if (self.g == 0)
                    draw_set_color(0xFFFFFF)
                if (self.g == 1)
                    draw_set_color(0x808080)
                draw_item_icon(((self.xx + 364) + self.eq_xoff), ((self.yy + 236) + (self.j * local.ch_vspace)), self.armoricon[self.i])
                if (global.armor[self.i] != 0)
                    draw_text(((self.xx + 384) + self.eq_xoff), ((self.yy + 230) + (self.j * local.ch_vspace)), string_hash_to_newline(self.armorname[self.i]))
                else
                {
                    draw_set_color(0x404040)
                    draw_text(((self.xx + 384) + self.eq_xoff), ((self.yy + 230) + (self.j * local.ch_vspace)), string_hash_to_newline("---------"@7144))
                }
                self.j = (self.j + 1)
                self.i = (self.i + 1)
                continue
            }
            break
        }
    }
    if (global.submenu == 12)
        _temp_local_var_20 = 1
    else
    {
        if (global.submenu == 13)
            _temp_local_var_20 = 1
        else
            _temp_local_var_20 = (global.submenu == 14)
    }
    if _temp_local_var_20
    {
        self.scroll_xoff = 0
        if (global.lang == "ja"@1566)
            self.scroll_xoff = 54
        if (global.submenu == 12)
            self.pm = 0
        else
            self.pm = 1
        draw_sprite(spr_heart, 0, ((self.xx + 344) + self.eq_xoff), ((self.yy + 240) + ((global.submenucoord[global.submenu] - self.pagemax[self.pm]) * local.ch_vspace)))
        draw_set_color(0xFFFFFF)
        self.i = 0
        while(true)
        {
            if (self.i < 12)
            {
                self.buff = 0
                if (global.submenucoord[global.submenu] == self.i)
                    self.buff = (self.buff + 3)
                if (self.pm == 0)
                {
                    if (global.weapon[self.i] == 0)
                        self.buff = (self.buff - 1)
                }
                if (self.pm == 1)
                {
                    if (global.armor[self.i] == 0)
                        self.buff = (self.buff - 1)
                }
                draw_rectangle((((self.xx + 555) - self.buff) + self.scroll_xoff), (((self.yy + 260) + (self.i * 10)) - self.buff), (((self.xx + 558) + self.buff) + self.scroll_xoff), (((self.yy + 263) + (self.i * 10)) + self.buff), 0)
                self.i = (self.i + 1)
                continue
            }
            break
        }
        if (self.pagemax[self.pm] > 0)
            draw_sprite_ext(spr_morearrow, 0, ((self.xx + 551) + self.scroll_xoff), ((self.yy + 250) - (sin((self.cur_jewel / 12)) * 3)), 1, -1, 0, 0xFFFFFF, 1)
        if ((5 + self.pagemax[self.pm]) < 11)
            draw_sprite_ext(spr_morearrow, 0, ((self.xx + 551) + self.scroll_xoff), ((self.yy + 385) + (sin((self.cur_jewel / 12)) * 3)), 1, 1, 0, 0xFFFFFF, 1)
    }
    draw_set_color(0xFFFFFF)
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
    if (global.submenu == 13)
        _temp_local_var_21 = 1
    else
        _temp_local_var_21 = (global.submenu == 14)
    if _temp_local_var_21
        draw_text((self.xx + 20), (self.yy + 10), string_hash_to_newline(self.armordesc[global.submenucoord[global.submenu]]))
    draw_set_color(0xFFFFFF)
    draw_text((self.xx + 100), ((self.yy + 230) + (local.ch_vspace * 0)), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_556_0"@7147)))
    draw_item_icon((self.xx + 74), ((self.yy + 236) + (local.ch_vspace * 0)), 1)
    draw_text((self.xx + 100), ((self.yy + 230) + (local.ch_vspace * 1)), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_557_0"@7148)))
    draw_item_icon((self.xx + 74), ((self.yy + 236) + (local.ch_vspace * 1)), 4)
    draw_text((self.xx + 100), ((self.yy + 230) + (local.ch_vspace * 2)), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_558_0"@7149)))
    draw_item_icon((self.xx + 74), ((self.yy + 236) + (local.ch_vspace * 2)), 5)
    self.atsum = (((global.at[global.char[self.coord]] + global.itemat[global.char[self.coord]][0]) + global.itemat[global.char[self.coord]][1]) + global.itemat[global.char[self.coord]][2])
    self.dfsum = (((global.df[global.char[self.coord]] + global.itemdf[global.char[self.coord]][0]) + global.itemdf[global.char[self.coord]][1]) + global.itemdf[global.char[self.coord]][2])
    self.magsum = (((global.mag[global.char[self.coord]] + global.itemmag[global.char[self.coord]][0]) + global.itemmag[global.char[self.coord]][1]) + global.itemmag[global.char[self.coord]][2])
    self.grazesum = global.grazeamt
    self.sizesum = global.grazesize
    self.i = 0
    while(true)
    {
        if (self.i < 3)
        {
            self.j = 0
            while(true)
            {
                if (self.j < 3)
                {
                    if (global.char[self.i] != 0)
                    {
                        self.grazesum = (self.grazesum + global.itemgrazeamt[global.char[self.i]][self.j])
                        self.sizesum = (self.sizesum + global.itemgrazesize[global.char[self.i]][self.j])
                    }
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
    if (global.submenu == 12)
        _temp_local_var_22 = 1
    else
    {
        if (global.submenu == 13)
            _temp_local_var_22 = 1
        else
            _temp_local_var_22 = (global.submenu == 14)
    }
    if _temp_local_var_22
    {
        self.cur = global.submenucoord[global.submenu]
        self.g = 0
        if (global.submenu == 12)
        {
            if (self.charcoord == 1)
                _temp_local_var_23 = (self.weaponchar1[self.cur] == 0)
            else
                _temp_local_var_23 = 0
            if _temp_local_var_23
                self.g = 1
            if (self.charcoord == 2)
                _temp_local_var_24 = (self.weaponchar2[self.cur] == 0)
            else
                _temp_local_var_24 = 0
            if _temp_local_var_24
                self.g = 1
            if (self.charcoord == 3)
                _temp_local_var_25 = (self.weaponchar3[self.cur] == 0)
            else
                _temp_local_var_25 = 0
            if _temp_local_var_25
                self.g = 1
        }
        if (global.submenu == 13)
            _temp_local_var_26 = 1
        else
            _temp_local_var_26 = (global.submenu == 14)
        if _temp_local_var_26
        {
            if (self.charcoord == 1)
                _temp_local_var_27 = (self.armorchar1[self.cur] == 0)
            else
                _temp_local_var_27 = 0
            if _temp_local_var_27
                self.g = 1
            if (self.charcoord == 2)
                _temp_local_var_28 = (self.armorchar2[self.cur] == 0)
            else
                _temp_local_var_28 = 0
            if _temp_local_var_28
                self.g = 1
            if (self.charcoord == 3)
                _temp_local_var_29 = (self.armorchar3[self.cur] == 0)
            else
                _temp_local_var_29 = 0
            if _temp_local_var_29
                self.g = 1
        }
        self._abilitytext[0] = self.charweaponability[self.charcoord]
        self._abilitytext[1] = self.chararmor1ability[self.charcoord]
        self._abilitytext[2] = self.chararmor2ability[self.charcoord]
        self._abilitycolor[0] = 0x404040
        self._abilitycolor[1] = 0x404040
        self._abilitycolor[2] = 0x404040
        self._abilityicon[0] = self.charweaponabilityicon[self.charcoord]
        self._abilityicon[1] = self.chararmor1abilityicon[self.charcoord]
        self._abilityicon[2] = self.chararmor2abilityicon[self.charcoord]
        if (self.g == 0)
            _temp_local_var_30 = (global.submenu == 12)
        else
            _temp_local_var_30 = 0
        if _temp_local_var_30
        {
            self.atup = (self.weaponat[self.cur] - global.itemat[self.charcoord][0])
            self.dfup = (self.weapondf[self.cur] - global.itemdf[self.charcoord][0])
            self.magup = (self.weaponmag[self.cur] - global.itemmag[self.charcoord][0])
            self.styleup = self.weaponstyle[self.cur]
            self.grazeup = (self.weapongrazeamt[self.cur] - global.itemgrazeamt[self.charcoord][0])
            self.sizeup = (self.weapongrazesize[self.cur] - global.itemgrazesize[self.charcoord][0])
            self._abilitycolor[0] = 0xFFFFFF
            self._abilityicon[0] = self.weaponabilityicon[self.cur]
            if (self.weaponability[self.cur] != self._abilitytext[0])
            {
                self._abilitycolor[0] = 0x00FFFF
                if (self.weaponability[self.cur] == " "@24)
                    self._abilitycolor[0] = 0x0000FF
            }
            self._abilitytext[0] = self.weaponability[self.cur]
            draw_set_color(0xFFFFFF)
            if (self.atup > 0)
                draw_set_color(0x00FFFF)
            if (self.atup < 0)
                draw_set_color(0x0000FF)
            if (global.lang == "ja"@1566)
                draw_text((self.xx + 230), ((self.yy + 230) + (local.ch_vspace * 0)), string_hash_to_newline(string((self.atsum + self.atup))))
            else
                draw_text((self.xx + 230), ((self.yy + 230) + (local.ch_vspace * 0)), string_hash_to_newline((((string((self.atsum + self.atup)) + scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_643_0"@7160)) + string(self.atup)) + ")"@3428)))
            draw_set_color(0xFFFFFF)
            if (self.dfup > 0)
                draw_set_color(0x00FFFF)
            if (self.dfup < 0)
                draw_set_color(0x0000FF)
            draw_text((self.xx + 230), ((self.yy + 230) + (local.ch_vspace * 1)), string_hash_to_newline((self.dfsum + self.dfup)))
            draw_set_color(0xFFFFFF)
            if (self.magup > 0)
                draw_set_color(0x00FFFF)
            if (self.magup < 0)
                draw_set_color(0x0000FF)
            draw_text((self.xx + 230), ((self.yy + 230) + (local.ch_vspace * 2)), string_hash_to_newline((self.magsum + self.magup)))
        }
        if (self.g == 0)
        {
            if (global.submenu == 13)
                _temp_local_var_31 = 1
            else
                _temp_local_var_31 = (global.submenu == 14)
            if _temp_local_var_31
            {
                self.arno = (global.submenu - 12)
                self.atup = (self.armorat[self.cur] - global.itemat[self.charcoord][self.arno])
                self.dfup = (self.armordf[self.cur] - global.itemdf[self.charcoord][self.arno])
                self.magup = (self.armormag[self.cur] - global.itemmag[self.charcoord][self.arno])
                self.grazeup = (self.armorgrazeamt[self.cur] - global.itemgrazeamt[self.charcoord][self.arno])
                self.sizeup = (self.armorgrazesize[self.cur] - global.itemgrazesize[self.charcoord][self.arno])
                self._abilitycolor[self.arno] = 0xFFFFFF
                self._abilityicon[self.arno] = self.armorabilityicon[self.cur]
                if (self.armorability[self.cur] != self._abilitytext[self.arno])
                {
                    self._abilitycolor[self.arno] = 0x00FFFF
                    if (self.armorability[self.cur] == " "@24)
                        self._abilitycolor[self.arno] = 0x0000FF
                }
                self._abilitytext[self.arno] = self.armorability[self.cur]
                draw_set_color(0xFFFFFF)
                if (self.atup > 0)
                    draw_set_color(0x00FFFF)
                if (self.atup < 0)
                    draw_set_color(0x0000FF)
                draw_text((self.xx + 230), ((self.yy + 230) + (local.ch_vspace * 0)), string_hash_to_newline((self.atsum + self.atup)))
                draw_set_color(0xFFFFFF)
                if (self.dfup > 0)
                    draw_set_color(0x00FFFF)
                if (self.dfup < 0)
                    draw_set_color(0x0000FF)
                draw_text((self.xx + 230), ((self.yy + 230) + (local.ch_vspace * 1)), string_hash_to_newline((self.dfsum + self.dfup)))
                draw_set_color(0xFFFFFF)
                if (self.magup > 0)
                    draw_set_color(0x00FFFF)
                if (self.magup < 0)
                    draw_set_color(0x0000FF)
                draw_text((self.xx + 230), ((self.yy + 230) + (local.ch_vspace * 2)), string_hash_to_newline((self.magsum + self.magup)))
            }
        }
        if (self.g == 1)
        {
            draw_text((self.xx + 230), ((self.yy + 230) + (local.ch_vspace * 0)), string_hash_to_newline(self.atsum))
            draw_text((self.xx + 230), ((self.yy + 230) + (local.ch_vspace * 1)), string_hash_to_newline(self.dfsum))
            draw_text((self.xx + 230), ((self.yy + 230) + (local.ch_vspace * 2)), string_hash_to_newline(self.magsum))
        }
        self.i = 0
        while(true)
        {
            if (self.i < 3)
            {
                if (self._abilitytext[self.i] == " "@24)
                {
                    draw_set_color(self._abilitycolor[self.i])
                    draw_text((self.xx + 100), ((self.yy + 230) + (local.ch_vspace * (self.i + 3))), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_736_0"@7162)))
                }
                else
                {
                    draw_set_color(self._abilitycolor[self.i])
                    draw_text((self.xx + 100), ((self.yy + 230) + (local.ch_vspace * (self.i + 3))), string_hash_to_newline(self._abilitytext[self.i]))
                    draw_set_color(0x40A0FF)
                    draw_item_icon((self.xx + 74), (((self.yy + 230) + (local.ch_vspace * (self.i + 3))) + 8), self._abilityicon[self.i])
                }
                self.i = (self.i + 1)
                continue
            }
            break
        }
    }
    else
    {
        draw_text((self.xx + 230), ((self.yy + 230) + (local.ch_vspace * 0)), string_hash_to_newline(self.atsum))
        draw_text((self.xx + 230), ((self.yy + 230) + (local.ch_vspace * 1)), string_hash_to_newline(self.dfsum))
        draw_text((self.xx + 230), ((self.yy + 230) + (local.ch_vspace * 2)), string_hash_to_newline(self.magsum))
        self._abilitytext[0] = self.charweaponability[self.charcoord]
        self._abilitytext[1] = self.chararmor1ability[self.charcoord]
        self._abilitytext[2] = self.chararmor2ability[self.charcoord]
        self._abilitycolor[0] = 0xFFFFFF
        self._abilitycolor[1] = 0xFFFFFF
        self._abilitycolor[2] = 0xFFFFFF
        self._abilityicon[0] = self.charweaponabilityicon[self.charcoord]
        self._abilityicon[1] = self.chararmor1abilityicon[self.charcoord]
        self._abilityicon[2] = self.chararmor2abilityicon[self.charcoord]
        self.i = 0
        while(true)
        {
            if (self.i < 3)
            {
                if (self._abilitytext[self.i] == " "@24)
                {
                    draw_set_color(0x404040)
                    draw_text((self.xx + 100), ((self.yy + 230) + (local.ch_vspace * (self.i + 3))), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_773_0"@7163)))
                }
                else
                {
                    draw_set_color(self._abilitycolor[self.i])
                    draw_text((self.xx + 100), ((self.yy + 230) + (local.ch_vspace * (self.i + 3))), string_hash_to_newline(self._abilitytext[self.i]))
                    draw_set_color(0x40A0FF)
                    draw_item_icon((self.xx + 74), (((self.yy + 230) + (local.ch_vspace * (self.i + 3))) + 8), self._abilityicon[self.i])
                }
                self.i = (self.i + 1)
                continue
            }
            break
        }
    }
}
if (global.menuno == 1)
{
    draw_set_color(0x000000)
    if (global.lang == "ja"@1566)
    {
        draw_rectangle((self.xx + 46), (self.yy + 90), (self.xx + 594), (self.yy + 360), 0)
        scr_darkbox((self.xx + 36), (self.yy + 80), (self.xx + 604), (self.yy + 370))
    }
    else
    {
        draw_rectangle((self.xx + 70), (self.yy + 90), (self.xx + 570), (self.yy + 360), 0)
        scr_darkbox((self.xx + 60), (self.yy + 80), (self.xx + 580), (self.yy + 370))
    }
    scr_84_set_draw_font("mainbig"@1561)
    scr_itemname()
    if (global.lang == "ja"@1566)
    {
        if (global.submenu == 1)
            draw_sprite(spr_heart, 0, ((self.xx + 134) + (120 * global.submenucoord[1])), (self.yy + 120))
        draw_set_color(0xFFFFFF)
        if (global.submenu > 1)
        {
            if (global.submenucoord[1] == 0)
                draw_set_color(0x40A0FF)
            else
                draw_set_color(0x808080)
        }
        draw_text((self.xx + 158), (self.yy + 110), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_807_0"@7164)))
        if (global.submenu > 1)
        {
            if (global.submenucoord[1] == 1)
                draw_set_color(0x40A0FF)
            else
                draw_set_color(0x808080)
        }
        draw_text((self.xx + 278), (self.yy + 110), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_809_0"@7165)))
        if (global.submenu > 1)
        {
            if (global.submenucoord[1] == 2)
                draw_set_color(0x40A0FF)
            else
                draw_set_color(0x808080)
        }
        draw_text((self.xx + 398), (self.yy + 110), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_811_0"@7166)))
    }
    else
    {
        if (global.submenu == 1)
            draw_sprite(spr_heart, 0, ((self.xx + 155) + (120 * global.submenucoord[1])), (self.yy + 120))
        draw_set_color(0xFFFFFF)
        if (global.submenu > 1)
        {
            if (global.submenucoord[1] == 0)
                draw_set_color(0x40A0FF)
            else
                draw_set_color(0x808080)
        }
        draw_text((self.xx + 180), (self.yy + 110), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_807_0"@7164)))
        if (global.submenu > 1)
        {
            if (global.submenucoord[1] == 1)
                draw_set_color(0x40A0FF)
            else
                draw_set_color(0x808080)
        }
        draw_text((self.xx + 300), (self.yy + 110), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_809_0"@7165)))
        if (global.submenu > 1)
        {
            if (global.submenucoord[1] == 2)
                draw_set_color(0x40A0FF)
            else
                draw_set_color(0x808080)
        }
        draw_text((self.xx + 420), (self.yy + 110), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_811_0"@7166)))
    }
    if (global.submenu >= 2)
    {
        if (global.submenu <= 6)
            _temp_local_var_32 = (global.submenu != 4)
        else
            _temp_local_var_32 = 0
    }
    else
        _temp_local_var_32 = 0
    if _temp_local_var_32
    {
        self.sm = global.submenucoord[2]
        self.yheart = (((floor((self.sm / 2)) * 30) + 162) + self.yy)
        if (global.lang == "ja"@1566)
        {
            self.xheart = (72 + self.xx)
            if (self.sm == 1)
                _temp_local_var_33 = 1
            else
            {
                if (self.sm == 3)
                    _temp_local_var_33 = 1
                else
                {
                    if (self.sm == 5)
                        _temp_local_var_33 = 1
                    else
                    {
                        if (self.sm == 7)
                            _temp_local_var_33 = 1
                        else
                        {
                            if (self.sm == 9)
                                _temp_local_var_33 = 1
                            else
                                _temp_local_var_33 = (self.sm == 11)
                        }
                    }
                }
            }
            if _temp_local_var_33
                self.xheart = (334 + self.xx)
        }
        else
        {
            self.xheart = (120 + self.xx)
            if (self.sm == 1)
                _temp_local_var_41 = 1
            else
            {
                if (self.sm == 3)
                    _temp_local_var_41 = 1
                else
                {
                    if (self.sm == 5)
                        _temp_local_var_41 = 1
                    else
                    {
                        if (self.sm == 7)
                            _temp_local_var_41 = 1
                        else
                        {
                            if (self.sm == 9)
                                _temp_local_var_41 = 1
                            else
                                _temp_local_var_41 = (self.sm == 11)
                        }
                    }
                }
            }
            if _temp_local_var_41
                self.xheart = (330 + self.xx)
        }
        if (global.submenu == 2)
            _temp_local_var_34 = 1
        else
            _temp_local_var_34 = (global.submenu == 3)
        if _temp_local_var_34
            draw_sprite(spr_heart, 0, self.xheart, self.yheart)
        draw_set_color(0xFFFFFF)
        draw_text((self.xx + 20), (self.yy + 10), string_hash_to_newline(self.itemdesc[global.submenucoord[2]]))
    }
    if (global.submenu == 7)
    {
        draw_set_color(0xFFFFFF)
        if (global.lang == "ja"@1566)
            draw_text((self.xx + 20), (self.yy + 10), (global.itemname[global.submenucoord[2]] + string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_829_0"@7169))))
        else
            draw_text((self.xx + 20), (self.yy + 10), string_hash_to_newline(((scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_829_0"@7169) + global.itemname[global.submenucoord[2]]) + "?"@1544)))
    }
    if (global.submenucoord[1] != 2)
    {
        if (global.lang == "ja"@1566)
        {
            draw_set_color(self.bcolor)
            self.i = 0
            while(true)
            {
                if (self.i < 6)
                {
                    draw_text((self.xx + 94), ((self.yy + 154) + (30 * self.i)), string_hash_to_newline(global.itemname[(self.i * 2)]))
                    draw_text((self.xx + 358), ((self.yy + 154) + (30 * self.i)), string_hash_to_newline(global.itemname[((self.i * 2) + 1)]))
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
            draw_set_color(0xFFFFFF)
            if (global.submenu == 1)
                draw_set_color(0x808080)
            self.i = 0
            while(true)
            {
                if (self.i < 6)
                {
                    draw_text((self.xx + 92), ((self.yy + 152) + (30 * self.i)), string_hash_to_newline(global.itemname[(self.i * 2)]))
                    draw_text((self.xx + 356), ((self.yy + 152) + (30 * self.i)), string_hash_to_newline(global.itemname[((self.i * 2) + 1)]))
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
        }
        else
        {
            draw_set_color(self.bcolor)
            self.i = 0
            while(true)
            {
                if (self.i < 6)
                {
                    draw_text((self.xx + 148), ((self.yy + 154) + (30 * self.i)), string_hash_to_newline(global.itemname[(self.i * 2)]))
                    draw_text((self.xx + 358), ((self.yy + 154) + (30 * self.i)), string_hash_to_newline(global.itemname[((self.i * 2) + 1)]))
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
            draw_set_color(0xFFFFFF)
            if (global.submenu == 1)
                draw_set_color(0x808080)
            self.i = 0
            while(true)
            {
                if (self.i < 6)
                {
                    draw_text((self.xx + 146), ((self.yy + 152) + (30 * self.i)), string_hash_to_newline(global.itemname[(self.i * 2)]))
                    draw_text((self.xx + 356), ((self.yy + 152) + (30 * self.i)), string_hash_to_newline(global.itemname[((self.i * 2) + 1)]))
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
        }
    }
    if (global.submenucoord[1] == 2)
    {
        scr_keyiteminfo_all()
        if (global.lang == "ja"@1566)
        {
            draw_set_color(self.bcolor)
            self.i = 0
            while(true)
            {
                if (self.i < 6)
                {
                    draw_text((self.xx + 94), ((self.yy + 154) + (30 * self.i)), string_hash_to_newline(self.keyitemname[(self.i * 2)]))
                    draw_text((self.xx + 358), ((self.yy + 154) + (30 * self.i)), string_hash_to_newline(self.keyitemname[((self.i * 2) + 1)]))
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
            draw_set_color(0xFFFFFF)
            if (global.submenu == 1)
                draw_set_color(0x808080)
            self.i = 0
            while(true)
            {
                if (self.i < 6)
                {
                    if (global.submenu == 4)
                    {
                        if (self.keyitemusable[(self.i * 2)] == 1)
                            draw_set_color(0xFFFFFF)
                        else
                            draw_set_color(0xC0C0C0)
                    }
                    draw_text((self.xx + 92), ((self.yy + 152) + (30 * self.i)), string_hash_to_newline(self.keyitemname[(self.i * 2)]))
                    if (global.submenu == 4)
                    {
                        if (self.keyitemusable[((self.i * 2) + 1)] == 1)
                            draw_set_color(0xFFFFFF)
                        else
                            draw_set_color(0xC0C0C0)
                    }
                    draw_text((self.xx + 356), ((self.yy + 152) + (30 * self.i)), string_hash_to_newline(self.keyitemname[((self.i * 2) + 1)]))
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
        }
        else
        {
            draw_set_color(self.bcolor)
            self.i = 0
            while(true)
            {
                if (self.i < 6)
                {
                    draw_text((self.xx + 148), ((self.yy + 154) + (30 * self.i)), string_hash_to_newline(self.keyitemname[(self.i * 2)]))
                    draw_text((self.xx + 358), ((self.yy + 154) + (30 * self.i)), string_hash_to_newline(self.keyitemname[((self.i * 2) + 1)]))
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
            draw_set_color(0xFFFFFF)
            if (global.submenu == 1)
                draw_set_color(0x808080)
            self.i = 0
            while(true)
            {
                if (self.i < 6)
                {
                    if (global.submenu == 4)
                    {
                        if (self.keyitemusable[(self.i * 2)] == 1)
                            draw_set_color(0xFFFFFF)
                        else
                            draw_set_color(0xC0C0C0)
                    }
                    draw_text((self.xx + 146), ((self.yy + 152) + (30 * self.i)), string_hash_to_newline(self.keyitemname[(self.i * 2)]))
                    if (global.submenu == 4)
                    {
                        if (self.keyitemusable[((self.i * 2) + 1)] == 1)
                            draw_set_color(0xFFFFFF)
                        else
                            draw_set_color(0xC0C0C0)
                    }
                    draw_text((self.xx + 356), ((self.yy + 152) + (30 * self.i)), string_hash_to_newline(self.keyitemname[((self.i * 2) + 1)]))
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
        }
        if (global.submenu == 4)
        {
            self.sm = global.submenucoord[4]
            self.yheart = (((floor((self.sm / 2)) * 30) + 162) + self.yy)
            if (global.lang == "ja"@1566)
            {
                self.xheart = (72 + self.xx)
                if (self.sm == 1)
                    _temp_local_var_35 = 1
                else
                {
                    if (self.sm == 3)
                        _temp_local_var_35 = 1
                    else
                    {
                        if (self.sm == 5)
                            _temp_local_var_35 = 1
                        else
                        {
                            if (self.sm == 7)
                                _temp_local_var_35 = 1
                            else
                            {
                                if (self.sm == 9)
                                    _temp_local_var_35 = 1
                                else
                                    _temp_local_var_35 = (self.sm == 11)
                            }
                        }
                    }
                }
                if _temp_local_var_35
                    self.xheart = (334 + self.xx)
            }
            else
            {
                self.xheart = (120 + self.xx)
                if (self.sm == 1)
                    _temp_local_var_37 = 1
                else
                {
                    if (self.sm == 3)
                        _temp_local_var_37 = 1
                    else
                    {
                        if (self.sm == 5)
                            _temp_local_var_37 = 1
                        else
                        {
                            if (self.sm == 7)
                                _temp_local_var_37 = 1
                            else
                            {
                                if (self.sm == 9)
                                    _temp_local_var_37 = 1
                                else
                                    _temp_local_var_37 = (self.sm == 11)
                            }
                        }
                    }
                }
                if _temp_local_var_37
                    self.xheart = (330 + self.xx)
            }
            draw_sprite(spr_heart, 0, self.xheart, self.yheart)
            draw_set_color(0xFFFFFF)
            draw_text((self.xx + 20), (self.yy + 10), string_hash_to_newline(self.keyitemdesc[global.submenucoord[4]]))
        }
    }
}
