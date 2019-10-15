self.siner = (self.siner + 1)
draw_sprite_ext(spr_shop_rurusbg, 0, 0, 0, 2, 2, 0, 0xFFFFFF, 1)
draw_sprite_ext(spr_shop_rurussparkle, 0, (148 + (sin((self.siner / 6)) * 4)), (52 + (cos((self.siner / 6)) * 4)), 2, ((sin((self.siner / 8)) * 3) - 1), 0, 0xFFFFFF, ((sin((self.siner / 8)) * 2) - 1))
draw_sprite_ext(spr_shop_rurussparkle, 0, (48 + (sin((self.siner / 6)) * 4)), (42 + (cos((self.siner / 6)) * 4)), 2, ((cos((self.siner / 8)) * 3) - 1), 0, 0xFFFFFF, ((cos((self.siner / 8)) * 2) - 1))
draw_sprite_ext(spr_shop_rurusface, global.fe, 72, 62, 2, 2, 0, 0xFFFFFF, 1)
draw_sprite_ext(spr_shop_rurushand, (self.siner / 3.73), 200, 56, 2, 2, 0, 0xFFFFFF, 1)
draw_sprite_ext(spr_shop_rurusfoot, (self.siner / 3.73), 340, 150, 2, 2, 0, 0xFFFFFF, 1)
draw_sprite_ext(spr_shop_rurussteam, (self.siner / 20), 422, (168 + (sin((self.siner / 8)) * 2)), 2, 2, 0, 0xFFFFFF, 1)
self.i = 0
while(true)
{
    if (self.i < self.worm_max)
    {
        self.worm_image[self.i] = (self.worm_image[self.i] + 0.2)
        if (self.worm_image[self.i] >= 3)
            self.worm_siner[self.i] = (self.worm_siner[self.i] + (self.worm_image[self.i] / 3))
        if (self.worm_image[self.i] >= 6)
            self.worm_image[self.i] = (self.worm_image[self.i] - 6)
        self.complexwormx = ((sin((self.worm_siner[self.i] / 50)) * 20) + (sin((self.worm_siner[self.i] / 3)) * 2))
        self.complexwormy = cos((self.worm_siner[self.i] / 8))
        draw_sprite_ext(spr_shop_rurusworm, self.worm_image[self.i], (530 + self.complexwormx), ((204 + self.complexwormy) + self.worm_y[self.i]), 2, 2, 0, 0xFFFFFF, 1)
        self.i = (self.i + 1)
        continue
    }
    break
}
draw_set_color(0x000000)
draw_rectangle(0, 240, 640, 480, 0)
scr_shopmenu(0)
if (self.menu <= 3)
    _temp_local_var_1 = 1
else
    _temp_local_var_1 = (self.menu >= 10)
