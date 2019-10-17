draw_sprite_ext(spr_shopbg1, 0, 0, 0, 2, 2, 0, 0x00FFFFFF, 1)
draw_sprite_ext(spr_shopbg1, 2, 0, 0, 2, 2, 0, 0x00FFFFFF, abs(sin((self.siner / 30))))
self.siner += 1
if ((self.menu == 1) || (self.menu == 2))
{
    if (self.shopcharx > -20)
        self.shopcharx -= 4
    if (self.shopcharx > -40)
        self.shopcharx -= 4
    if (self.shopcharx > -80)
        self.shopcharx -= 4
    if (self.shopcharx <= -80)
        self.shopcharx = -80
}
else
{
    if (self.shopcharx < -50)
        self.shopcharx += 4
    if (self.shopcharx < -30)
        self.shopcharx += 4
    if (self.shopcharx < 0)
        self.shopcharx += 4
    if (self.shopcharx > 0)
        self.shopcharx = 0
}
self.talkanim = 0
if instance_exists(obj_writer)
{
    if (obj_writer.pos < obj_writer.length)
    {
        if (self.talkbuffer < 0)
            self.talkfacer = 0
        self.talkbuffer = 16
        self.talkanim = 1
        self.idletimer = 0
        self.idlefacer = 0
        self.talkfacer += 0.2
    }
}
self.shopkeepsprite = spr_seam_talk
if (global.fe == 1)
    self.shopkeepsprite = spr_seam_oh
if (global.fe == 2)
    self.shopkeepsprite = spr_seam_laugh
if (global.fe == 3)
    self.shopkeepsprite = spr_seam_impatient
self.qualify = 0
if ((global.fe != 0) && (self.talkbuffer < 0))
    self.talkbuffer = 0
if (self.talkbuffer >= 0)
{
    if (self.talkbuffer < 16)
    {
        if (((self.talkfacer + 1) % 3) != 0)
            self.talkfacer += 0.2
    }
    draw_sprite_ext(self.shopkeepsprite, self.talkfacer, (self.shopcharx + 160), 34, 2, 2, 0, 0x00FFFFFF, 1)
    self.qualify = 1
}
if (self.qualify == 0)
{
    self.idletimer += 1
    if (self.idletimer >= 60)
        self.idlefacer += 0.2
    if (self.idlefacer >= 5)
    {
        self.idletimer = 0
        self.idlefacer = 0
    }
    draw_sprite_ext(spr_seam_idle, self.idlefacer, (self.shopcharx + 160), 34, 2, 2, 0, 0x00FFFFFF, 1)
}
self.talkbuffer -= 1
draw_set_color(0x00000000)
draw_rectangle(0, 240, 640, 480, 0)
scr_shopmenu(0)
if ((self.menu <= 3) || (self.menu >= 10))
{
    scr_darkbox_black(0, 240, 415, 480)
    scr_darkbox_black(400, 240, 640, 480)
}
if (self.menu == 4)
    scr_darkbox_black(0, 240, 640, 480)
