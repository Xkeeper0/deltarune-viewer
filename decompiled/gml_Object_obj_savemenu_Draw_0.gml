self.xx = __view_get(e__VW.XView, 0)
self.yy = __view_get(e__VW.YView, 0)
scr_84_set_draw_font("main"@1558)
if (self.d == 2)
    scr_84_set_draw_font("mainbig"@1561)
if (global.lang == "ja"@1566)
{
    if (self.d == 1)
    {
        draw_set_color(0xFFFFFF)
        draw_rectangle((54 + self.xx), (49 + self.yy), (265 + self.xx), (157 + self.yy), 0)
        draw_set_color(0x000000)
        draw_rectangle(((57 * self.d) + self.xx), ((52 * self.d) + self.yy), ((262 * self.d) + self.xx), ((154 * self.d) + self.yy), 0)
    }
    else
    {
        scr_darkbox(((54 * self.d) + self.xx), ((49 * self.d) + self.yy), ((265 * self.d) + self.xx), ((157 * self.d) + self.yy))
        draw_set_color(0x000000)
        draw_rectangle(((64 * self.d) + self.xx), ((59 * self.d) + self.yy), ((255 * self.d) + self.xx), ((147 * self.d) + self.yy), 0)
    }
    draw_set_color(0xFFFFFF)
    if (self.coord == 2)
        draw_set_color(0x00FFFF)
    draw_set_halign(fa_center)
    draw_text(((160 * self.d) + self.xx), ((60 * self.d) + self.yy), string_hash_to_newline(self.name))
    draw_set_halign(fa_left)
    if (self.d == 1)
        draw_text((76 + self.xx), (80 + self.yy), string_hash_to_newline((scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_29_0"@10045) + string(self.love))))
    if (self.d == 2)
        draw_text(((78 * self.d) + self.xx), ((80 * self.d) + self.yy), string_hash_to_newline((scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_33_0"@10046) + string(self.level))))
    draw_text(((210 * self.d) + self.xx), ((80 * self.d) + self.yy), string_hash_to_newline(((string(self.minutes) + ":"@1546) + string(self.seconds))))
    draw_set_halign(fa_center)
    draw_text(((160 * self.d) + self.xx), ((100 * self.d) + self.yy), string_hash_to_newline(self.roomname))
    draw_set_halign(fa_left)
    if (self.coord == 0)
        draw_sprite(self.heartsprite, 0, (self.xx + (83 * self.d)), (self.yy + (135 * self.d)))
    if (self.coord == 1)
        draw_sprite(self.heartsprite, 0, (self.xx + (173 * self.d)), (self.yy + (135 * self.d)))
    if (self.coord < 2)
    {
        draw_text((self.xx + (95 * self.d)), (self.yy + (130 * self.d)), string_hash_to_newline(scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_47_0"@10047)))
        draw_text((self.xx + (185 * self.d)), (self.yy + (130 * self.d)), string_hash_to_newline(scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_48_0"@10048)))
    }
    else
    {
        draw_set_halign(fa_center)
        draw_text((self.xx + (160 * self.d)), (self.yy + (130 * self.d)), string_hash_to_newline(scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_52_0"@10049)))
        draw_set_halign(fa_left)
    }
}
else
{
    if (self.d == 1)
    {
        draw_set_color(0xFFFFFF)
        draw_rectangle((54 + self.xx), (49 + self.yy), (265 + self.xx), (135 + self.yy), 0)
        draw_set_color(0x000000)
        draw_rectangle(((57 * self.d) + self.xx), ((52 * self.d) + self.yy), ((262 * self.d) + self.xx), ((132 * self.d) + self.yy), 0)
    }
    else
    {
        scr_darkbox(((54 * self.d) + self.xx), ((49 * self.d) + self.yy), ((265 * self.d) + self.xx), ((135 * self.d) + self.yy))
        draw_set_color(0x000000)
        draw_rectangle(((64 * self.d) + self.xx), ((59 * self.d) + self.yy), ((255 * self.d) + self.xx), ((125 * self.d) + self.yy), 0)
    }
    draw_set_color(0xFFFFFF)
    if (self.coord == 2)
        draw_set_color(0x00FFFF)
    if (global.flag[912] == 0)
        draw_text(((70 * self.d) + self.xx), ((60 * self.d) + self.yy), string_hash_to_newline(self.name))
    else
    {
        draw_set_font(fnt_ja_main)
        if (self.d == 2)
            draw_set_font(fnt_ja_mainbig)
        draw_text(((70 * self.d) + self.xx), ((60 * self.d) + self.yy), string_hash_to_newline(self.name))
        scr_84_set_draw_font("main"@1558)
        if (self.d == 2)
            scr_84_set_draw_font("mainbig"@1561)
    }
    if (self.d == 1)
        draw_text((140 + self.xx), (60 + self.yy), string_hash_to_newline((scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_29_0"@10045) + string(self.love))))
    if (self.d == 2)
        draw_text(((175 * self.d) + self.xx), ((60 * self.d) + self.yy), string_hash_to_newline((scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_33_0"@10046) + string(self.level))))
    draw_text(((210 * self.d) + self.xx), ((60 * self.d) + self.yy), string_hash_to_newline(((string(self.minutes) + ":"@1546) + string(self.seconds))))
    draw_text(((70 * self.d) + self.xx), ((80 * self.d) + self.yy), string_hash_to_newline(self.roomname))
    if (self.coord == 0)
        draw_sprite(self.heartsprite, 0, (self.xx + (71 * self.d)), (self.yy + (113 * self.d)))
    if (self.coord == 1)
        draw_sprite(self.heartsprite, 0, (self.xx + (161 * self.d)), (self.yy + (113 * self.d)))
    if (self.coord < 2)
    {
        draw_text((self.xx + (85 * self.d)), (self.yy + (110 * self.d)), string_hash_to_newline(scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_47_0"@10047)))
        draw_text((self.xx + (175 * self.d)), (self.yy + (110 * self.d)), string_hash_to_newline(scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_48_0"@10048)))
    }
    else
        draw_text((self.xx + (85 * self.d)), (self.yy + (110 * self.d)), string_hash_to_newline(scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_52_0"@10049)))
}
