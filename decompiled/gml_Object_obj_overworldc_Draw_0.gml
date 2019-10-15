self.buffer = (self.buffer + 1)
if (global.interact == 5)
{
    self.xx = __view_get(e__VW.XView, self.view_current)
    self.yy = (__view_get(e__VW.YView, self.view_current) + 10)
    self.moveyy = self.yy
    local.stat_right = 263
    if (global.lang == "ja"@1566)
        local.stat_right = 300
    if (obj_mainchara.y > (self.yy + 120))
        self.moveyy = (self.moveyy + 135)
    if (global.menuno != 4)
    {
        draw_set_color(0xFFFFFF)
        draw_rectangle((16 + self.xx), (16 + self.moveyy), (86 + self.xx), (70 + self.moveyy), 0)
        draw_rectangle((16 + self.xx), (74 + self.yy), (86 + self.xx), (147 + self.yy), 0)
        if (global.menuno == 1)
            _temp_local_var_1 = 1
        else
        {
            if (global.menuno == 5)
                _temp_local_var_1 = 1
            else
                _temp_local_var_1 = (global.menuno == 6)
        }
        if _temp_local_var_1
            draw_rectangle((94 + self.xx), (16 + self.yy), (266 + self.xx), (196 + self.yy), 0)
        if (global.menuno == 2)
            draw_rectangle((94 + self.xx), (16 + self.yy), ((local.stat_right + 3) + self.xx), (224 + self.yy), 0)
        if (global.menuno == 3)
            draw_rectangle((94 + self.xx), (16 + self.yy), (266 + self.xx), (150 + self.yy), 0)
        if (global.menuno == 7)
            draw_rectangle((94 + self.xx), (16 + self.yy), (266 + self.xx), (216 + self.yy), 0)
        draw_set_color(0x000000)
        draw_rectangle((19 + self.xx), (19 + self.moveyy), (83 + self.xx), (67 + self.moveyy), 0)
        draw_rectangle((19 + self.xx), (77 + self.yy), (83 + self.xx), (144 + self.yy), 0)
        if (global.menuno == 1)
            _temp_local_var_2 = 1
        else
        {
            if (global.menuno == 5)
                _temp_local_var_2 = 1
            else
                _temp_local_var_2 = (global.menuno == 6)
        }
        if _temp_local_var_2
            draw_rectangle((97 + self.xx), (19 + self.yy), (263 + self.xx), (193 + self.yy), 0)
        if (global.menuno == 2)
            draw_rectangle((97 + self.xx), (19 + self.yy), (local.stat_right + self.xx), (221 + self.yy), 0)
        if (global.menuno == 3)
            draw_rectangle((97 + self.xx), (19 + self.yy), (263 + self.xx), (147 + self.yy), 0)
        if (global.menuno == 7)
            draw_rectangle((97 + self.xx), (19 + self.yy), (263 + self.xx), (213 + self.yy), 0)
        draw_set_color(0xFFFFFF)
        draw_set_font(fnt_small)
        draw_text((23 + self.xx), (49 + self.moveyy), string_hash_to_newline((((scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_36_0"@10067) + string(global.lhp)) + "/"@357) + string(global.lmaxhp))))
        draw_text((23 + self.xx), (40 + self.moveyy), string_hash_to_newline((scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_37_0"@10068) + string(global.llv))))
        draw_text((23 + self.xx), (58 + self.moveyy), string_hash_to_newline((scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_39_0"@10069) + string(global.lgold))))
        scr_84_set_draw_font("main"@1558)
        if (global.lang == "ja"@1566)
            draw_text((20 + self.xx), (20 + self.moveyy), string_hash_to_newline(global.lcharname))
        else
            draw_text((23 + self.xx), (20 + self.moveyy), string_hash_to_newline(global.lcharname))
        draw_text((42 + self.xx), (84 + self.yy), string_hash_to_newline(scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_42_0"@10070)))
        draw_text((42 + self.xx), (102 + self.yy), string_hash_to_newline(scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_43_0"@10071)))
        draw_text((42 + self.xx), (120 + self.yy), string_hash_to_newline(scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_44_0"@10072)))
        if (global.menuno == 1)
            _temp_local_var_3 = 1
        else
            _temp_local_var_3 = (global.menuno == 5)
        if _temp_local_var_3
        {
            self.i = 0
            while(true)
            {
                if (self.i < 8)
                {
                    draw_text((116 + self.xx), ((30 + self.yy) + (self.i * 16)), string_hash_to_newline(global.litemname[self.i]))
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
            draw_text((116 + self.xx), (170 + self.yy), string_hash_to_newline(scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_52_0"@10073)))
            draw_text(((116 + self.xx) + 48), (170 + self.yy), string_hash_to_newline(scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_53_0"@10074)))
            draw_text(((116 + self.xx) + 105), (170 + self.yy), string_hash_to_newline(scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_54_0"@10075)))
        }
    }
    if (global.menuno == 3)
    {
        self.i = 0
        while(true)
        {
            if (self.i < 7)
            {
                draw_text((116 + self.xx), ((30 + self.yy) + (self.i * 16)), string_hash_to_newline(global.phonename[self.i]))
                self.i = (self.i + 1)
                continue
            }
            break
        }
    }
    if (global.menuno == 2)
    {
        draw_text((108 + self.xx), (32 + self.yy), string_hash_to_newline(scr_84_get_subst_string(scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_66_0"@10076), global.lcharname)))
        draw_text((108 + self.xx), (62 + self.yy), string_hash_to_newline((scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_67_0"@10077) + string(global.llv))))
        draw_text((108 + self.xx), (78 + self.yy), string_hash_to_newline((scr_84_get_subst_string(scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_68_0"@10078), string(global.lhp)) + string(global.lmaxhp))))
        draw_text((108 + self.xx), (110 + self.yy), string_hash_to_newline(((scr_84_get_subst_string(scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_70_0"@10079), string(global.lat)) + string(global.lwstrength)) + ")"@3428)))
        draw_text((108 + self.xx), (126 + self.yy), string_hash_to_newline(((scr_84_get_subst_string(scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_71_0"@10080), string(global.ldf)) + string(global.ladef)) + ")"@3428)))
        self.weaponname = scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_72_0"@10081)
        self.armorname = scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_73_0"@10082)
        if (global.lweapon == 2)
            self.weaponname = scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_74_0"@10083)
        if (global.lweapon == 6)
            self.weaponname = scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_75_0"@10084)
        if (global.lweapon == 7)
            self.weaponname = scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_76_0"@10085)
        if (global.larmor == 3)
            self.armorname = scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_77_0"@10086)
        draw_text((108 + self.xx), (156 + self.yy), string_hash_to_newline((scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_80_0"@10087) + self.weaponname)))
        draw_text((108 + self.xx), (172 + self.yy), string_hash_to_newline((scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_81_0"@10088) + self.armorname)))
        draw_text((108 + self.xx), (192 + self.yy), string_hash_to_newline((scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_82_0"@10089) + string(global.lgold))))
        if (string_length(global.lcharname) >= 7)
            draw_text((192 + self.xx), (32 + self.yy), string_hash_to_newline(scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_88_0"@10090)))
        self.nextlevel = 0
        draw_text((192 + self.xx), (110 + self.yy), string_hash_to_newline((scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_91_0"@10092) + string(global.lxp))))
        if (global.llv == 1)
            self.nextlevel = (10 - global.lxp)
        if (global.llv == 2)
            self.nextlevel = (30 - global.lxp)
        if (global.llv == 3)
            self.nextlevel = (70 - global.lxp)
        if (global.llv == 4)
            self.nextlevel = (120 - global.lxp)
        if (global.llv == 5)
            self.nextlevel = (200 - global.lxp)
        if (global.llv == 6)
            self.nextlevel = (300 - global.lxp)
        if (global.llv == 7)
            self.nextlevel = (500 - global.lxp)
        if (global.llv == 8)
            self.nextlevel = (800 - global.lxp)
        if (global.llv == 9)
            self.nextlevel = (1200 - global.lxp)
        if (global.llv == 10)
            self.nextlevel = (1700 - global.lxp)
        if (global.llv == 11)
            self.nextlevel = (2500 - global.lxp)
        if (global.llv == 12)
            self.nextlevel = (3500 - global.lxp)
        if (global.llv == 13)
            self.nextlevel = (5000 - global.lxp)
        if (global.llv == 14)
            self.nextlevel = (7000 - global.lxp)
        if (global.llv == 15)
            self.nextlevel = (10000 - global.lxp)
        if (global.llv == 16)
            self.nextlevel = (15000 - global.lxp)
        if (global.llv == 17)
            self.nextlevel = (25000 - global.lxp)
        if (global.llv == 18)
            self.nextlevel = (50000 - global.lxp)
        if (global.llv == 19)
            self.nextlevel = (99999 - global.lxp)
        if (global.llv >= 20)
            self.nextlevel = 0
        draw_text((192 + self.xx), (126 + self.yy), string_hash_to_newline((scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_112_0"@10093) + string(self.nextlevel))))
    }
    if (global.menuno == 444)
    {
    }
    if (global.menuno == 0)
        draw_sprite(spr_heartsmall, 0, (28 + self.xx), ((88 + self.yy) + (18 * global.menucoord[0])))
    if (global.menuno == 1)
        draw_sprite(spr_heartsmall, 0, (104 + self.xx), ((34 + self.yy) + (16 * global.menucoord[1])))
    if (global.menuno == 3)
        draw_sprite(spr_heartsmall, 0, (104 + self.xx), ((34 + self.yy) + (16 * global.menucoord[3])))
    if (global.menuno == 6)
        draw_sprite(spr_heartsmall, 0, (104 + self.xx), ((34 + self.yy) + (16 * global.menucoord[6])))
    if (global.menuno == 7)
        draw_sprite(spr_heartsmall, 0, (104 + self.xx), ((34 + self.yy) + (16 * global.menucoord[7])))
    if (global.menuno == 5)
    {
        if (global.menucoord[5] == 0)
            draw_sprite(spr_heartsmall, 0, ((104 + self.xx) + (45 * global.menucoord[5])), (174 + self.yy))
        if (global.menucoord[5] == 1)
            draw_sprite(spr_heartsmall, 0, ((104 + self.xx) + ((45 * global.menucoord[5]) + 3)), (174 + self.yy))
        if (global.menucoord[5] == 2)
            draw_sprite(spr_heartsmall, 0, ((104 + self.xx) + ((45 * global.menucoord[5]) + 15)), (174 + self.yy))
    }
}
