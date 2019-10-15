self.c = 0
while(true)
{
    if (self.c < 3)
    {
        if (self.havechar[self.c] == 1)
        {
            if (self.c == 0)
                self.charcolor = self.hpcolor[0]
            if (self.c == 1)
                self.charcolor = self.hpcolor[1]
            if (self.c == 2)
                self.charcolor = self.hpcolor[2]
            self.gc = global.charturn
            self.xchunk = 0
            if (self.charpos[self.c] == 0)
                _temp_local_var_1 = (self.chartotal == 3)
            else
                _temp_local_var_1 = 0
            if _temp_local_var_1
                self.xchunk = 0
            if (self.charpos[self.c] == 1)
                _temp_local_var_2 = (self.chartotal == 3)
            else
                _temp_local_var_2 = 0
            if _temp_local_var_2
                self.xchunk = 212
            if (self.charpos[self.c] == 2)
                _temp_local_var_3 = (self.chartotal == 3)
            else
                _temp_local_var_3 = 0
            if _temp_local_var_3
                self.xchunk = 424
            if (self.charpos[self.c] == 0)
                _temp_local_var_4 = (self.chartotal == 2)
            else
                _temp_local_var_4 = 0
            if _temp_local_var_4
                self.xchunk = 106
            if (self.charpos[self.c] == 1)
                _temp_local_var_5 = (self.chartotal == 2)
            else
                _temp_local_var_5 = 0
            if _temp_local_var_5
                self.xchunk = 326
            if (self.charpos[self.c] == 0)
                _temp_local_var_6 = (self.chartotal == 1)
            else
                _temp_local_var_6 = 0
            if _temp_local_var_6
                self.xchunk = 212
            if (self.gc == self.charpos[self.c])
            {
                if (global.myfight == 0)
                    scr_selectionmatrix((self.xx + self.xchunk), ((480 - self.bp) + self.yy))
                if (self.mmy[self.c] > -32)
                    self.mmy[self.c] = (self.mmy[self.c] - 2)
                if (self.mmy[self.c] > -24)
                    self.mmy[self.c] = (self.mmy[self.c] - 4)
                if (self.mmy[self.c] > -16)
                    self.mmy[self.c] = (self.mmy[self.c] - 6)
                if (self.mmy[self.c] > -8)
                    self.mmy[self.c] = (self.mmy[self.c] - 8)
                if (self.mmy[self.c] < -32)
                    self.mmy[self.c] = -64
            }
            else
            {
                if (self.mmy[self.c] < -14)
                    self.mmy[self.c] = (self.mmy[self.c] + 15)
                else
                    self.mmy[self.c] = 0
            }
            self.btc[0] = 0
            self.btc[1] = 0
            self.btc[2] = 0
            self.btc[3] = 0
            self.btc[4] = 0
            if (self.gc == self.charpos[self.c])
                self.btc[global.bmenucoord[0][global.charturn]] = 1
            if (global.fighting == 1)
            {
                self.spare_glow = 0
                self.sglowi = 0
                while(true)
                {
                    if (self.sglowi < 3)
                    {
                        if (global.monster[self.sglowi] == 1)
                            _temp_local_var_7 = (global.mercymod[self.sglowi] >= 100)
                        else
                            _temp_local_var_7 = 0
                        if _temp_local_var_7
                            self.spare_glow = 1
                        self.sglowi = (self.sglowi + 1)
                        continue
                    }
                    break
                }
                self.pacify_glow = 0
                if (self.c == 2)
                {
                    self.sglowi = 0
                    while(true)
                    {
                        if (self.sglowi < 3)
                        {
                            if (global.monster[self.sglowi] == 1)
                            {
                                if (global.monsterstatus[self.sglowi] == 1)
                                    _temp_local_var_9 = (global.tension >= 40)
                                else
                                    _temp_local_var_9 = 0
                            }
                            else
                                _temp_local_var_9 = 0
                            if _temp_local_var_9
                                self.pacify_glow = 1
                            if (global.encounterno == 31)
                                self.pacify_glow = 0
                            self.sglowi = (self.sglowi + 1)
                            continue
                        }
                        break
                    }
                }
                draw_sprite(scr_84_get_sprite("spr_btfight"@1825), self.btc[0], ((self.xx + self.xchunk) + 15), ((485 - self.bp) + self.yy))
                if (self.c == 0)
                    draw_sprite(scr_84_get_sprite("spr_btact"@1828), self.btc[1], ((self.xx + self.xchunk) + 50), ((485 - self.bp) + self.yy))
                else
                    draw_sprite(scr_84_get_sprite("spr_bttech"@1829), self.btc[1], ((self.xx + self.xchunk) + 50), ((485 - self.bp) + self.yy))
                draw_sprite(scr_84_get_sprite("spr_btitem"@1830), self.btc[2], ((self.xx + self.xchunk) + 85), ((485 - self.bp) + self.yy))
                draw_sprite(scr_84_get_sprite("spr_btspare"@1831), self.btc[3], ((self.xx + self.xchunk) + 120), ((485 - self.bp) + self.yy))
                draw_sprite(scr_84_get_sprite("spr_btdefend"@1832), self.btc[4], ((self.xx + self.xchunk) + 155), ((485 - self.bp) + self.yy))
                if (self.spare_glow == 1)
                    _temp_local_var_11 = (self.gc == self.charpos[self.c])
                else
                    _temp_local_var_11 = 0
                if _temp_local_var_11
                    draw_sprite_ext(scr_84_get_sprite("spr_btspare"@1831), 2, ((self.xx + self.xchunk) + 120), ((485 - self.bp) + self.yy), 1, 1, 0, 0xFFFFFF, (0.4 + (sin((global.time / 6)) * 0.4)))
                if (self.pacify_glow == 1)
                    _temp_local_var_12 = (self.gc == self.charpos[self.c])
                else
                    _temp_local_var_12 = 0
                if _temp_local_var_12
                    draw_sprite_ext(scr_84_get_sprite("spr_bttech"@1829), 2, ((self.xx + self.xchunk) + 50), ((485 - self.bp) + self.yy), 1, 1, 0, 0xFFFFFF, (0.4 + (sin((global.time / 6)) * 0.4)))
            }
            if (self.gc == self.charpos[self.c])
                draw_set_color(self.charcolor)
            else
                draw_set_color(self.bcolor)
            if (global.charselect == self.charpos[self.c])
                _temp_local_var_13 = 1
            else
                _temp_local_var_13 = (global.charselect == 3)
            if _temp_local_var_13
                draw_set_color(self.charcolor)
            draw_rectangle((self.xx + self.xchunk), ((((480 - self.bp) - 2) + self.yy) + self.mmy[self.c]), ((self.xx + self.xchunk) + 212), ((480 - self.bp) + self.yy), 0)
            draw_set_color(0x000000)
            draw_rectangle(((self.xx + self.xchunk) + 2), (((480 - self.bp) + self.yy) + self.mmy[self.c]), ((self.xx + self.xchunk) + 210), ((((480 - self.bp) + self.yy) + self.mmy[self.c]) + 33), 0)
            self.b_offset = 480
            if (global.fighting == 0)
                self.b_offset = 430
            if (global.fighting == 1)
                self.b_offset = 336
            if (self.c == 0)
            {
                draw_sprite(spr_headkris, global.faceaction[self.charpos[self.c]], ((self.xx + 13) + self.xchunk), ((self.bpoff + self.b_offset) + self.mmy[self.c]))
                draw_sprite(scr_84_get_sprite("spr_bnamekris"@1838), 0, ((self.xx + 51) + self.xchunk), (((self.bpoff + self.b_offset) + 3) + self.mmy[self.c]))
            }
            if (self.c == 1)
            {
                draw_sprite(spr_headsusie, global.faceaction[self.charpos[self.c]], ((self.xx + 13) + self.xchunk), ((self.bpoff + self.b_offset) + self.mmy[self.c]))
                draw_sprite(scr_84_get_sprite("spr_bnamesusie"@1839), 0, ((self.xx + 51) + self.xchunk), (((self.bpoff + self.b_offset) + 3) + self.mmy[self.c]))
            }
            if (self.c == 2)
            {
                draw_sprite(spr_headralsei, global.faceaction[self.charpos[self.c]], ((self.xx + 13) + self.xchunk), ((self.bpoff + self.b_offset) + self.mmy[self.c]))
                draw_sprite(scr_84_get_sprite("spr_bnameralsei"@1840), 0, ((self.xx + 51) + self.xchunk), (((self.bpoff + self.b_offset) + 3) + self.mmy[self.c]))
            }
            draw_sprite(spr_hpname, 0, ((self.xx + 109) + self.xchunk), (((self.bpoff + self.b_offset) + 11) + self.mmy[self.c]))
            draw_set_color(0xFFFFFF)
            draw_set_font(global.hpfont)
            if ((global.hp[(self.c + 1)] / global.maxhp[(self.c + 1)]) <= 0.25)
                draw_set_color(0x00FFFF)
            if (global.hp[(self.c + 1)] <= 0)
                draw_set_color(0x0000FF)
            draw_set_halign(fa_right)
            draw_text(((self.xx + 160) + self.xchunk), (((self.bpoff + self.b_offset) - 2) + self.mmy[self.c]), string_hash_to_newline(global.hp[(self.c + 1)]))
            draw_sprite(spr_hpslash, 0, ((self.xx + 159) + self.xchunk), (((self.bpoff + self.b_offset) - 4) + self.mmy[self.c]))
            draw_text(((self.xx + 205) + self.xchunk), (((self.bpoff + self.b_offset) - 2) + self.mmy[self.c]), string_hash_to_newline(global.maxhp[(self.c + 1)]))
            draw_set_halign(fa_left)
            draw_set_color(0x000080)
            draw_rectangle(((self.xx + 128) + self.xchunk), (((self.bpoff + self.b_offset) + 11) + self.mmy[self.c]), ((self.xx + 203) + self.xchunk), (((self.bpoff + self.b_offset) + 19) + self.mmy[self.c]), 0)
            if (global.hp[(self.c + 1)] > 0)
                _temp_local_var_14 = (global.maxhp[(self.c + 1)] > 0)
            else
                _temp_local_var_14 = 0
            if _temp_local_var_14
            {
                draw_set_color(self.charcolor)
                draw_rectangle(((self.xx + 128) + self.xchunk), (((self.bpoff + self.b_offset) + 11) + self.mmy[self.c]), (((self.xx + self.xchunk) + 128) + ceil(((global.hp[(self.c + 1)] / global.maxhp[(self.c + 1)]) * 75))), (((self.bpoff + self.b_offset) + 19) + self.mmy[self.c]), 0)
            }
        }
        self.c = (self.c + 1)
        continue
    }
    break
}
