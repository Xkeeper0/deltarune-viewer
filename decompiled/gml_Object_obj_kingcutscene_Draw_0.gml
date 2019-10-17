self.fountain_index += 0.1
draw_sprite_ext(spr_cc_fountainbg, self.fountain_index, 745, 0, 2, 2, 0, 0x00FFFFFF, self.image_alpha)
draw_background_ext(bg_cc_arena, 600, 0, 2, 2, 0, 0x00FFFFFF, self.image_alpha)
if scr_debug()
{
    draw_set_color(0x0000FFFF)
    if (self.con > 9998)
    {
        if instance_exists(self.king)
        {
            draw_text(__view_get(0, 0), __view_get(1, 0), string_hash_to_newline((scr_84_get_lang_string("obj_kingcutscene_slash_Draw_0_gml_15_0") + string(self.king.x))))
            draw_text(__view_get(0, 0), (__view_get(1, 0) + 30), string_hash_to_newline((scr_84_get_lang_string("obj_kingcutscene_slash_Draw_0_gml_16_0") + string(self.king.y))))
        }
        draw_text(__view_get(0, 0), (__view_get(1, 0) + 70), string_hash_to_newline((scr_84_get_lang_string("obj_kingcutscene_slash_Draw_0_gml_18_0") + string(__view_get(0, 0)))))
        draw_text(__view_get(0, 0), (__view_get(1, 0) + 100), string_hash_to_newline((scr_84_get_lang_string("obj_kingcutscene_slash_Draw_0_gml_19_0") + string(__view_get(1, 0)))))
        draw_text(__view_get(0, 0), (__view_get(1, 0) + 130), string_hash_to_newline((scr_84_get_lang_string("obj_kingcutscene_slash_Draw_0_gml_21_0") + string(self.con))))
        if instance_exists(self.k)
        {
            draw_text((__view_get(0, 0) + 160), __view_get(1, 0), string_hash_to_newline((scr_84_get_lang_string("obj_kingcutscene_slash_Draw_0_gml_25_0") + string(self.k.x))))
            draw_text((__view_get(0, 0) + 160), (__view_get(1, 0) + 30), string_hash_to_newline((scr_84_get_lang_string("obj_kingcutscene_slash_Draw_0_gml_26_0") + string(self.k.y))))
        }
        if instance_exists(self.s)
        {
            draw_text((__view_get(0, 0) + 320), __view_get(1, 0), string_hash_to_newline((scr_84_get_lang_string("obj_kingcutscene_slash_Draw_0_gml_31_0") + string(self.s.x))))
            draw_text((__view_get(0, 0) + 320), (__view_get(1, 0) + 30), string_hash_to_newline((scr_84_get_lang_string("obj_kingcutscene_slash_Draw_0_gml_32_0") + string(self.s.y))))
        }
    }
}