if _temp_local_var_1
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
        global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_70_0"@9409)
        if (self.mainmessage == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_73_0"@9410)
            if (self.friendly == 1)
                global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_74_0"@9411)
        }
        instance_create(30, 270, obj_writer)
    }
    self.menumax = 3
    draw_set_color(0xFFFFFF)
    scr_84_set_draw_font("mainbig"@1561)
    draw_text(480, 260, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_82_0"@9412)))
    draw_text(480, 300, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_83_0"@9413)))
    draw_text(480, 340, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_84_0"@9414)))
    draw_text(480, 380, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_85_0"@9415)))
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
    _temp_local_var_2 = 1
else
    _temp_local_var_2 = (self.menu == 2)
if _temp_local_var_2
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
    draw_text(60, (260 + (self.itemtotal * 40)), string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_115_0"@9416)))
    if (self.menu == 1)
    {
        self.menumax = 4
        if (instance_exists(obj_writer) == 0)
        {
            if (self.sidemessage == 0)
                global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_124_0"@9417)
            if (self.sidemessage == 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_125_0"@9418)
                if (self.friendly == 1)
                    global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_126_0"@9419)
            }
            if (self.sidemessage == 2)
                global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_127_0"@9420)
            if (self.sidemessage == 3)
                global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_128_0"@9421)
            if (self.sidemessage == 4)
                global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_129_0"@9422)
            if (self.murder == 1)
                global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_130_0"@9423)
            instance_create(450, 260, obj_writer)
        }
        draw_sprite(spr_heart, 0, 30, (270 + (self.menuc[1] * 40)))
        if button1_p()
            _temp_local_var_3 = (self.onebuffer < 0)
        else
            _temp_local_var_3 = 0
        if _temp_local_var_3
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
                _temp_local_var_4 = (self.onebuffer < 2)
            else
                _temp_local_var_4 = 0
        }
        else
            _temp_local_var_4 = 0
        if _temp_local_var_4
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
            draw_text(460, 290, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_144_0"@9424)))
            draw_text(460, 260, string_hash_to_newline((string(self.buyvalue[self.menuc[1]]) + scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_145_0"@9425))))
        }
        else
        {
            draw_text(460, 260, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_144_0"@9424)))
            draw_text(460, 290, string_hash_to_newline((string(self.buyvalue[self.menuc[1]]) + scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_145_0"@9425))))
        }
        draw_text(480, 340, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_146_0"@9426)))
        draw_text(480, 370, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_147_0"@9427)))
        draw_sprite(spr_heart, 0, 450, (350 + (self.menuc[2] * 30)))
        if button2_p()
            _temp_local_var_5 = (self.twobuffer < 0)
        else
            _temp_local_var_5 = 0
        if _temp_local_var_5
        {
            self.menu = 1
            self.sidemessage = 2
            self.twobuffer = 2
            self.onebuffer = 2
        }
        if button1_p()
        {
            if (self.onebuffer < 0)
                _temp_local_var_6 = (self.twobuffer < 0)
            else
                _temp_local_var_6 = 0
        }
        else
            _temp_local_var_6 = 0
        if _temp_local_var_6
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
    draw_text(80, 260, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_194_0"@9428)))
    draw_text(80, 300, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_195_0"@9429)))
    draw_text(80, 340, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_196_0"@9430)))
    draw_text(80, 380, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_197_0"@9431)))
    draw_text(80, 420, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_198_0"@9432)))
    if (instance_exists(obj_writer) == 0)
    {
        global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_202_0"@9433)
        instance_create(440, 260, obj_writer)
    }
    draw_sprite(spr_heart, 0, 50, (270 + (self.menuc[3] * 40)))
    if button1_p()
        _temp_local_var_7 = (self.onebuffer < 0)
    else
        _temp_local_var_7 = 0
    if _temp_local_var_7
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
                _temp_local_var_36 = (self.onebuffer < 0)
            else
                _temp_local_var_36 = 0
        }
        else
            _temp_local_var_36 = 0
        if _temp_local_var_36
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
    draw_text(80, 260, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_236_0"@9434)))
    draw_text(80, 300, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_237_0"@9435)))
    draw_text(80, 340, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_238_0"@9436)))
    draw_text(80, 380, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_239_0"@9437)))
    if (instance_exists(obj_writer) == 0)
    {
        if (self.sidemessage == 0)
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_243_0"@9438)
        if (self.sidemessage == 1)
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_244_0"@9439)
        if (self.sidemessage == 2)
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_245_0"@9440)
        instance_create(460, 260, obj_writer)
    }
    draw_sprite(spr_heart, 0, 50, (270 + (self.menuc[10] * 40)))
    if button1_p()
        _temp_local_var_8 = (self.onebuffer < 0)
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
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
            _temp_local_var_9 = (self.onebuffer < 0)
        else
            _temp_local_var_9 = 0
    }
    else
        _temp_local_var_9 = 0
    if _temp_local_var_9
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
    _temp_local_var_10 = 1
else
{
    if (self.menu == 12)
        _temp_local_var_10 = 1
    else
        _temp_local_var_10 = (self.menu == 13)
}
if _temp_local_var_10
{
    if (instance_exists(obj_writer) == 0)
    {
        if (self.sidemessage2 == 0)
            _temp_local_var_11 = (self.menu == 11)
        else
            _temp_local_var_11 = 0
        if _temp_local_var_11
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_305_0"@9441)
        if (self.sidemessage2 == 0)
            _temp_local_var_12 = (self.menu == 12)
        else
            _temp_local_var_12 = 0
        if _temp_local_var_12
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_306_0"@9442)
        if (self.sidemessage2 == 0)
            _temp_local_var_13 = (self.menu == 13)
        else
            _temp_local_var_13 = 0
        if _temp_local_var_13
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_307_0"@9443)
        if (self.sidemessage2 == 1)
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_308_0"@9444)
        if (self.sidemessage2 == 2)
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_309_0"@9445)
        if (self.sidemessage2 == 3)
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_310_0"@9446)
        if (self.sidemessage2 == 4)
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_311_0"@9447)
        instance_create(450, 260, obj_writer)
    }
}
scr_shopmenu(4)
if (self.menu == 15)
    _temp_local_var_14 = 1
else
{
    if (self.menu == 16)
        _temp_local_var_14 = 1
    else
        _temp_local_var_14 = (self.menu == 17)
}
if _temp_local_var_14
{
    self.menumax = 1
    draw_set_color(0xFFFFFF)
    scr_84_set_draw_font("mainbig"@1561)
    if (global.lang == "ja"@1566)
    {
        draw_text(460, 290, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_323_0"@9448)))
        draw_text(460, 260, string_hash_to_newline((string(self.sellvalue) + scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_324_0"@9449))))
    }
    else
    {
        draw_text(460, 260, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_323_0"@9448)))
        draw_text(460, 290, string_hash_to_newline((string(self.sellvalue) + scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_324_0"@9449))))
    }
    draw_text(480, 340, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_325_0"@9450)))
    draw_text(480, 370, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_326_0"@9451)))
    draw_sprite(spr_heart, 0, 450, (350 + (self.menuc[self.menu] * 30)))
}
scr_shopmenu(5)
if (self.menu == 4)
{
    if (self.sell == 0)
        self.menu = 0
    if (instance_exists(obj_writer) == 0)
        _temp_local_var_15 = (self.selling == 0)
    else
        _temp_local_var_15 = 0
    if _temp_local_var_15
    {
        if (self.sell == 1)
        {
        }
        if (self.sell == 2)
        {
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_353_0"@9452)
            if (self.friendly == 1)
                global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_354_0"@9453)
        }
        if (self.sell == 3)
        {
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_358_0"@9454)
            global.msg[1] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_359_0"@9455)
            global.msg[2] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_360_0"@9456)
            global.msg[3] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_361_0"@9457)
            if (self.friendly == 1)
                global.msg[3] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_364_0"@9458)
        }
        if (self.sell == 4)
        {
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_371_0"@9459)
            global.msg[1] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_372_0"@9460)
            global.msg[2] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_373_0"@9461)
            global.msg[3] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_374_0"@9462)
            if (self.friendly == 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_378_0"@9463)
                global.msg[1] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_379_0"@9464)
                global.msg[2] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_380_0"@9465)
            }
        }
        if (self.sell == 5)
        {
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_386_0"@9466)
            global.msg[1] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_387_0"@9467)
            global.msg[2] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_388_0"@9468)
            global.msg[3] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_389_0"@9469)
            if (self.friendly == 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_392_0"@9470)
                global.msg[1] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_393_0"@9471)
                global.msg[2] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_394_0"@9472)
                global.msg[3] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_395_0"@9473)
                global.msg[4] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_396_0"@9474)
            }
        }
        if (self.sell == 6)
        {
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_402_0"@9475)
            global.msg[1] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_403_0"@9476)
            global.msg[2] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_404_0"@9477)
            global.msg[3] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_405_0"@9478)
            global.msg[4] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_406_0"@9479)
            global.msg[5] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_407_0"@9480)
            global.msg[6] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_408_0"@9481)
            if (self.friendly == 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_413_0"@9482)
                global.msg[1] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_414_0"@9483)
                global.msg[2] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_415_0"@9484)
                global.msg[3] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_416_0"@9485)
            }
        }
        instance_create(30, 270, obj_writer)
        self.selling = 1
    }
    if (self.selling == 1)
        _temp_local_var_16 = (instance_exists(obj_writer) == 0)
    else
        _temp_local_var_16 = 0
    if _temp_local_var_16
    {
        if (self.sell == 2)
        {
            self.selling = 2
            event_user(1)
        }
        else
        {
            if (self.sell == 1)
                _temp_local_var_25 = 1
            else
                _temp_local_var_25 = (self.sell == 7)
            if _temp_local_var_25
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
            _temp_local_var_17 = (self.menu != 13)
        else
            _temp_local_var_17 = 0
    }
    else
        _temp_local_var_17 = 0
    if _temp_local_var_17
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
            _temp_local_var_18 = (self.menu != 13)
        else
            _temp_local_var_18 = 0
    }
    else
        _temp_local_var_18 = 0
    if _temp_local_var_18
    {
        self.menuc[self.menu] = (self.menuc[self.menu] - 1)
        if (self.menuc[self.menu] < 0)
            self.menuc[self.menu] = self.menumax
    }
}
if (self.menu < 4)
    _temp_local_var_19 = 1
else
    _temp_local_var_19 = (self.menu >= 10)
if _temp_local_var_19
{
    draw_text(440, 420, string_hash_to_newline((string(global.gold) + "$"@2686)))
    if (self.menu == 1)
        _temp_local_var_20 = 1
    else
        _temp_local_var_20 = (self.menu == 2)
    if _temp_local_var_20
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
                draw_text(520, 430, string_hash_to_newline((scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_478_0"@9486) + self.roomstring)))
            if (self.itemcount == 0)
                draw_text(520, 430, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_481_0"@9487)))
        }
    }
}
self.onebuffer = (self.onebuffer - 1)
self.twobuffer = (self.twobuffer - 1)