if (self.menu == 0)
{
    self.sell = 0
    self.selling = 0
    self.sidemessage = 0
    self.menuc[1] = 0
    self.menuc[2] = 0
    self.menuc[3] = 0
    self.menuc[4] = 0
    if (instance_exists(obj_writer) == 0)
    {
        global.typer = 6
        global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_98_0")
        if (self.mainmessage == 0)
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_99_0")
        instance_create(30, 270, obj_writer)
    }
    self.menumax = 3
    draw_set_color(0x00FFFFFF)
    scr_84_set_draw_font("mainbig")
    draw_text(480, 260, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_106_0")))
    draw_text(480, 300, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_107_0")))
    draw_text(480, 340, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_108_0")))
    draw_text(480, 380, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_109_0")))
    draw_sprite(spr_heart, 0, 450, ((135 + (self.menuc[0] * 20)) * 2))
    if button1_p()
    {
        self.onebuffer = 2
        self.mainmessage = 1
        with (obj_writer)
            instance_destroy()
        if (self.menuc[0] == 0)
            self.menu = 1
        if (self.menuc[0] == 1)
        {
            self.menu = 10
            self.sidemessage = 0
        }
        if (self.menuc[0] == 2)
            self.menu = 3
        if (self.menuc[0] == 3)
        {
            self.sell = 2
            self.menu = 4
        }
    }
}
if ((self.menu == 1) || (self.menu == 2))
{
    draw_set_color(0x00FFFFFF)
    scr_84_set_draw_font("mainbig")
    for (self.i = 0; self.i < self.itemtotal; self.i += 1)
    {
        draw_text(60, (260 + (self.i * 40)), string_hash_to_newline(self.shopitemname[self.i]))
        draw_text(300, (260 + (self.i * 40)), string_hash_to_newline(("$" + string(self.buyvalue[self.i]))))
    }
    draw_text(60, (260 + (self.itemtotal * 40)), string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_139_0")))
    if (self.menu == 1)
    {
        self.menumax = 4
        if (instance_exists(obj_writer) == 0)
        {
            if (self.sidemessage == 0)
                global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_148_0")
            if (self.sidemessage == 1)
                global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_149_0")
            if (self.sidemessage == 2)
                global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_150_0")
            if (self.sidemessage == 3)
                global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_151_0")
            if (self.sidemessage == 4)
                global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_152_0")
            if (self.murder == 1)
                global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_153_0")
            instance_create(450, 260, obj_writer)
        }
        draw_sprite(spr_heart, 0, 30, (270 + (self.menuc[1] * 40)))
        if (button1_p() && (self.onebuffer < 0))
        {
            self.menu = 2
            self.onebuffer = 2
            with (obj_writer)
                instance_destroy()
            if (self.menuc[1] == self.menumax)
                self.menu = 0
        }
        if (button2_p() && ((self.twobuffer < 0) && (self.onebuffer < 2)))
        {
            self.menu = 0
            self.twobuffer = 2
            self.minimenuy = 220
            with (obj_writer)
                instance_destroy()
        }
        self.menuc[2] = 0
    }
    if (self.menu == 2)
    {
        self.menumax = 1
        draw_set_color(0x00FFFFFF)
        scr_84_set_draw_font("mainbig")
        if (global.lang == "ja")
        {
            draw_text(460, 290, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_167_0")))
            draw_text(460, 260, string_hash_to_newline((string(self.buyvalue[self.menuc[1]]) + scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_168_0"))))
        }
        else
        {
            draw_text(460, 260, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_167_0")))
            draw_text(460, 290, string_hash_to_newline((string(self.buyvalue[self.menuc[1]]) + scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_168_0"))))
        }
        draw_text(480, 340, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_169_0")))
        draw_text(480, 370, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_170_0")))
        draw_sprite(spr_heart, 0, 450, (350 + (self.menuc[2] * 30)))
        if (button2_p() && (self.twobuffer < 0))
        {
            self.menu = 1
            self.sidemessage = 2
            self.twobuffer = 2
            self.onebuffer = 2
        }
        if (button1_p() && ((self.onebuffer < 0) && (self.twobuffer < 0)))
        {
            if (self.menuc[2] == 0)
            {
                self.afford = 0
                if (global.gold >= self.buyvalue[self.menuc[1]])
                    self.afford = 1
                if (self.afford == 1)
                {
                    if (self.itemtype[self.menuc[1]] == "item")
                        scr_itemget(self.item[self.menuc[1]])
                    if (self.itemtype[self.menuc[1]] == "weapon")
                        scr_weaponget(self.item[self.menuc[1]])
                    if (self.itemtype[self.menuc[1]] == "armor")
                        scr_armorget(self.item[self.menuc[1]])
                    if (self.noroom == 0)
                    {
                        global.gold -= self.buyvalue[self.menuc[1]]
                        self.sidemessage = 1
                        snd_play(snd_locker)
                    }
                    if (self.noroom == 1)
                        self.sidemessage = 4
                }
                else
                    self.sidemessage = 3
            }
            if (self.menuc[2] == 1)
                self.sidemessage = 2
            self.menu = 1
        }
    }
    if (self.menuc[1] != 4)
    {
        if (self.minimenuy <= 20)
            self.minimenuy = 20
        if (self.minimenuy > 20)
            self.minimenuy -= 5
        if (self.minimenuy > 50)
            self.minimenuy -= 5
        if (self.minimenuy > 100)
            self.minimenuy -= 8
        if (self.minimenuy > 150)
            self.minimenuy -= 10
    }
    else if (self.minimenuy < 200)
        self.minimenuy += 40
    if (self.minimenuy >= 200)
        self.minimenuy = 200
}
if (self.menu == 3)
{
    self.menumax = 4
    draw_set_color(0x00FFFFFF)
    scr_84_set_draw_font("mainbig")
    draw_text(80, 260, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_217_0")))
    draw_text(80, 300, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_218_0")))
    if (global.flag[241] < 6)
        draw_text(80, 340, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_220_0")))
    else
    {
        draw_set_color(0x0000FFFF)
        draw_text(80, 340, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_224_0")))
    }
    if (global.flag[241] == 0)
        draw_text(80, 380, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_227_0")))
    else
    {
        self._legendstring = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_230_0")
        draw_set_color(0x0000FFFF)
        if (global.flag[115] >= 1)
            draw_set_color(0x00FFFFFF)
        if (global.flag[241] >= 6)
        {
            draw_set_color(0x0000FFFF)
            self._legendstring = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_233_0")
        }
        draw_text(80, 380, string_hash_to_newline(self._legendstring))
    }
    draw_set_color(0x00FFFFFF)
    draw_text(80, 420, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_240_0")))
    if (instance_exists(obj_writer) == 0)
    {
        global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_244_0")
        instance_create(440, 260, obj_writer)
    }
    draw_sprite(spr_heart, 0, 50, (270 + (self.menuc[3] * 40)))
    if (button1_p() && (self.onebuffer < 0))
    {
        self.onebuffer = 2
        with (obj_writer)
            instance_destroy()
        if (self.menuc[3] < self.menumax)
        {
            self.sell = (self.menuc[3] + 3)
            self.menu = 4
        }
        else
            self.menu = 0
    }
    else if (button2_p() && ((self.twobuffer < 0) && (self.onebuffer < 0)))
    {
        self.twobuffer = 2
        self.menu = 0
        with (obj_writer)
            instance_destroy()
    }
}
if (self.menu == 10)
{
    self.menuc[11] = 0
    self.menuc[12] = 0
    self.menuc[13] = 0
    self.menumax = 3
    draw_set_color(0x00FFFFFF)
    scr_84_set_draw_font("mainbig")
    draw_text(80, 260, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_278_0")))
    draw_text(80, 300, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_279_0")))
    draw_text(80, 340, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_280_0")))
    draw_text(80, 380, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_281_0")))
    if (instance_exists(obj_writer) == 0)
    {
        if (self.sidemessage == 0)
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_285_0")
        if (self.sidemessage == 1)
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_286_0")
        if (self.sidemessage == 2)
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_287_0")
        instance_create(460, 260, obj_writer)
    }
    draw_sprite(spr_heart, 0, 50, (270 + (self.menuc[10] * 40)))
    if (button1_p() && (self.onebuffer < 0))
    {
        self.pagemax = 0
        self.sidemessage2 = 0
        self.onebuffer = 2
        with (obj_writer)
            instance_destroy()
        self.can = 1
        self.idealmenu = (self.menuc[10] + 11)
        if (self.idealmenu == 11)
        {
            scr_itemcheck(0)
            if (self.itemcount == 12)
            {
                self.sidemessage = 2
                self.can = 0
            }
            scr_iteminfo_all()
        }
        if (self.idealmenu == 12)
        {
            scr_weaponcheck_inventory(0)
            if (self.itemcount == 12)
            {
                self.sidemessage = 2
                self.can = 0
            }
            scr_weaponinfo_all()
        }
        if (self.idealmenu == 13)
        {
            scr_armorcheck_inventory(0)
            if (self.itemcount == 12)
            {
                self.sidemessage = 2
                self.can = 0
            }
            scr_armorinfo_all()
        }
        if (self.menuc[10] < self.menumax)
        {
            if (self.can == 1)
                self.menu = (self.menuc[10] + 11)
            self.sidemessage1 = 0
        }
        else
            self.menu = 0
        self.submenu = 0
        self.submenuc[1] = 0
    }
    if (button2_p() && ((self.twobuffer < 0) && (self.onebuffer < 0)))
    {
        self.twobuffer = 2
        self.menu = 0
        with (obj_writer)
            instance_destroy()
    }
}
if ((self.menu == 11) || ((self.menu == 12) || (self.menu == 13)))
{
    if (instance_exists(obj_writer) == 0)
    {
        if ((self.sidemessage2 == 0) && (self.menu == 11))
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_347_0")
        if ((self.sidemessage2 == 0) && (self.menu == 12))
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_348_0")
        if ((self.sidemessage2 == 0) && (self.menu == 13))
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_349_0")
        if (self.sidemessage2 == 1)
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_350_0")
        if (self.sidemessage2 == 2)
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_351_0")
        if (self.sidemessage2 == 3)
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_352_0")
        if (self.sidemessage2 == 4)
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_353_0")
        instance_create(450, 260, obj_writer)
    }
}
scr_shopmenu(4)
if ((self.menu == 15) || ((self.menu == 16) || (self.menu == 17)))
{
    self.menumax = 1
    draw_set_color(0x00FFFFFF)
    scr_84_set_draw_font("mainbig")
    if (global.lang == "ja")
    {
        draw_text(460, 290, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_365_0")))
        draw_text(460, 260, string_hash_to_newline((string(self.sellvalue) + scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_366_0"))))
    }
    else
    {
        draw_text(460, 260, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_365_0")))
        draw_text(460, 290, string_hash_to_newline((string(self.sellvalue) + scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_366_0"))))
    }
    draw_text(480, 340, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_367_0")))
    draw_text(480, 370, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_368_0")))
    draw_sprite(spr_heart, 0, 450, (350 + (self.menuc[self.menu] * 30)))
}
scr_shopmenu(5)
if (self.menu == 4)
{
    if (self.sell == 0)
        self.menu = 0
    if ((instance_exists(obj_writer) == 0) && (self.selling == 0))
    {
        if (self.sell == 1)
        {
        }
        if (self.sell == 2)
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_395_0")
        if (self.sell == 3)
        {
            global.msg[0] = (scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_399_0") + "/")
            global.msg[1] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_400_0")
            global.msg[2] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_401_0")
            global.msg[3] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_402_0")
            global.msg[4] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_403_0")
        }
        if (self.sell == 4)
        {
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_411_0")
            global.msg[1] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_412_0")
            global.msg[2] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_413_0")
            global.msg[3] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_414_0")
            global.msg[4] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_415_0")
        }
        if (self.sell == 5)
        {
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_421_0")
            global.msg[1] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_422_0")
            global.msg[2] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_423_0")
            global.msg[3] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_424_0")
            global.msg[4] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_425_0")
            if (global.flag[241] >= 6)
            {
                global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_429_0")
                global.msg[1] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_430_0")
                global.msg[2] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_431_0")
                global.msg[3] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_432_0")
                global.msg[4] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_433_0")
                global.msg[5] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_434_0")
                global.msg[6] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_435_0")
                global.msg[7] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_436_0")
                global.msg[8] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_437_0")
                global.msg[9] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_438_0")
                global.msg[10] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_439_0")
                global.msg[11] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_440_0")
                global.msg[12] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_441_0")
                global.msg[13] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_442_0")
            }
        }
        if (self.sell == 6)
        {
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_448_0")
            global.msg[1] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_449_0")
            global.msg[2] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_450_0")
            if ((global.flag[241] >= 1) && (global.flag[115] == 1))
            {
                global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_459_0")
                global.msg[1] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_460_0")
                global.msg[2] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_461_0")
            }
            if ((global.flag[241] >= 1) && (global.flag[115] == 0))
            {
                global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_472_0")
                global.msg[1] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_473_0")
                global.msg[2] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_474_0")
                global.msg[3] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_475_0")
                global.msg[4] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_476_0")
                global.msg[5] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_477_0")
                global.msg[6] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_478_0")
                global.msg[7] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_479_0")
                global.msg[8] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_480_0")
                global.writersnd[0] = 97
                global.msg[9] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_482_0")
                global.msg[10] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_483_0")
                global.msg[11] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_484_0")
                global.msg[12] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_485_0")
                global.msg[13] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_486_0")
                scr_keyitemget(4)
                global.flag[115] = 1
            }
            if ((global.flag[115] == 1) && (global.flag[241] >= 5))
            {
                global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_493_0")
                global.msg[1] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_494_0")
                global.msg[2] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_495_0")
            }
            if ((global.flag[115] == 1) && (global.flag[241] >= 6))
            {
                global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_500_0")
                global.msg[1] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_501_0")
                global.msg[2] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_502_0")
                global.msg[3] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_503_0")
                global.msg[4] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_504_0")
                global.msg[5] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_505_0")
                global.msg[6] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_506_0")
                global.msg[7] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_507_0")
            }
        }
        instance_create(30, 270, obj_writer)
        self.selling = 1
    }
    if ((self.selling == 1) && (instance_exists(obj_writer) == 0))
    {
        if (self.sell == 2)
        {
            self.selling = 2
            event_user(1)
        }
        else
        {
            if ((self.sell == 1) || (self.sell == 7))
                self.menu = 0
            else
                self.menu = 3
            self.sell = 0
            self.selling = 0
        }
    }
}
if down_p()
{
    if ((self.menu != 11) && ((self.menu != 12) && (self.menu != 13)))
    {
        self.menuc[self.menu] += 1
        if (self.menuc[self.menu] > self.menumax)
            self.menuc[self.menu] = 0
    }
}
if up_p()
{
    if ((self.menu != 11) && ((self.menu != 12) && (self.menu != 13)))
    {
        self.menuc[self.menu] -= 1
        if (self.menuc[self.menu] < 0)
            self.menuc[self.menu] = self.menumax
    }
}
if ((self.menu < 4) || (self.menu >= 10))
{
    draw_text(440, 420, string_hash_to_newline((string(global.gold) + "$")))
    if ((self.menu == 1) || (self.menu == 2))
    {
        if (self.menuc[1] < 4)
        {
            if (self.itemtype[self.menuc[1]] == "item")
                scr_itemcheck(0)
            if (self.itemtype[self.menuc[1]] == "armor")
                scr_armorcheck_inventory(0)
            if (self.itemtype[self.menuc[1]] == "weapon")
                scr_weaponcheck_inventory(0)
            scr_84_set_draw_font("dotumche")
            if (self.itemcount < 10)
                self.roomstring = ("0" + string(self.itemcount))
            else
                self.roomstring = string(self.itemcount)
            if (self.itemcount > 0)
                draw_text(520, 430, string_hash_to_newline((scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_568_0") + self.roomstring)))
            if (self.itemcount == 0)
                draw_text(520, 430, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_571_0")))
        }
    }
}
self.onebuffer -= 1
self.twobuffer -= 1
