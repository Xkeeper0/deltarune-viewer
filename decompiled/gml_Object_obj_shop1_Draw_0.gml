draw_sprite_ext(spr_shopbg1, 0, 0, 0, 2, 2, 0, 0xFFFFFF, 1)
draw_sprite_ext(spr_shopbg1, 2, 0, 0, 2, 2, 0, 0xFFFFFF, abs(sin((self.siner / 30))))
self.siner = (self.siner + 1)
if (self.menu == 1)
    _temp_local_var_1 = 1
else
    _temp_local_var_1 = (self.menu == 2)
if _temp_local_var_1
{
    if (self.shopcharx > -20)
        self.shopcharx = (self.shopcharx - 4)
    if (self.shopcharx > -40)
        self.shopcharx = (self.shopcharx - 4)
    if (self.shopcharx > -80)
        self.shopcharx = (self.shopcharx - 4)
    if (self.shopcharx <= -80)
        self.shopcharx = -80
}
else
{
    if (self.shopcharx < -50)
        self.shopcharx = (self.shopcharx + 4)
    if (self.shopcharx < -30)
        self.shopcharx = (self.shopcharx + 4)
    if (self.shopcharx < 0)
        self.shopcharx = (self.shopcharx + 4)
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
        self.talkfacer = (self.talkfacer + 0.2)
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
if (global.fe != 0)
    _temp_local_var_2 = (self.talkbuffer < 0)
else
    _temp_local_var_2 = 0
if _temp_local_var_2
    self.talkbuffer = 0
if (self.talkbuffer >= 0)
{
    if (self.talkbuffer < 16)
    {
        if (((self.talkfacer + 1) % 3) != 0)
            self.talkfacer = (self.talkfacer + 0.2)
    }
    draw_sprite_ext(self.shopkeepsprite, self.talkfacer, (self.shopcharx + 160), 34, 2, 2, 0, 0xFFFFFF, 1)
    self.qualify = 1
}
if (self.qualify == 0)
{
    self.idletimer = (self.idletimer + 1)
    if (self.idletimer >= 60)
        self.idlefacer = (self.idlefacer + 0.2)
    if (self.idlefacer >= 5)
    {
        self.idletimer = 0
        self.idlefacer = 0
    }
    draw_sprite_ext(spr_seam_idle, self.idlefacer, (self.shopcharx + 160), 34, 2, 2, 0, 0xFFFFFF, 1)
}
self.talkbuffer = (self.talkbuffer - 1)
draw_set_color(0x000000)
draw_rectangle(0, 240, 640, 480, 0)
scr_shopmenu(0)
if (self.menu <= 3)
    _temp_local_var_3 = 1
else
    _temp_local_var_3 = (self.menu >= 10)
if _temp_local_var_3
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
        global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_98_0"@9286)
        if (self.mainmessage == 0)
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_99_0"@9287)
        instance_create(30, 270, obj_writer)
    }
    self.menumax = 3
    draw_set_color(0xFFFFFF)
    scr_84_set_draw_font("mainbig"@1561)
    draw_text(480, 260, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_106_0"@9288)))
    draw_text(480, 300, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_107_0"@9289)))
    draw_text(480, 340, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_108_0"@9290)))
    draw_text(480, 380, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_109_0"@9291)))
    draw_sprite(spr_heart, 0, 450, ((135 + (self.menuc[0] * 20)) * 2))
    if button1_p()
    {
        self.onebuffer = 2
        self.mainmessage = 1
        with(obj_writer)
        {
            instance_destroy()
        }
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
if (self.menu == 1)
    _temp_local_var_4 = 1
else
    _temp_local_var_4 = (self.menu == 2)
if _temp_local_var_4
{
    draw_set_color(0xFFFFFF)
    scr_84_set_draw_font("mainbig"@1561)
    self.i = 0
    while(true)
    {
        if (self.i < self.itemtotal)
        {
            draw_text(60, (260 + (self.i * 40)), string_hash_to_newline(self.shopitemname[self.i]))
            draw_text(300, (260 + (self.i * 40)), string_hash_to_newline(("$"@2686 + string(self.buyvalue[self.i]))))
            self.i = (self.i + 1)
            continue
        }
        break
    }
    draw_text(60, (260 + (self.itemtotal * 40)), string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_139_0"@9292)))
    if (self.menu == 1)
    {
        self.menumax = 4
        if (instance_exists(obj_writer) == 0)
        {
            if (self.sidemessage == 0)
                global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_148_0"@9293)
            if (self.sidemessage == 1)
                global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_149_0"@9294)
            if (self.sidemessage == 2)
                global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_150_0"@9295)
            if (self.sidemessage == 3)
                global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_151_0"@9296)
            if (self.sidemessage == 4)
                global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_152_0"@9297)
            if (self.murder == 1)
                global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_153_0"@9298)
            instance_create(450, 260, obj_writer)
        }
        draw_sprite(spr_heart, 0, 30, (270 + (self.menuc[1] * 40)))
        if button1_p()
            _temp_local_var_5 = (self.onebuffer < 0)
        else
            _temp_local_var_5 = 0
        if _temp_local_var_5
        {
            self.menu = 2
            self.onebuffer = 2
            with(obj_writer)
            {
                instance_destroy()
            }
            if (self.menuc[1] == self.menumax)
                self.menu = 0
        }
        if button2_p()
        {
            if (self.twobuffer < 0)
                _temp_local_var_6 = (self.onebuffer < 2)
            else
                _temp_local_var_6 = 0
        }
        else
            _temp_local_var_6 = 0
        if _temp_local_var_6
        {
            self.menu = 0
            self.twobuffer = 2
            self.minimenuy = 220
            with(obj_writer)
            {
                instance_destroy()
            }
        }
        self.menuc[2] = 0
    }
    if (self.menu == 2)
    {
        self.menumax = 1
        draw_set_color(0xFFFFFF)
        scr_84_set_draw_font("mainbig"@1561)
        if (global.lang == "ja"@1566)
        {
            draw_text(460, 290, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_167_0"@9299)))
            draw_text(460, 260, string_hash_to_newline((string(self.buyvalue[self.menuc[1]]) + scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_168_0"@9300))))
        }
        else
        {
            draw_text(460, 260, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_167_0"@9299)))
            draw_text(460, 290, string_hash_to_newline((string(self.buyvalue[self.menuc[1]]) + scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_168_0"@9300))))
        }
        draw_text(480, 340, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_169_0"@9301)))
        draw_text(480, 370, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_170_0"@9302)))
        draw_sprite(spr_heart, 0, 450, (350 + (self.menuc[2] * 30)))
        if button2_p()
            _temp_local_var_7 = (self.twobuffer < 0)
        else
            _temp_local_var_7 = 0
        if _temp_local_var_7
        {
            self.menu = 1
            self.sidemessage = 2
            self.twobuffer = 2
            self.onebuffer = 2
        }
        if button1_p()
        {
            if (self.onebuffer < 0)
                _temp_local_var_8 = (self.twobuffer < 0)
            else
                _temp_local_var_8 = 0
        }
        else
            _temp_local_var_8 = 0
        if _temp_local_var_8
        {
            if (self.menuc[2] == 0)
            {
                self.afford = 0
                if (global.gold >= self.buyvalue[self.menuc[1]])
                    self.afford = 1
                if (self.afford == 1)
                {
                    if (self.itemtype[self.menuc[1]] == "item"@103)
                        scr_itemget(self.item[self.menuc[1]])
                    if (self.itemtype[self.menuc[1]] == "weapon"@166)
                        scr_weaponget(self.item[self.menuc[1]])
                    if (self.itemtype[self.menuc[1]] == "armor"@167)
                        scr_armorget(self.item[self.menuc[1]])
                    if (self.noroom == 0)
                    {
                        global.gold = (global.gold - self.buyvalue[self.menuc[1]])
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
            self.minimenuy = (self.minimenuy - 5)
        if (self.minimenuy > 50)
            self.minimenuy = (self.minimenuy - 5)
        if (self.minimenuy > 100)
            self.minimenuy = (self.minimenuy - 8)
        if (self.minimenuy > 150)
            self.minimenuy = (self.minimenuy - 10)
    }
    else
    {
        if (self.minimenuy < 200)
            self.minimenuy = (self.minimenuy + 40)
    }
    if (self.minimenuy >= 200)
        self.minimenuy = 200
}
if (self.menu == 3)
{
    self.menumax = 4
    draw_set_color(0xFFFFFF)
    scr_84_set_draw_font("mainbig"@1561)
    draw_text(80, 260, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_217_0"@9303)))
    draw_text(80, 300, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_218_0"@9304)))
    if (global.flag[241] < 6)
        draw_text(80, 340, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_220_0"@9305)))
    else
    {
        draw_set_color(0x00FFFF)
        draw_text(80, 340, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_224_0"@9306)))
    }
    if (global.flag[241] == 0)
        draw_text(80, 380, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_227_0"@9307)))
    else
    {
        self._legendstring = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_230_0"@9308)
        draw_set_color(0x00FFFF)
        if (global.flag[115] >= 1)
            draw_set_color(0xFFFFFF)
        if (global.flag[241] >= 6)
        {
            draw_set_color(0x00FFFF)
            self._legendstring = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_233_0"@9310)
        }
        draw_text(80, 380, string_hash_to_newline(self._legendstring))
    }
    draw_set_color(0xFFFFFF)
    draw_text(80, 420, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_240_0"@9311)))
    if (instance_exists(obj_writer) == 0)
    {
        global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_244_0"@9312)
        instance_create(440, 260, obj_writer)
    }
    draw_sprite(spr_heart, 0, 50, (270 + (self.menuc[3] * 40)))
    if button1_p()
        _temp_local_var_9 = (self.onebuffer < 0)
    else
        _temp_local_var_9 = 0
    if _temp_local_var_9
    {
        self.onebuffer = 2
        with(obj_writer)
        {
            instance_destroy()
        }
        if (self.menuc[3] < self.menumax)
        {
            self.sell = (self.menuc[3] + 3)
            self.menu = 4
        }
        else
            self.menu = 0
    }
    else
    {
        if button2_p()
        {
            if (self.twobuffer < 0)
                _temp_local_var_46 = (self.onebuffer < 0)
            else
                _temp_local_var_46 = 0
        }
        else
            _temp_local_var_46 = 0
        if _temp_local_var_46
        {
            self.twobuffer = 2
            self.menu = 0
            with(obj_writer)
            {
                instance_destroy()
            }
        }
    }
}
if (self.menu == 10)
{
    self.menuc[11] = 0
    self.menuc[12] = 0
    self.menuc[13] = 0
    self.menumax = 3
    draw_set_color(0xFFFFFF)
    scr_84_set_draw_font("mainbig"@1561)
    draw_text(80, 260, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_278_0"@9313)))
    draw_text(80, 300, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_279_0"@9314)))
    draw_text(80, 340, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_280_0"@9315)))
    draw_text(80, 380, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_281_0"@9316)))
    if (instance_exists(obj_writer) == 0)
    {
        if (self.sidemessage == 0)
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_285_0"@9317)
        if (self.sidemessage == 1)
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_286_0"@9318)
        if (self.sidemessage == 2)
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_287_0"@9319)
        instance_create(460, 260, obj_writer)
    }
    draw_sprite(spr_heart, 0, 50, (270 + (self.menuc[10] * 40)))
    if button1_p()
        _temp_local_var_10 = (self.onebuffer < 0)
    else
        _temp_local_var_10 = 0
    if _temp_local_var_10
    {
        self.pagemax = 0
        self.sidemessage2 = 0
        self.onebuffer = 2
        with(obj_writer)
        {
            instance_destroy()
        }
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
    if button2_p()
    {
        if (self.twobuffer < 0)
            _temp_local_var_11 = (self.onebuffer < 0)
        else
            _temp_local_var_11 = 0
    }
    else
        _temp_local_var_11 = 0
    if _temp_local_var_11
    {
        self.twobuffer = 2
        self.menu = 0
        with(obj_writer)
        {
            instance_destroy()
        }
    }
}
if (self.menu == 11)
    _temp_local_var_12 = 1
else
{
    if (self.menu == 12)
        _temp_local_var_12 = 1
    else
        _temp_local_var_12 = (self.menu == 13)
}
if _temp_local_var_12
{
    if (instance_exists(obj_writer) == 0)
    {
        if (self.sidemessage2 == 0)
            _temp_local_var_13 = (self.menu == 11)
        else
            _temp_local_var_13 = 0
        if _temp_local_var_13
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_347_0"@9322)
        if (self.sidemessage2 == 0)
            _temp_local_var_14 = (self.menu == 12)
        else
            _temp_local_var_14 = 0
        if _temp_local_var_14
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_348_0"@9323)
        if (self.sidemessage2 == 0)
            _temp_local_var_15 = (self.menu == 13)
        else
            _temp_local_var_15 = 0
        if _temp_local_var_15
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_349_0"@9324)
        if (self.sidemessage2 == 1)
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_350_0"@9325)
        if (self.sidemessage2 == 2)
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_351_0"@9326)
        if (self.sidemessage2 == 3)
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_352_0"@9327)
        if (self.sidemessage2 == 4)
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_353_0"@9328)
        instance_create(450, 260, obj_writer)
    }
}
scr_shopmenu(4)
if (self.menu == 15)
    _temp_local_var_16 = 1
else
{
    if (self.menu == 16)
        _temp_local_var_16 = 1
    else
        _temp_local_var_16 = (self.menu == 17)
}
if _temp_local_var_16
{
    self.menumax = 1
    draw_set_color(0xFFFFFF)
    scr_84_set_draw_font("mainbig"@1561)
    if (global.lang == "ja"@1566)
    {
        draw_text(460, 290, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_365_0"@9329)))
        draw_text(460, 260, string_hash_to_newline((string(self.sellvalue) + scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_366_0"@9330))))
    }
    else
    {
        draw_text(460, 260, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_365_0"@9329)))
        draw_text(460, 290, string_hash_to_newline((string(self.sellvalue) + scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_366_0"@9330))))
    }
    draw_text(480, 340, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_367_0"@9331)))
    draw_text(480, 370, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_368_0"@9332)))
    draw_sprite(spr_heart, 0, 450, (350 + (self.menuc[self.menu] * 30)))
}
scr_shopmenu(5)
if (self.menu == 4)
{
    if (self.sell == 0)
        self.menu = 0
    if (instance_exists(obj_writer) == 0)
        _temp_local_var_17 = (self.selling == 0)
    else
        _temp_local_var_17 = 0
    if _temp_local_var_17
    {
        if (self.sell == 1)
        {
        }
        if (self.sell == 2)
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_395_0"@9333)
        if (self.sell == 3)
        {
            global.msg[0] = (scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_399_0"@9334) + "/"@357)
            global.msg[1] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_400_0"@9335)
            global.msg[2] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_401_0"@9336)
            global.msg[3] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_402_0"@9337)
            global.msg[4] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_403_0"@9338)
        }
        if (self.sell == 4)
        {
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_411_0"@9339)
            global.msg[1] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_412_0"@9340)
            global.msg[2] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_413_0"@9341)
            global.msg[3] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_414_0"@9342)
            global.msg[4] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_415_0"@9343)
        }
        if (self.sell == 5)
        {
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_421_0"@9344)
            global.msg[1] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_422_0"@9345)
            global.msg[2] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_423_0"@9346)
            global.msg[3] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_424_0"@9347)
            global.msg[4] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_425_0"@9348)
            if (global.flag[241] >= 6)
            {
                global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_429_0"@9349)
                global.msg[1] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_430_0"@9350)
                global.msg[2] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_431_0"@9351)
                global.msg[3] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_432_0"@9352)
                global.msg[4] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_433_0"@9353)
                global.msg[5] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_434_0"@9354)
                global.msg[6] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_435_0"@9355)
                global.msg[7] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_436_0"@9356)
                global.msg[8] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_437_0"@9357)
                global.msg[9] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_438_0"@9358)
                global.msg[10] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_439_0"@9359)
                global.msg[11] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_440_0"@9360)
                global.msg[12] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_441_0"@9361)
                global.msg[13] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_442_0"@9362)
            }
        }
        if (self.sell == 6)
        {
            global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_448_0"@9363)
            global.msg[1] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_449_0"@9364)
            global.msg[2] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_450_0"@9365)
            if (global.flag[241] >= 1)
                _temp_local_var_18 = (global.flag[115] == 1)
            else
                _temp_local_var_18 = 0
            if _temp_local_var_18
            {
                global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_459_0"@9366)
                global.msg[1] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_460_0"@9367)
                global.msg[2] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_461_0"@9368)
            }
            if (global.flag[241] >= 1)
                _temp_local_var_19 = (global.flag[115] == 0)
            else
                _temp_local_var_19 = 0
            if _temp_local_var_19
            {
                global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_472_0"@9369)
                global.msg[1] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_473_0"@9370)
                global.msg[2] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_474_0"@9371)
                global.msg[3] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_475_0"@9372)
                global.msg[4] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_476_0"@9373)
                global.msg[5] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_477_0"@9374)
                global.msg[6] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_478_0"@9375)
                global.msg[7] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_479_0"@9376)
                global.msg[8] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_480_0"@9377)
                global.writersnd[0] = 97
                global.msg[9] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_482_0"@9378)
                global.msg[10] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_483_0"@9379)
                global.msg[11] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_484_0"@9380)
                global.msg[12] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_485_0"@9381)
                global.msg[13] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_486_0"@9382)
                scr_keyitemget(4)
                global.flag[115] = 1
            }
            if (global.flag[115] == 1)
                _temp_local_var_20 = (global.flag[241] >= 5)
            else
                _temp_local_var_20 = 0
            if _temp_local_var_20
            {
                global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_493_0"@9383)
                global.msg[1] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_494_0"@9384)
                global.msg[2] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_495_0"@9385)
            }
            if (global.flag[115] == 1)
                _temp_local_var_21 = (global.flag[241] >= 6)
            else
                _temp_local_var_21 = 0
            if _temp_local_var_21
            {
                global.msg[0] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_500_0"@9386)
                global.msg[1] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_501_0"@9387)
                global.msg[2] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_502_0"@9388)
                global.msg[3] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_503_0"@9389)
                global.msg[4] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_504_0"@9390)
                global.msg[5] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_505_0"@9391)
                global.msg[6] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_506_0"@9392)
                global.msg[7] = scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_507_0"@9393)
            }
        }
        instance_create(30, 270, obj_writer)
        self.selling = 1
    }
    if (self.selling == 1)
        _temp_local_var_22 = (instance_exists(obj_writer) == 0)
    else
        _temp_local_var_22 = 0
    if _temp_local_var_22
    {
        if (self.sell == 2)
        {
            self.selling = 2
            event_user(1)
        }
        else
        {
            if (self.sell == 1)
                _temp_local_var_31 = 1
            else
                _temp_local_var_31 = (self.sell == 7)
            if _temp_local_var_31
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
    if (self.menu != 11)
    {
        if (self.menu != 12)
            _temp_local_var_23 = (self.menu != 13)
        else
            _temp_local_var_23 = 0
    }
    else
        _temp_local_var_23 = 0
    if _temp_local_var_23
    {
        self.menuc[self.menu] = (self.menuc[self.menu] + 1)
        if (self.menuc[self.menu] > self.menumax)
            self.menuc[self.menu] = 0
    }
}
if up_p()
{
    if (self.menu != 11)
    {
        if (self.menu != 12)
            _temp_local_var_24 = (self.menu != 13)
        else
            _temp_local_var_24 = 0
    }
    else
        _temp_local_var_24 = 0
    if _temp_local_var_24
    {
        self.menuc[self.menu] = (self.menuc[self.menu] - 1)
        if (self.menuc[self.menu] < 0)
            self.menuc[self.menu] = self.menumax
    }
}
if (self.menu < 4)
    _temp_local_var_25 = 1
else
    _temp_local_var_25 = (self.menu >= 10)
if _temp_local_var_25
{
    draw_text(440, 420, string_hash_to_newline((string(global.gold) + "$"@2686)))
    if (self.menu == 1)
        _temp_local_var_26 = 1
    else
        _temp_local_var_26 = (self.menu == 2)
    if _temp_local_var_26
    {
        if (self.menuc[1] < 4)
        {
            if (self.itemtype[self.menuc[1]] == "item"@103)
                scr_itemcheck(0)
            if (self.itemtype[self.menuc[1]] == "armor"@167)
                scr_armorcheck_inventory(0)
            if (self.itemtype[self.menuc[1]] == "weapon"@166)
                scr_weaponcheck_inventory(0)
            scr_84_set_draw_font("dotumche"@1564)
            if (self.itemcount < 10)
                self.roomstring = ("0"@2521 + string(self.itemcount))
            else
                self.roomstring = string(self.itemcount)
            if (self.itemcount > 0)
                draw_text(520, 430, string_hash_to_newline((scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_568_0"@9395) + self.roomstring)))
            if (self.itemcount == 0)
                draw_text(520, 430, string_hash_to_newline(scr_84_get_lang_string("obj_shop1_slash_Draw_0_gml_571_0"@9396)))
        }
    }
}
self.onebuffer = (self.onebuffer - 1)
self.twobuffer = (self.twobuffer - 1)
