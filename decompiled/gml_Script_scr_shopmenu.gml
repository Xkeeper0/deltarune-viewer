if (self.argument0 == 0)
{
    if (self.menu == 1)
        _temp_local_var_1 = 1
    else
        _temp_local_var_1 = (self.menu == 2)
    if _temp_local_var_1
    {
        scr_darkbox_black(400, self.minimenuy, 640, 255)
        draw_set_color(0xFFFFFF)
        scr_84_set_draw_font("mainbig"@1561)
        if (self.menuc[1] == 0)
            draw_text(440, (self.minimenuy + 28), string_hash_to_newline(self.shopdesc[0]))
        if (self.menuc[1] == 1)
            draw_text(440, (self.minimenuy + 28), string_hash_to_newline(self.shopdesc[1]))
        if (self.menuc[1] == 2)
            draw_text(440, (self.minimenuy + 28), string_hash_to_newline(self.shopdesc[2]))
        if (self.menuc[1] == 3)
            draw_text(440, (self.minimenuy + 28), string_hash_to_newline(self.shopdesc[3]))
        scr_84_set_draw_font("dotumche"@1564)
        if (self.itemtype[self.menuc[1]] == "weapon"@166)
            _temp_local_var_2 = 1
        else
            _temp_local_var_2 = (self.itemtype[self.menuc[1]] == "armor"@167)
        if _temp_local_var_2
        {
            self.i = 0
            while(true)
            {
                if (self.i < 3)
                {
                    self.can_index = 0
                    self.facetype = spr_headkris
                    self.which = global.char[self.i]
                    if (global.char[self.i] == 1)
                        self.facetype = spr_headkris
                    if (global.char[self.i] == 2)
                        self.facetype = spr_headsusie
                    if (global.char[self.i] == 3)
                        self.facetype = spr_headralsei
                    if (self.which != 0)
                    {
                        if (self.i == 0)
                        {
                            self.locx = 0
                            self.locy = 0
                        }
                        if (self.i == 1)
                        {
                            self.locx = 100
                            self.locy = 0
                        }
                        if (self.i == 2)
                        {
                            self.locx = 0
                            self.locy = 45
                        }
                        if (self.canequip[self.menuc[1]][self.which] == 0)
                            self.can_index = 8
                        draw_sprite(self.facetype, self.can_index, (426 + self.locx), ((self.minimenuy + 140) + self.locy))
                        if (self.itemtype[self.menuc[1]] == "weapon"@166)
                            _temp_local_var_3 = (self.can_index != 8)
                        else
                            _temp_local_var_3 = 0
                        if _temp_local_var_3
                        {
                            draw_set_color(0xFFFFFF)
                            self.sum[0] = (self.itematk[self.menuc[1]] - global.itemat[self.which][0])
                            self.sum[1] = (self.itemmagic[self.menuc[1]] - global.itemmag[self.which][0])
                            self.j = 0
                            while(true)
                            {
                                if (self.j < 2)
                                {
                                    self.dcolor = 0xFFFFFF
                                    self.addt = ""@2240
                                    draw_set_color(0xFFFFFF)
                                    if (self.sum[self.j] > 0)
                                    {
                                        draw_set_color(0x00FFFF)
                                        self.addt = "+"@2672
                                    }
                                    if (self.sum[self.j] < 0)
                                        draw_set_color(0xFFFF00)
                                    draw_sprite_ext(spr_shopicon, self.j, (470 + self.locx), (((self.minimenuy + self.locy) + 135) + (20 * self.j)), 1, 1, 0, self.dcolor, 1)
                                    draw_text((490 + self.locx), (((self.minimenuy + self.locy) + 135) + (20 * self.j)), string_hash_to_newline((self.addt + string(self.sum[self.j]))))
                                    self.j = (self.j + 1)
                                    continue
                                }
                                break
                            }
                        }
                        if (self.itemtype[self.menuc[1]] == "armor"@167)
                            _temp_local_var_4 = (self.can_index != 8)
                        else
                            _temp_local_var_4 = 0
                        if _temp_local_var_4
                        {
                            self.sum[0] = (self.itemdef[self.menuc[1]] - global.itemdf[self.which][1])
                            self.sum[1] = (self.itemdef[self.menuc[1]] - global.itemdf[self.which][2])
                            self.j = 0
                            while(true)
                            {
                                if (self.j < 2)
                                {
                                    self.dcolor = 0xFFFFFF
                                    self.addt = ""@2240
                                    draw_set_color(0xFFFFFF)
                                    if (self.sum[self.j] > 0)
                                    {
                                        draw_set_color(0x00FFFF)
                                        self.addt = "+"@2672
                                    }
                                    if (self.sum[self.j] < 0)
                                        draw_set_color(0xFFFF00)
                                    draw_sprite_ext(spr_shopicon, (2 + self.j), (470 + self.locx), (((self.minimenuy + self.locy) + 135) + (20 * self.j)), 1, 1, 0, self.dcolor, 1)
                                    draw_text((490 + self.locx), (((self.minimenuy + 135) + (20 * self.j)) + self.locy), string_hash_to_newline((self.addt + string(self.sum[self.j]))))
                                    self.j = (self.j + 1)
                                    continue
                                }
                                break
                            }
                        }
                    }
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
        }
    }
}
if (self.argument0 == 4)
{
    if (self.menu == 11)
        _temp_local_var_7 = 1
    else
        _temp_local_var_7 = (self.menu == 15)
    if _temp_local_var_7
    {
        draw_set_color(0xFFFFFF)
        scr_84_set_draw_font("mainbig"@1561)
        scr_itemcheck(0)
        self.menumax = (11 - self.itemcount)
        if (self.menumax < 0)
            self.menumax = 0
        if (self.menu == 11)
        {
            self._up_pressed = 0
            self._down_pressed = 0
            if down_h()
            {
                self.hold_up = 0
                if down_p()
                    self._down_pressed = 1
                self.hold_down = (self.hold_down + 1)
                if (self.hold_down >= 8)
                {
                    self._down_pressed = 1
                    self.hold_down = 6
                }
                if (self._down_pressed == 1)
                {
                    if (self.menuc[self.menu] < self.menumax)
                    {
                        self.menuc[self.menu] = (self.menuc[self.menu] + 1)
                        if (self.menuc[self.menu] > (self.pagemax + 4))
                            self.pagemax = (self.pagemax + 1)
                    }
                }
            }
            else
                self.hold_down = 0
            if up_h()
            {
                self.hold_down = 0
                if up_p()
                    self._up_pressed = 1
                self.hold_up = (self.hold_up + 1)
                if (self.hold_up >= 8)
                {
                    self._up_pressed = 1
                    self.hold_up = 6
                }
                if (self._up_pressed == 1)
                {
                    if (self.menuc[self.menu] > 0)
                    {
                        self.menuc[self.menu] = (self.menuc[self.menu] - 1)
                        if (self.menuc[self.menu] < self.pagemax)
                            self.pagemax = (self.pagemax - 1)
                    }
                }
            }
            else
                self.hold_up = 0
        }
        self.j = 0
        self.i = self.pagemax
        while(true)
        {
            if (self.i < (5 + self.pagemax))
            {
                draw_sprite(spr_heart, 0, 30, (270 + ((self.menuc[11] - self.pagemax) * 40)))
                self.g = 0
                draw_set_color(0xFFFFFF)
                self._itempname = global.itemnameb[self.i]
                if (self._itempname == " "@24)
                {
                    self._itempname = "--------"@2685
                    draw_set_color(0x404040)
                }
                draw_text(60, (260 + (self.j * 40)), string_hash_to_newline(self._itempname))
                if (global.itemvalue[self.i] > 1)
                    draw_text(300, (260 + (self.j * 40)), string_hash_to_newline(("$"@2686 + string(ceil((global.itemvalue[self.i] / 2))))))
                self.j = (self.j + 1)
                self.i = (self.i + 1)
                continue
            }
            break
        }
        draw_set_color(0xFFFFFF)
        if (self.menu == 11)
        {
            if button1_p()
                _temp_local_var_8 = (self.onebuffer < 0)
            else
                _temp_local_var_8 = 0
            if _temp_local_var_8
            {
                if (global.itemvalue[self.menuc[11]] > 1)
                    self.menu = 15
                else
                    self.sidemessage2 = 3
                self.sellvalue = ceil((global.itemvalue[self.menuc[11]] / 2))
                self.tempmenu = 11
                self.onebuffer = 2
                with(obj_writer)
                {
                    instance_destroy()
                }
            }
            if button2_p()
            {
                if (self.twobuffer < 0)
                    _temp_local_var_9 = (self.onebuffer < 2)
                else
                    _temp_local_var_9 = 0
            }
            else
                _temp_local_var_9 = 0
            if _temp_local_var_9
            {
                self.sidemessage = 0
                self.menu = 10
                self.twobuffer = 2
                with(obj_writer)
                {
                    instance_destroy()
                }
            }
        }
        scr_shopmorearrow()
        if (self.menumax > 4)
        {
            self.i = 0
            while(true)
            {
                if (self.i <= self.menumax)
                {
                    self.buff = 0
                    if (self.menuc[11] == self.i)
                        self.buff = 3
                    draw_rectangle((375 - self.buff), ((295 + (self.i * (130 / self.menumax))) - self.buff), (377 + self.buff), ((297 + (self.i * (130 / self.menumax))) + self.buff), 0)
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
        }
    }
    if (self.menu == 12)
        _temp_local_var_10 = 1
    else
        _temp_local_var_10 = (self.menu == 16)
    if _temp_local_var_10
    {
        draw_set_color(0xFFFFFF)
        scr_84_set_draw_font("mainbig"@1561)
        self.menumax = 11
        if (self.menu == 12)
        {
            self._up_pressed = 0
            self._down_pressed = 0
            if down_h()
            {
                self.hold_up = 0
                if down_p()
                    self._down_pressed = 1
                self.hold_down = (self.hold_down + 1)
                if (self.hold_down >= 8)
                {
                    self._down_pressed = 1
                    self.hold_down = 6
                }
                if (self._down_pressed == 1)
                {
                    if (self.menuc[self.menu] < self.menumax)
                    {
                        self.menuc[self.menu] = (self.menuc[self.menu] + 1)
                        if (self.menuc[self.menu] > (self.pagemax + 4))
                            self.pagemax = (self.pagemax + 1)
                    }
                }
            }
            else
                self.hold_down = 0
            if up_h()
            {
                self.hold_down = 0
                if up_p()
                    self._up_pressed = 1
                self.hold_up = (self.hold_up + 1)
                if (self.hold_up >= 8)
                {
                    self._up_pressed = 1
                    self.hold_up = 6
                }
                if (self._up_pressed == 1)
                {
                    if (self.menuc[self.menu] > 0)
                    {
                        self.menuc[self.menu] = (self.menuc[self.menu] - 1)
                        if (self.menuc[self.menu] < self.pagemax)
                            self.pagemax = (self.pagemax - 1)
                    }
                }
            }
            else
                self.hold_up = 0
        }
        self.j = 0
        self.i = self.pagemax
        while(true)
        {
            if (self.i < (5 + self.pagemax))
            {
                draw_sprite(spr_heart, 0, 30, (270 + ((self.menuc[12] - self.pagemax) * 40)))
                self.g = 0
                draw_set_color(0xFFFFFF)
                self._itempname = self.weaponname[self.i]
                if (self._itempname == " "@24)
                {
                    self._itempname = "--------"@2685
                    draw_set_color(0x404040)
                }
                draw_text(60, (260 + (self.j * 40)), string_hash_to_newline(self._itempname))
                if (self.weaponvalue[self.i] > 1)
                    draw_text(300, (260 + (self.j * 40)), string_hash_to_newline(("$"@2686 + string(ceil((self.weaponvalue[self.i] / 2))))))
                self.j = (self.j + 1)
                self.i = (self.i + 1)
                continue
            }
            break
        }
        draw_set_color(0xFFFFFF)
        if (self.menu == 12)
        {
            if button1_p()
                _temp_local_var_11 = (self.onebuffer < 0)
            else
                _temp_local_var_11 = 0
            if _temp_local_var_11
            {
                if (self.weaponvalue[self.menuc[12]] > 1)
                    self.menu = 16
                else
                    self.sidemessage2 = 4
                self.sellvalue = ceil((self.weaponvalue[self.menuc[12]] / 2))
                self.tempmenu = 12
                self.onebuffer = 2
                with(obj_writer)
                {
                    instance_destroy()
                }
            }
            if button2_p()
            {
                if (self.twobuffer < 0)
                    _temp_local_var_12 = (self.onebuffer < 2)
                else
                    _temp_local_var_12 = 0
            }
            else
                _temp_local_var_12 = 0
            if _temp_local_var_12
            {
                self.sidemessage = 0
                self.menu = 10
                self.twobuffer = 2
                with(obj_writer)
                {
                    instance_destroy()
                }
            }
        }
        scr_shopmorearrow()
        if (self.menumax > 1)
        {
            self.i = 0
            while(true)
            {
                if (self.i <= self.menumax)
                {
                    self.buff = 0
                    if (self.menuc[12] == self.i)
                        self.buff = (self.buff + 3)
                    if (global.weapon[self.i] == 0)
                        self.buff = (self.buff - 1)
                    draw_rectangle((375 - self.buff), ((295 + (self.i * (130 / self.menumax))) - self.buff), (377 + self.buff), ((297 + (self.i * (130 / self.menumax))) + self.buff), 0)
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
        }
    }
    if (self.menu == 13)
        _temp_local_var_13 = 1
    else
        _temp_local_var_13 = (self.menu == 17)
    if _temp_local_var_13
    {
        draw_set_color(0xFFFFFF)
        scr_84_set_draw_font("mainbig"@1561)
        self.menumax = 11
        if (self.menu == 13)
        {
            self._up_pressed = 0
            self._down_pressed = 0
            if down_h()
            {
                self.hold_up = 0
                if down_p()
                    self._down_pressed = 1
                self.hold_down = (self.hold_down + 1)
                if (self.hold_down >= 8)
                {
                    self._down_pressed = 1
                    self.hold_down = 6
                }
                if (self._down_pressed == 1)
                {
                    if (self.menuc[self.menu] < self.menumax)
                    {
                        self.menuc[self.menu] = (self.menuc[self.menu] + 1)
                        if (self.menuc[self.menu] > (self.pagemax + 4))
                            self.pagemax = (self.pagemax + 1)
                    }
                }
            }
            else
                self.hold_down = 0
            if up_h()
            {
                self.hold_down = 0
                if up_p()
                    self._up_pressed = 1
                self.hold_up = (self.hold_up + 1)
                if (self.hold_up >= 8)
                {
                    self._up_pressed = 1
                    self.hold_up = 6
                }
                if (self._up_pressed == 1)
                {
                    if (self.menuc[self.menu] > 0)
                    {
                        self.menuc[self.menu] = (self.menuc[self.menu] - 1)
                        if (self.menuc[self.menu] < self.pagemax)
                            self.pagemax = (self.pagemax - 1)
                    }
                }
            }
            else
                self.hold_up = 0
        }
        self.j = 0
        self.i = self.pagemax
        while(true)
        {
            if (self.i < (5 + self.pagemax))
            {
                draw_sprite(spr_heart, 0, 30, (270 + ((self.menuc[13] - self.pagemax) * 40)))
                self.g = 0
                draw_set_color(0xFFFFFF)
                self._itempname = self.armorname[self.i]
                if (self._itempname == " "@24)
                {
                    self._itempname = "--------"@2685
                    draw_set_color(0x404040)
                }
                draw_text(60, (260 + (self.j * 40)), string_hash_to_newline(self._itempname))
                if (self.armorvalue[self.i] > 1)
                    draw_text(300, (260 + (self.j * 40)), string_hash_to_newline(("$"@2686 + string(ceil((self.armorvalue[self.i] / 2))))))
                self.j = (self.j + 1)
                self.i = (self.i + 1)
                continue
            }
            break
        }
        draw_set_color(0xFFFFFF)
        if (self.menu == 13)
        {
            if button1_p()
                _temp_local_var_14 = (self.onebuffer < 0)
            else
                _temp_local_var_14 = 0
            if _temp_local_var_14
            {
                if (self.armorvalue[self.menuc[13]] > 1)
                    self.menu = 17
                else
                    self.sidemessage2 = 4
                self.sellvalue = ceil((self.armorvalue[self.menuc[13]] / 2))
                self.tempmenu = 13
                self.onebuffer = 2
                with(obj_writer)
                {
                    instance_destroy()
                }
            }
            if button2_p()
            {
                if (self.twobuffer < 0)
                    _temp_local_var_15 = (self.onebuffer < 2)
                else
                    _temp_local_var_15 = 0
            }
            else
                _temp_local_var_15 = 0
            if _temp_local_var_15
            {
                self.sidemessage = 0
                self.menu = 10
                self.twobuffer = 2
                with(obj_writer)
                {
                    instance_destroy()
                }
            }
        }
        scr_shopmorearrow()
        if (self.menumax > 1)
        {
            self.i = 0
            while(true)
            {
                if (self.i <= self.menumax)
                {
                    self.buff = 0
                    if (self.menuc[13] == self.i)
                        self.buff = (self.buff + 3)
                    if (global.armor[self.i] == 0)
                        self.buff = (self.buff - 1)
                    draw_rectangle((375 - self.buff), ((295 + (self.i * (130 / self.menumax))) - self.buff), (377 + self.buff), ((297 + (self.i * (130 / self.menumax))) + self.buff), 0)
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
        }
    }
}
if (self.argument0 == 5)
{
    if (self.menu == 15)
    {
        if button2_p()
            _temp_local_var_16 = (self.twobuffer < 0)
        else
            _temp_local_var_16 = 0
        if _temp_local_var_16
        {
            self.menu = self.tempmenu
            self.sidemessage2 = 2
            self.twobuffer = 2
            self.onebuffer = 2
        }
        if button1_p()
        {
            if (self.onebuffer < 0)
                _temp_local_var_17 = (self.twobuffer < 0)
            else
                _temp_local_var_17 = 0
        }
        else
            _temp_local_var_17 = 0
        if _temp_local_var_17
        {
            if (self.menuc[15] == 0)
            {
                snd_play(snd_locker)
                global.gold = (global.gold + self.sellvalue)
                scr_itemshift(self.menuc[11], 0)
                scr_iteminfo_all()
                scr_itemcheck(0)
                if (global.item[self.menuc[11]] == 0)
                {
                    self.menuc[11] = (self.menuc[11] - 1)
                    if (self.pagemax > 0)
                        self.pagemax = (self.pagemax - 1)
                }
                if (self.itemcount == 12)
                {
                    self.menu = 10
                    self.sidemessage = 1
                }
                else
                {
                    self.menu = 11
                    self.sidemessage2 = 1
                }
            }
            if (self.menuc[15] == 1)
            {
                self.sidemessage2 = 2
                self.menu = 11
            }
        }
    }
    if (self.menu == 16)
    {
        if button2_p()
            _temp_local_var_18 = (self.twobuffer < 0)
        else
            _temp_local_var_18 = 0
        if _temp_local_var_18
        {
            self.menu = self.tempmenu
            self.sidemessage2 = 2
            self.twobuffer = 2
            self.onebuffer = 2
        }
        if button1_p()
        {
            if (self.onebuffer < 0)
                _temp_local_var_19 = (self.twobuffer < 0)
            else
                _temp_local_var_19 = 0
        }
        else
            _temp_local_var_19 = 0
        if _temp_local_var_19
        {
            if (self.menuc[16] == 0)
            {
                snd_play(snd_locker)
                global.gold = (global.gold + self.sellvalue)
                global.weapon[self.menuc[12]] = 0
                scr_weaponinfo_all()
                scr_weaponcheck_inventory(0)
                if (self.itemcount == 12)
                {
                    self.menu = 10
                    self.sidemessage = 1
                }
                else
                {
                    self.menu = 12
                    self.sidemessage2 = 1
                }
            }
            if (self.menuc[16] == 1)
            {
                self.sidemessage2 = 2
                self.menu = 12
            }
        }
    }
    if (self.menu == 17)
    {
        if button2_p()
            _temp_local_var_20 = (self.twobuffer < 0)
        else
            _temp_local_var_20 = 0
        if _temp_local_var_20
        {
            self.menu = self.tempmenu
            self.sidemessage2 = 2
            self.twobuffer = 2
            self.onebuffer = 2
        }
        if button1_p()
        {
            if (self.onebuffer < 0)
                _temp_local_var_21 = (self.twobuffer < 0)
            else
                _temp_local_var_21 = 0
        }
        else
            _temp_local_var_21 = 0
        if _temp_local_var_21
        {
            if (self.menuc[17] == 0)
            {
                snd_play(snd_locker)
                global.gold = (global.gold + self.sellvalue)
                global.armor[self.menuc[13]] = 0
                scr_armorinfo_all()
                scr_armorcheck_inventory(0)
                if (self.itemcount == 12)
                {
                    self.menu = 10
                    self.sidemessage = 1
                }
                else
                {
                    self.menu = 13
                    self.sidemessage2 = 1
                }
            }
            if (self.menuc[17] == 1)
            {
                self.sidemessage2 = 2
                self.menu = 13
            }
        }
    }
}
