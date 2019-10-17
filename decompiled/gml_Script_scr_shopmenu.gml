if (self.argument0 == 0)
{
    if ((self.menu == 1) || (self.menu == 2))
    {
        scr_darkbox_black(400, self.minimenuy, 640, 255)
        draw_set_color(0x00FFFFFF)
        scr_84_set_draw_font("mainbig")
        if (self.menuc[1] == 0)
            draw_text(440, (self.minimenuy + 28), string_hash_to_newline(self.shopdesc[0]))
        if (self.menuc[1] == 1)
            draw_text(440, (self.minimenuy + 28), string_hash_to_newline(self.shopdesc[1]))
        if (self.menuc[1] == 2)
            draw_text(440, (self.minimenuy + 28), string_hash_to_newline(self.shopdesc[2]))
        if (self.menuc[1] == 3)
            draw_text(440, (self.minimenuy + 28), string_hash_to_newline(self.shopdesc[3]))
        scr_84_set_draw_font("dotumche")
        if ((self.itemtype[self.menuc[1]] == "weapon") || (self.itemtype[self.menuc[1]] == "armor"))
        {
            for (self.i = 0; self.i < 3; self.i += 1)
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
                    if (self.canequip[self.menuc[1], self.which] == 0)
                        self.can_index = 8
                    draw_sprite(self.facetype, self.can_index, (426 + self.locx), ((self.minimenuy + 140) + self.locy))
                    if ((self.itemtype[self.menuc[1]] == "weapon") && (self.can_index != 8))
                    {
                        draw_set_color(0x00FFFFFF)
                        self.sum[0] = (self.itematk[self.menuc[1]] - global.itemat[self.which, 0])
                        self.sum[1] = (self.itemmagic[self.menuc[1]] - global.itemmag[self.which, 0])
                        for (self.j = 0; self.j < 2; self.j += 1)
                        {
                            self.dcolor = 0x00FFFFFF
                            self.addt = ""
                            draw_set_color(0x00FFFFFF)
                            if (self.sum[self.j] > 0)
                            {
                                draw_set_color(0x0000FFFF)
                                self.addt = "+"
                            }
                            if (self.sum[self.j] < 0)
                                draw_set_color(0x00FFFF00)
                            draw_sprite_ext(spr_shopicon, self.j, (470 + self.locx), (((self.minimenuy + self.locy) + 135) + (20 * self.j)), 1, 1, 0, self.dcolor, 1)
                            draw_text((490 + self.locx), (((self.minimenuy + self.locy) + 135) + (20 * self.j)), string_hash_to_newline((self.addt + string(self.sum[self.j]))))
                        }
                    }
                    if ((self.itemtype[self.menuc[1]] == "armor") && (self.can_index != 8))
                    {
                        self.sum[0] = (self.itemdef[self.menuc[1]] - global.itemdf[self.which, 1])
                        self.sum[1] = (self.itemdef[self.menuc[1]] - global.itemdf[self.which, 2])
                        for (self.j = 0; self.j < 2; self.j += 1)
                        {
                            self.dcolor = 0x00FFFFFF
                            self.addt = ""
                            draw_set_color(0x00FFFFFF)
                            if (self.sum[self.j] > 0)
                            {
                                draw_set_color(0x0000FFFF)
                                self.addt = "+"
                            }
                            if (self.sum[self.j] < 0)
                                draw_set_color(0x00FFFF00)
                            draw_sprite_ext(spr_shopicon, (2 + self.j), (470 + self.locx), (((self.minimenuy + self.locy) + 135) + (20 * self.j)), 1, 1, 0, self.dcolor, 1)
                            draw_text((490 + self.locx), (((self.minimenuy + 135) + (20 * self.j)) + self.locy), string_hash_to_newline((self.addt + string(self.sum[self.j]))))
                        }
                    }
                }
            }
        }
    }
}
if (self.argument0 == 4)
{
    if ((self.menu == 11) || (self.menu == 15))
    {
        draw_set_color(0x00FFFFFF)
        scr_84_set_draw_font("mainbig")
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
                self.hold_down += 1
                if (self.hold_down >= 8)
                {
                    self._down_pressed = 1
                    self.hold_down = 6
                }
                if (self._down_pressed == 1)
                {
                    if (self.menuc[self.menu] < self.menumax)
                    {
                        self.menuc[self.menu] += 1
                        if (self.menuc[self.menu] > (self.pagemax + 4))
                            self.pagemax += 1
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
                self.hold_up += 1
                if (self.hold_up >= 8)
                {
                    self._up_pressed = 1
                    self.hold_up = 6
                }
                if (self._up_pressed == 1)
                {
                    if (self.menuc[self.menu] > 0)
                    {
                        self.menuc[self.menu] -= 1
                        if (self.menuc[self.menu] < self.pagemax)
                            self.pagemax -= 1
                    }
                }
            }
            else
                self.hold_up = 0
        }
        self.j = 0
        for (self.i = self.pagemax; self.i < (5 + self.pagemax); self.i += 1)
        {
            draw_sprite(spr_heart, 0, 30, (270 + ((self.menuc[11] - self.pagemax) * 40)))
            self.g = 0
            draw_set_color(0x00FFFFFF)
            self._itempname = global.itemnameb[self.i]
            if (self._itempname == " ")
            {
                self._itempname = "--------"
                draw_set_color(0x00404040)
            }
            draw_text(60, (260 + (self.j * 40)), string_hash_to_newline(self._itempname))
            if (global.itemvalue[self.i] > 1)
                draw_text(300, (260 + (self.j * 40)), string_hash_to_newline(("$" + string(ceil((global.itemvalue[self.i] / 2))))))
            self.j += 1
        }
        draw_set_color(0x00FFFFFF)
        if (self.menu == 11)
        {
            if (button1_p() && (self.onebuffer < 0))
            {
                if (global.itemvalue[self.menuc[11]] > 1)
                    self.menu = 15
                else
                    self.sidemessage2 = 3
                self.sellvalue = ceil((global.itemvalue[self.menuc[11]] / 2))
                self.tempmenu = 11
                self.onebuffer = 2
                with (obj_writer)
                    instance_destroy()
            }
            if (button2_p() && ((self.twobuffer < 0) && (self.onebuffer < 2)))
            {
                self.sidemessage = 0
                self.menu = 10
                self.twobuffer = 2
                with (obj_writer)
                    instance_destroy()
            }
        }
        scr_shopmorearrow()
        if (self.menumax > 4)
        {
            for (self.i = 0; self.i <= self.menumax; self.i += 1)
            {
                self.buff = 0
                if (self.menuc[11] == self.i)
                    self.buff = 3
                draw_rectangle((375 - self.buff), ((295 + (self.i * (130 / self.menumax))) - self.buff), (377 + self.buff), ((297 + (self.i * (130 / self.menumax))) + self.buff), 0)
            }
        }
    }
    if ((self.menu == 12) || (self.menu == 16))
    {
        draw_set_color(0x00FFFFFF)
        scr_84_set_draw_font("mainbig")
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
                self.hold_down += 1
                if (self.hold_down >= 8)
                {
                    self._down_pressed = 1
                    self.hold_down = 6
                }
                if (self._down_pressed == 1)
                {
                    if (self.menuc[self.menu] < self.menumax)
                    {
                        self.menuc[self.menu] += 1
                        if (self.menuc[self.menu] > (self.pagemax + 4))
                            self.pagemax += 1
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
                self.hold_up += 1
                if (self.hold_up >= 8)
                {
                    self._up_pressed = 1
                    self.hold_up = 6
                }
                if (self._up_pressed == 1)
                {
                    if (self.menuc[self.menu] > 0)
                    {
                        self.menuc[self.menu] -= 1
                        if (self.menuc[self.menu] < self.pagemax)
                            self.pagemax -= 1
                    }
                }
            }
            else
                self.hold_up = 0
        }
        self.j = 0
        for (self.i = self.pagemax; self.i < (5 + self.pagemax); self.i += 1)
        {
            draw_sprite(spr_heart, 0, 30, (270 + ((self.menuc[12] - self.pagemax) * 40)))
            self.g = 0
            draw_set_color(0x00FFFFFF)
            self._itempname = self.weaponname[self.i]
            if (self._itempname == " ")
            {
                self._itempname = "--------"
                draw_set_color(0x00404040)
            }
            draw_text(60, (260 + (self.j * 40)), string_hash_to_newline(self._itempname))
            if (self.weaponvalue[self.i] > 1)
                draw_text(300, (260 + (self.j * 40)), string_hash_to_newline(("$" + string(ceil((self.weaponvalue[self.i] / 2))))))
            self.j += 1
        }
        draw_set_color(0x00FFFFFF)
        if (self.menu == 12)
        {
            if (button1_p() && (self.onebuffer < 0))
            {
                if (self.weaponvalue[self.menuc[12]] > 1)
                    self.menu = 16
                else
                    self.sidemessage2 = 4
                self.sellvalue = ceil((self.weaponvalue[self.menuc[12]] / 2))
                self.tempmenu = 12
                self.onebuffer = 2
                with (obj_writer)
                    instance_destroy()
            }
            if (button2_p() && ((self.twobuffer < 0) && (self.onebuffer < 2)))
            {
                self.sidemessage = 0
                self.menu = 10
                self.twobuffer = 2
                with (obj_writer)
                    instance_destroy()
            }
        }
        scr_shopmorearrow()
        if (self.menumax > 1)
        {
            for (self.i = 0; self.i <= self.menumax; self.i += 1)
            {
                self.buff = 0
                if (self.menuc[12] == self.i)
                    self.buff += 3
                if (global.weapon[self.i] == 0)
                    self.buff -= 1
                draw_rectangle((375 - self.buff), ((295 + (self.i * (130 / self.menumax))) - self.buff), (377 + self.buff), ((297 + (self.i * (130 / self.menumax))) + self.buff), 0)
            }
        }
    }
    if ((self.menu == 13) || (self.menu == 17))
    {
        draw_set_color(0x00FFFFFF)
        scr_84_set_draw_font("mainbig")
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
                self.hold_down += 1
                if (self.hold_down >= 8)
                {
                    self._down_pressed = 1
                    self.hold_down = 6
                }
                if (self._down_pressed == 1)
                {
                    if (self.menuc[self.menu] < self.menumax)
                    {
                        self.menuc[self.menu] += 1
                        if (self.menuc[self.menu] > (self.pagemax + 4))
                            self.pagemax += 1
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
                self.hold_up += 1
                if (self.hold_up >= 8)
                {
                    self._up_pressed = 1
                    self.hold_up = 6
                }
                if (self._up_pressed == 1)
                {
                    if (self.menuc[self.menu] > 0)
                    {
                        self.menuc[self.menu] -= 1
                        if (self.menuc[self.menu] < self.pagemax)
                            self.pagemax -= 1
                    }
                }
            }
            else
                self.hold_up = 0
        }
        self.j = 0
        for (self.i = self.pagemax; self.i < (5 + self.pagemax); self.i += 1)
        {
            draw_sprite(spr_heart, 0, 30, (270 + ((self.menuc[13] - self.pagemax) * 40)))
            self.g = 0
            draw_set_color(0x00FFFFFF)
            self._itempname = self.armorname[self.i]
            if (self._itempname == " ")
            {
                self._itempname = "--------"
                draw_set_color(0x00404040)
            }
            draw_text(60, (260 + (self.j * 40)), string_hash_to_newline(self._itempname))
            if (self.armorvalue[self.i] > 1)
                draw_text(300, (260 + (self.j * 40)), string_hash_to_newline(("$" + string(ceil((self.armorvalue[self.i] / 2))))))
            self.j += 1
        }
        draw_set_color(0x00FFFFFF)
        if (self.menu == 13)
        {
            if (button1_p() && (self.onebuffer < 0))
            {
                if (self.armorvalue[self.menuc[13]] > 1)
                    self.menu = 17
                else
                    self.sidemessage2 = 4
                self.sellvalue = ceil((self.armorvalue[self.menuc[13]] / 2))
                self.tempmenu = 13
                self.onebuffer = 2
                with (obj_writer)
                    instance_destroy()
            }
            if (button2_p() && ((self.twobuffer < 0) && (self.onebuffer < 2)))
            {
                self.sidemessage = 0
                self.menu = 10
                self.twobuffer = 2
                with (obj_writer)
                    instance_destroy()
            }
        }
        scr_shopmorearrow()
        if (self.menumax > 1)
        {
            for (self.i = 0; self.i <= self.menumax; self.i += 1)
            {
                self.buff = 0
                if (self.menuc[13] == self.i)
                    self.buff += 3
                if (global.armor[self.i] == 0)
                    self.buff -= 1
                draw_rectangle((375 - self.buff), ((295 + (self.i * (130 / self.menumax))) - self.buff), (377 + self.buff), ((297 + (self.i * (130 / self.menumax))) + self.buff), 0)
            }
        }
    }
}
if (self.argument0 == 5)
{
    if (self.menu == 15)
    {
        if (button2_p() && (self.twobuffer < 0))
        {
            self.menu = self.tempmenu
            self.sidemessage2 = 2
            self.twobuffer = 2
            self.onebuffer = 2
        }
        if (button1_p() && ((self.onebuffer < 0) && (self.twobuffer < 0)))
        {
            if (self.menuc[15] == 0)
            {
                snd_play(snd_locker)
                global.gold += self.sellvalue
                scr_itemshift(self.menuc[11], 0)
                scr_iteminfo_all()
                scr_itemcheck(0)
                if (global.item[self.menuc[11]] == 0)
                {
                    self.menuc[11] -= 1
                    if (self.pagemax > 0)
                        self.pagemax -= 1
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
        if (button2_p() && (self.twobuffer < 0))
        {
            self.menu = self.tempmenu
            self.sidemessage2 = 2
            self.twobuffer = 2
            self.onebuffer = 2
        }
        if (button1_p() && ((self.onebuffer < 0) && (self.twobuffer < 0)))
        {
            if (self.menuc[16] == 0)
            {
                snd_play(snd_locker)
                global.gold += self.sellvalue
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
        if (button2_p() && (self.twobuffer < 0))
        {
            self.menu = self.tempmenu
            self.sidemessage2 = 2
            self.twobuffer = 2
            self.onebuffer = 2
        }
        if (button1_p() && ((self.onebuffer < 0) && (self.twobuffer < 0)))
        {
            if (self.menuc[17] == 0)
            {
                snd_play(snd_locker)
                global.gold += self.sellvalue
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
