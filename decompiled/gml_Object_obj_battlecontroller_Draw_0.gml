self.xx = __view_get(e__VW.XView, 0)
self.yy = __view_get(e__VW.YView, 0)
self.tpoff = ((self.tp - self.tpy) + self.yy)
self.bpoff = (((variable)(- self.bp) + self.bpy) + self.yy)
local.spell_offset = 500
if (global.lang == "ja"@1566)
    local.spell_offset = 496
if (self.intro == 1)
{
    if (self.bp < (self.bpy - 1))
    {
        if ((self.bpy - self.bp) < 40)
            self.bp = (self.bp + round(((self.bpy - self.bp) / 2.5)))
        else
            self.bp = (self.bp + 30)
    }
    else
        self.bp = self.bpy
    if (self.bp == self.bpy)
        self.intro = 0
}
if (self.intro == 2)
{
    if (self.bp > 0)
    {
        if (round(((self.bpy - self.bp) / 5)) > 15)
            self.bp = (self.bp - round(((self.bpy - self.bp) / 2.5)))
        else
            self.bp = (self.bp - 30)
    }
    else
        self.bp = 0
}
draw_set_color(0x000000)
draw_rectangle((self.xx - 10), (481 + self.yy), (self.xx + 700), ((480 - self.bp) + self.yy), 0)
draw_set_color(self.bcolor)
draw_rectangle((self.xx - 10), (((480 - self.bp) - 2) + self.yy), (self.xx + 700), ((480 - self.bp) + self.yy), 0)
draw_set_color(self.bcolor)
draw_rectangle((self.xx - 10), (((480 - self.bp) + 34) + self.yy), (self.xx + 700), (((480 - self.bp) + 36) + self.yy), 0)
scr_charbox()
if (global.bmenuno == 1)
    _temp_local_var_1 = 1
