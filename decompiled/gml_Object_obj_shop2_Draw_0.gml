self.siner += 1
draw_sprite_ext(spr_shop_rurusbg, 0, 0, 0, 2, 2, 0, 0x00FFFFFF, 1)
draw_sprite_ext(spr_shop_rurussparkle, 0, (148 + (sin((self.siner / 6)) * 4)), (52 + (cos((self.siner / 6)) * 4)), 2, ((sin((self.siner / 8)) * 3) - 1), 0, 0x00FFFFFF, ((sin((self.siner / 8)) * 2) - 1))
draw_sprite_ext(spr_shop_rurussparkle, 0, (48 + (sin((self.siner / 6)) * 4)), (42 + (cos((self.siner / 6)) * 4)), 2, ((cos((self.siner / 8)) * 3) - 1), 0, 0x00FFFFFF, ((cos((self.siner / 8)) * 2) - 1))
draw_sprite_ext(spr_shop_rurusface, global.fe, 72, 62, 2, 2, 0, 0x00FFFFFF, 1)
draw_sprite_ext(spr_shop_rurushand, (self.siner / 3.73), 200, 56, 2, 2, 0, 0x00FFFFFF, 1)
draw_sprite_ext(spr_shop_rurusfoot, (self.siner / 3.73), 340, 150, 2, 2, 0, 0x00FFFFFF, 1)
draw_sprite_ext(spr_shop_rurussteam, (self.siner / 20), 422, (168 + (sin((self.siner / 8)) * 2)), 2, 2, 0, 0x00FFFFFF, 1)
for (self.i = 0; self.i < self.worm_max; self.i += 1)
{
    self.worm_image[self.i] += 0.2
    if (self.worm_image[self.i] >= 3)
        self.worm_siner[self.i] += (self.worm_image[self.i] / 3)
    if (self.worm_image[self.i] >= 6)
        self.worm_image[self.i] -= 6
    self.complexwormx = ((sin((self.worm_siner[self.i] / 50)) * 20) + (sin((self.worm_siner[self.i] / 3)) * 2))
    self.complexwormy = cos((self.worm_siner[self.i] / 8))
    draw_sprite_ext(spr_shop_rurusworm, self.worm_image[self.i], (530 + self.complexwormx), ((204 + self.complexwormy) + self.worm_y[self.i]), 2, 2, 0, 0x00FFFFFF, 1)
}
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
        global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_70_0")
        if (self.mainmessage == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_73_0")
            if (self.friendly == 1)
                global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_74_0")
        }
        instance_create(30, 270, obj_writer)
    }
    self.menumax = 3
    draw_set_color(0x00FFFFFF)
    scr_84_set_draw_font("mainbig")
    draw_text(480, 260, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_82_0")))
    draw_text(480, 300, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_83_0")))
    draw_text(480, 340, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_84_0")))
    draw_text(480, 380, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_85_0")))
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
    draw_text(60, (260 + (self.itemtotal * 40)), string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_115_0")))
    if (self.menu == 1)
    {
        self.menumax = 4
        if (instance_exists(obj_writer) == 0)
        {
            if (self.sidemessage == 0)
                global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_124_0")
            if (self.sidemessage == 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_125_0")
                if (self.friendly == 1)
                    global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_126_0")
            }
            if (self.sidemessage == 2)
                global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_127_0")
            if (self.sidemessage == 3)
                global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_128_0")
            if (self.sidemessage == 4)
                global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_129_0")
            if (self.murder == 1)
                global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_130_0")
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
            draw_text(460, 290, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_144_0")))
            draw_text(460, 260, string_hash_to_newline((string(self.buyvalue[self.menuc[1]]) + scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_145_0"))))
        }
        else
        {
            draw_text(460, 260, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_144_0")))
            draw_text(460, 290, string_hash_to_newline((string(self.buyvalue[self.menuc[1]]) + scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_145_0"))))
        }
        draw_text(480, 340, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_146_0")))
        draw_text(480, 370, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_147_0")))
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
    draw_text(80, 260, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_194_0")))
    draw_text(80, 300, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_195_0")))
    draw_text(80, 340, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_196_0")))
    draw_text(80, 380, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_197_0")))
    draw_text(80, 420, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_198_0")))
    if (instance_exists(obj_writer) == 0)
    {
        global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_202_0")
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
    draw_text(80, 260, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_236_0")))
    draw_text(80, 300, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_237_0")))
    draw_text(80, 340, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_238_0")))
    draw_text(80, 380, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_239_0")))
    if (instance_exists(obj_writer) == 0)
    {
        if (self.sidemessage == 0)
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_243_0")
        if (self.sidemessage == 1)
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_244_0")
        if (self.sidemessage == 2)
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_245_0")
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
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_305_0")
        if ((self.sidemessage2 == 0) && (self.menu == 12))
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_306_0")
        if ((self.sidemessage2 == 0) && (self.menu == 13))
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_307_0")
        if (self.sidemessage2 == 1)
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_308_0")
        if (self.sidemessage2 == 2)
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_309_0")
        if (self.sidemessage2 == 3)
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_310_0")
        if (self.sidemessage2 == 4)
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_311_0")
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
        draw_text(460, 290, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_323_0")))
        draw_text(460, 260, string_hash_to_newline((string(self.sellvalue) + scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_324_0"))))
    }
    else
    {
        draw_text(460, 260, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_323_0")))
        draw_text(460, 290, string_hash_to_newline((string(self.sellvalue) + scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_324_0"))))
    }
    draw_text(480, 340, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_325_0")))
    draw_text(480, 370, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_326_0")))
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
        {
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_353_0")
            if (self.friendly == 1)
                global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_354_0")
        }
        if (self.sell == 3)
        {
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_358_0")
            global.msg[1] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_359_0")
            global.msg[2] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_360_0")
            global.msg[3] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_361_0")
            if (self.friendly == 1)
                global.msg[3] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_364_0")
        }
        if (self.sell == 4)
        {
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_371_0")
            global.msg[1] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_372_0")
            global.msg[2] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_373_0")
            global.msg[3] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_374_0")
            if (self.friendly == 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_378_0")
                global.msg[1] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_379_0")
                global.msg[2] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_380_0")
            }
        }
        if (self.sell == 5)
        {
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_386_0")
            global.msg[1] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_387_0")
            global.msg[2] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_388_0")
            global.msg[3] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_389_0")
            if (self.friendly == 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_392_0")
                global.msg[1] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_393_0")
                global.msg[2] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_394_0")
                global.msg[3] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_395_0")
                global.msg[4] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_396_0")
            }
        }
        if (self.sell == 6)
        {
            global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_402_0")
            global.msg[1] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_403_0")
            global.msg[2] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_404_0")
            global.msg[3] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_405_0")
            global.msg[4] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_406_0")
            global.msg[5] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_407_0")
            global.msg[6] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_408_0")
            if (self.friendly == 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_413_0")
                global.msg[1] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_414_0")
                global.msg[2] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_415_0")
                global.msg[3] = scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_416_0")
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
                draw_text(520, 430, string_hash_to_newline((scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_478_0") + self.roomstring)))
            if (self.itemcount == 0)
                draw_text(520, 430, string_hash_to_newline(scr_84_get_lang_string("obj_shop2_slash_Draw_0_gml_481_0")))
        }
    }
}
self.onebuffer -= 1
self.twobuffer -= 1