else
{
    if (global.bmenuno == 3)
        _temp_local_var_1 = 1
    else
    {
        if (global.bmenuno == 11)
            _temp_local_var_1 = 1
        else
            _temp_local_var_1 = (global.bmenuno == 12)
    }
}
if _temp_local_var_1
{
    if (global.myfight == 0)
    {
        draw_sprite(spr_heart, 0, (self.xx + 55), ((self.yy + 385) + (global.bmenucoord[global.bmenuno][global.charturn] * 30)))
        scr_84_set_draw_font("mainbig"@1561)
        self.i = 0
        while(true)
        {
            if (self.i < 3)
            {
                with(global.monsterinstance[global.bmenucoord[global.bmenuno][global.charturn]])
                {
                    if (self.flash == 0)
                        self.fsiner = 0
                    self.flash = 1
                    self.becomeflash = 1
                }
                if (global.monster[self.i] == 1)
                {
                    draw_set_color(0xFFFFFF)
                    self.mercydraw = 0
                    self.tireddraw = 0
                    self.mnamecolor1 = 0xFFFFFF
                    self.mnamecolor2 = 0xFFFFFF
                    self.aqcolor = merge_color(0xFFFF00, 0xFF0000, 0.3)
                    if (global.monsterstatus[self.i] == 1)
                        self.tireddraw = 1
                    if (global.mercymod[self.i] >= global.mercymax[self.i])
                        self.mercydraw = 1
                    self.namewidth = string_width(string_hash_to_newline(global.monstername[self.i]))
                    if (self.tireddraw == 1)
                    {
                        if (global.encounterno != 31)
                        {
                            draw_set_color(self.aqcolor)
                            self.mnamecolor1 = self.aqcolor
                            self.mnamecolor2 = self.aqcolor
                        }
                        draw_sprite(spr_tiredmark, 0, (((self.xx + 80) + self.namewidth) + 40), ((self.yy + 385) + (self.i * 30)))
                    }
                    if (self.mercydraw == 1)
                    {
                        draw_set_color(0x00FFFF)
                        self.mnamecolor1 = 65535
                        if (self.tireddraw == 0)
                            self.mnamecolor2 = 65535
                        draw_sprite(spr_sparestar, 0, (((self.xx + 80) + self.namewidth) + 20), ((self.yy + 385) + (self.i * 30)))
                    }
                    draw_text_colour((self.xx + 80), ((self.yy + 375) + (self.i * 30)), string_hash_to_newline(global.monstername[self.i]), self.mnamecolor1, self.mnamecolor2, self.mnamecolor2, self.mnamecolor1, 1)
                    draw_set_color(0x808080)
                    draw_text((((self.xx + 80) + self.namewidth) + 60), ((self.yy + 375) + (self.i * 30)), string_hash_to_newline(global.monstercomment[self.i]))
                    draw_set_color(0x000080)
                    draw_rectangle((self.xx + 510), ((self.yy + 380) + (self.i * 30)), (self.xx + 590), (((self.yy + 380) + (self.i * 30)) + 15), 0)
                    draw_set_color(0x00FF00)
                    draw_rectangle((self.xx + 510), ((self.yy + 380) + (self.i * 30)), ((self.xx + 510) + ((global.monsterhp[self.i] / global.monstermaxhp[self.i]) * 80)), (((self.yy + 380) + (self.i * 30)) + 15), 0)
                    self.mercyamt = global.mercymod[self.i]
                    if (self.mercyamt >= 100)
                        self.mercyamt = 100
                }
                self.i = (self.i + 1)
                continue
            }
            break
        }
    }
}
if (global.bmenuno == 2)
    _temp_local_var_2 = (global.myfight == 0)
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    self.thischar = global.char[global.charturn]
    self.spellcoord = global.bmenucoord[2][global.charturn]
    self.page = 0
    if (self.spellcoord > 5)
    {
        self.page = 1
        self.spellcoord = (self.spellcoord - 6)
    }
    self.icx = 10
    self.icy = 385
    if (self.spellcoord == 1)
        _temp_local_var_3 = 1
    else
    {
        if (self.spellcoord == 3)
            _temp_local_var_3 = 1
        else
            _temp_local_var_3 = (self.spellcoord == 5)
    }
    if _temp_local_var_3
        self.icx = 230
    if (self.spellcoord > 1)
        _temp_local_var_4 = (self.spellcoord < 4)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
        self.icy = 415
    if (self.spellcoord > 3)
        self.icy = 445
    draw_sprite(spr_heart, 0, (self.xx + self.icx), (self.yy + self.icy))
    scr_84_set_draw_font("mainbig"@1561)
    self.i = 0
    while(true)
    {
        if (self.i < 3)
        {
            draw_set_color(0xFFFFFF)
            if (global.tension < global.spellcost[self.thischar][((self.page * 6) + (self.i * 2))])
                draw_set_color(0x808080)
            else
            {
                if (global.spell[self.thischar][((self.page * 6) + (self.i * 2))] == 3)
                {
                    self.pacify_glow = 0
                    self.sglowi = 0
                    while(true)
                    {
                        if (self.sglowi < 3)
                        {
                            if (global.monster[self.sglowi] == 1)
                                _temp_local_var_5 = (global.monsterstatus[self.sglowi] == 1)
                            else
                                _temp_local_var_5 = 0
                            if _temp_local_var_5
                            {
                                if (global.encounterno != 31)
                                    self.pacify_glow = 1
                            }
                            self.sglowi = (self.sglowi + 1)
                            continue
                        }
                        break
                    }
                    if (self.pacify_glow == 1)
                        draw_set_color(merge_color(0xFFFF00, 0xFF0000, 0.3))
                }
            }
            draw_text((self.xx + 30), ((self.yy + 375) + (self.i * 30)), string_hash_to_newline(global.spellnameb[self.thischar][((self.page * 6) + (self.i * 2))]))
            draw_set_color(0xFFFFFF)
            if (global.tension < global.spellcost[self.thischar][(((self.page * 6) + (self.i * 2)) + 1)])
                draw_set_color(0x808080)
            draw_text((self.xx + 260), ((self.yy + 375) + (self.i * 30)), string_hash_to_newline(global.spellnameb[self.thischar][(((self.page * 6) + (self.i * 2)) + 1)]))
            self.i = (self.i + 1)
            continue
        }
        break
    }
    draw_set_color(0x808080)
    draw_text((self.xx + local.spell_offset), (self.yy + 375), string_hash_to_newline(global.spelldescb[self.thischar][((self.page * 6) + self.spellcoord)]))
    self.thiscost = round(((global.spellcost[self.thischar][((self.page * 6) + self.spellcoord)] / global.maxtension) * 100))
    draw_set_color(0x40A0FF)
    draw_text((self.xx + local.spell_offset), (self.yy + 440), string_hash_to_newline((string(self.thiscost) + scr_84_get_lang_string("obj_battlecontroller_slash_Draw_0_gml_171_0"@7330))))
}
if (global.bmenuno == 4)
    _temp_local_var_7 = (global.myfight == 0)
else
    _temp_local_var_7 = 0
if _temp_local_var_7
{
    self.itemcoord = global.bmenucoord[4][global.charturn]
    self.page = 0
    if (self.itemcoord > 5)
    {
        self.page = 1
        self.itemcoord = (self.itemcoord - 6)
    }
    self.icx = 10
    self.icy = 385
    if (self.itemcoord == 1)
        _temp_local_var_8 = 1
    else
    {
        if (self.itemcoord == 3)
            _temp_local_var_8 = 1
        else
            _temp_local_var_8 = (self.itemcoord == 5)
    }
    if _temp_local_var_8
        self.icx = 230
    if (global.lang == "ja"@1566)
    {
        if (self.itemcoord == 1)
            _temp_local_var_9 = 1
        else
        {
            if (self.itemcoord == 3)
                _temp_local_var_9 = 1
            else
                _temp_local_var_9 = (self.itemcoord == 5)
        }
        if _temp_local_var_9
            self.icx = 240
    }
    if (self.itemcoord > 1)
        _temp_local_var_10 = (self.itemcoord < 4)
    else
        _temp_local_var_10 = 0
    if _temp_local_var_10
        self.icy = 415
    if (self.itemcoord > 3)
        self.icy = 445
    draw_sprite(spr_heart, 0, (self.xx + self.icx), (self.yy + self.icy))
    scr_84_set_draw_font("mainbig"@1561)
    self.i = 0
    while(true)
    {
        if (self.i < 3)
        {
            if (global.lang == "ja"@1566)
            {
                draw_set_color(0xFFFFFF)
                self.jp_string_lengthtest[0] = string_width(string_hash_to_newline(self.tempitemnameb[((self.page * 6) + (self.i * 2))][global.charturn]))
                self.jp_string_lengthtest[1] = string_width(string_hash_to_newline(self.tempitemnameb[(((self.page * 6) + (self.i * 2)) + 1)][global.charturn]))
                if (self.jp_string_lengthtest[0] >= 200)
                {
                    self.jp_string_xscale = (200 / self.jp_string_lengthtest[0])
                    draw_text_transformed((self.xx + 30), ((self.yy + 375) + (self.i * 30)), string_hash_to_newline(self.tempitemnameb[((self.page * 6) + (self.i * 2))][global.charturn]), self.jp_string_xscale, 1, 0)
                }
                else
                    draw_text((self.xx + 30), ((self.yy + 375) + (self.i * 30)), string_hash_to_newline(self.tempitemnameb[((self.page * 6) + (self.i * 2))][global.charturn]))
                draw_set_color(0xFFFFFF)
                if (self.jp_string_lengthtest[1] >= 200)
                {
                    self.jp_string_xscale = (200 / self.jp_string_lengthtest[1])
                    draw_text_transformed((self.xx + 260), ((self.yy + 375) + (self.i * 30)), string_hash_to_newline(self.tempitemnameb[(((self.page * 6) + (self.i * 2)) + 1)][global.charturn]), self.jp_string_xscale, 1, 0)
                }
                else
                    draw_text((self.xx + 260), ((self.yy + 375) + (self.i * 30)), string_hash_to_newline(self.tempitemnameb[(((self.page * 6) + (self.i * 2)) + 1)][global.charturn]))
            }
            else
            {
                draw_set_color(0xFFFFFF)
                draw_text((self.xx + 30), ((self.yy + 375) + (self.i * 30)), string_hash_to_newline(self.tempitemnameb[((self.page * 6) + (self.i * 2))][global.charturn]))
                draw_text((self.xx + 260), ((self.yy + 375) + (self.i * 30)), string_hash_to_newline(self.tempitemnameb[(((self.page * 6) + (self.i * 2)) + 1)][global.charturn]))
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
    if (self.page == 0)
        _temp_local_var_11 = (global.item[6] != 0)
    else
        _temp_local_var_11 = 0
    if _temp_local_var_11
        draw_sprite(spr_morearrow, 0, (self.xx + 470), ((self.yy + 445) + (sin((self.s_siner / 10)) * 2)))
    if (self.page == 1)
        draw_sprite_ext(spr_morearrow, 0, (self.xx + 470), ((self.yy + 395) - (sin((self.s_siner / 10)) * 2)), 1, -1, 0, 0xFFFFFF, 1)
    draw_set_color(0x808080)
    draw_text((self.xx + local.spell_offset), (self.yy + 375), string_hash_to_newline(self.tempitemdescb[((self.page * 6) + self.itemcoord)][global.charturn]))
}
if (global.bmenuno == 9)
    _temp_local_var_12 = (global.myfight == 0)
else
    _temp_local_var_12 = 0
if _temp_local_var_12
{
    self.actcoord = global.bmenucoord[9][global.charturn]
    self.page = 0
    self.icx = 10
    self.icy = 385
    if (self.actcoord == 1)
        _temp_local_var_13 = 1
    else
    {
        if (self.actcoord == 3)
            _temp_local_var_13 = 1
        else
            _temp_local_var_13 = (self.actcoord == 5)
    }
    if _temp_local_var_13
        self.icx = 240
    if (self.actcoord > 1)
        _temp_local_var_14 = (self.actcoord < 4)
    else
        _temp_local_var_14 = 0
    if _temp_local_var_14
        self.icy = 415
    if (self.actcoord > 3)
        self.icy = 445
    draw_sprite(spr_heart, 0, (self.xx + self.icx), (self.yy + self.icy))
    scr_84_set_draw_font("mainbig"@1561)
    self.i = 0
    while(true)
    {
        if (self.i < 6)
        {
            self.cant = 0
            self.chartime = global.actactor[global.bmenucoord[11][global.charturn]][self.i]
            self.charoffset = 0
            self.xoffset = 0
            if (self.i == 1)
                _temp_local_var_15 = 1
            else
            {
                if (self.i == 3)
                    _temp_local_var_15 = 1
                else
                    _temp_local_var_15 = (self.i == 5)
            }
            if _temp_local_var_15
                self.xoffset = 230
            self.yoffset = 0
            if (self.i == 2)
                _temp_local_var_16 = 1
            else
                _temp_local_var_16 = (self.i == 3)
            if _temp_local_var_16
                self.yoffset = 30
            if (self.i == 4)
                _temp_local_var_17 = 1
            else
                _temp_local_var_17 = (self.i == 5)
            if _temp_local_var_17
                self.yoffset = 60
            self.drawsus = 0
            self.drawral = 0
            self.susblend = 0xFFFFFF
            self.ralblend = 16777215
            if (self.chartime == 2)
                _temp_local_var_18 = 1
            else
                _temp_local_var_18 = (self.chartime == 4)
            if _temp_local_var_18
            {
                self.drawsus = 1
                if (self.havechar[1] == 0)
                    _temp_local_var_19 = 1
                else
                    _temp_local_var_19 = (global.hp[2] <= 0)
                if _temp_local_var_19
                {
                    self.susblend = 0x808080
                    self.cant = 1
                }
                self.charoffset = 36
            }
            if (self.chartime == 3)
                _temp_local_var_20 = 1
            else
                _temp_local_var_20 = (self.chartime == 4)
            if _temp_local_var_20
            {
                self.drawral = 1
                if (self.havechar[2] == 0)
                    _temp_local_var_21 = 1
                else
                    _temp_local_var_21 = (global.hp[3] <= 0)
                if _temp_local_var_21
                {
                    self.ralblend = 8421504
                    self.cant = 1
                }
                self.charoffset = 36
            }
            if (global.tension < global.actcost[global.bmenucoord[11][global.charturn]][self.i])
                self.cant = 1
            if (self.chartime == 4)
                self.charoffset = round((self.charoffset * 1.8))
            draw_set_color(0xFFFFFF)
            if (self.cant == 1)
                draw_set_color(0x808080)
            if (self.chartime == 2)
                draw_sprite_ext(spr_headsusie, 0, ((self.xx + 30) + self.xoffset), ((self.yy + 375) + self.yoffset), 1, 1, 0, self.susblend, 1)
            if (self.chartime == 3)
                draw_sprite_ext(spr_headralsei, 0, ((self.xx + 30) + self.xoffset), ((self.yy + 375) + self.yoffset), 1, 1, 0, self.susblend, 1)
            if (self.chartime == 4)
            {
                draw_sprite_ext(spr_headsusie, 0, ((self.xx + 30) + self.xoffset), ((self.yy + 375) + self.yoffset), 1, 1, 0, self.susblend, 1)
                draw_sprite_ext(spr_headralsei, 0, ((self.xx + 60) + self.xoffset), ((self.yy + 375) + self.yoffset), 1, 1, 0, self.susblend, 1)
            }
            if (global.lang == "ja"@1566)
            {
                self.jp_string_lengthtest_act = string_width(string_hash_to_newline(global.actname[global.bmenucoord[11][global.charturn]][self.i]))
                if (((self.jp_string_lengthtest_act + 30) + self.charoffset) >= 235)
                    _temp_local_var_22 = (self.xoffset == 0)
                else
                    _temp_local_var_22 = 0
                if _temp_local_var_22
                {
                    self.jp_string_xscale = ((206 - self.charoffset) / self.jp_string_lengthtest_act)
                    draw_text_transformed((((self.xx + 30) + self.charoffset) + self.xoffset), ((self.yy + 375) + self.yoffset), string_hash_to_newline(global.actname[global.bmenucoord[11][global.charturn]][self.i]), self.jp_string_xscale, 1, 0)
                }
                else
                    draw_text((((self.xx + 30) + self.charoffset) + self.xoffset), ((self.yy + 375) + self.yoffset), string_hash_to_newline(global.actname[global.bmenucoord[11][global.charturn]][self.i]))
            }
            else
                draw_text((((self.xx + 30) + self.charoffset) + self.xoffset), ((self.yy + 375) + self.yoffset), string_hash_to_newline(global.actname[global.bmenucoord[11][global.charturn]][self.i]))
            self.i = (self.i + 1)
            continue
        }
        break
    }
    draw_set_color(0x808080)
    draw_text((self.xx + 500), (self.yy + 375), string_hash_to_newline(global.actdesc[global.bmenucoord[11][global.charturn]][self.actcoord]))
    if (global.tensionselect > 0)
    {
        self.thiscost = round(((global.actcost[global.bmenucoord[11][global.charturn]][self.actcoord] / global.maxtension) * 100))
        draw_set_color(0x40A0FF)
        draw_text((self.xx + 500), (self.yy + 440), string_hash_to_newline((string(self.thiscost) + scr_84_get_lang_string("obj_battlecontroller_slash_Draw_0_gml_280_0"@7343))))
    }
    with(global.monsterinstance[global.bmenucoord[11][global.charturn]])
    {
        if (self.flash == 0)
            self.fsiner = 0
        self.flash = 1
        self.becomeflash = 1
    }
}
if (global.bmenuno == 7)
    _temp_local_var_31 = 1
else
    _temp_local_var_31 = (global.bmenuno == 8)
if _temp_local_var_31
{
    if (global.myfight == 0)
    {
        draw_sprite(spr_heart, 0, (self.xx + 55), ((self.yy + 385) + (global.bmenucoord[global.bmenuno][global.charturn] * 30)))
        scr_84_set_draw_font("mainbig"@1561)
        self.i = 0
        while(true)
        {
            if (self.i < 3)
            {
                if (global.char[self.i] != 0)
                {
                    with(global.charinstance[global.bmenucoord[global.bmenuno][global.charturn]])
                    {
                        if (self.flash == 0)
                            self.fsiner = 0
                        self.flash = 1
                        self.becomeflash = 1
                    }
                    draw_set_color(0xFFFFFF)
                    draw_text((self.xx + 80), ((self.yy + 375) + (self.i * 30)), string_hash_to_newline(global.charname[global.char[self.i]]))
                    draw_set_color(0x000080)
                    draw_rectangle((self.xx + 400), ((self.yy + 380) + (self.i * 30)), (self.xx + 500), (((self.yy + 380) + (self.i * 30)) + 15), 0)
                    draw_set_color(0x00FF00)
                    draw_rectangle((self.xx + 400), ((self.yy + 380) + (self.i * 30)), ((self.xx + 400) + ((global.hp[global.char[self.i]] / global.maxhp[global.char[self.i]]) * 100)), (((self.yy + 380) + (self.i * 30)) + 15), 0)
                }
                self.i = (self.i + 1)
                continue
            }
            break
        }
    }
}
