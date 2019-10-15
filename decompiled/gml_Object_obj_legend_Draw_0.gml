if (self.con == 1)
{
    self.textimer = (self.textimer + 1)
    if (self.textimer == 6)
    {
        global.typer = 41
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_13_0"@10001)
        self.w = instance_create(40, 160, obj_writer)
        self.w.depth = -10
    }
    if (self.textimer == 220)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_21_0"@10002)
        self.w = instance_create(40, 160, obj_writer)
        self.w.depth = -10
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_24_0"@10003)
        self.w = instance_create(220, 160, obj_writer)
        self.w.depth = -10
    }
    if (self.textimer == 340)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_32_0"@10004)
        self.w = instance_create(40, 160, obj_writer)
        self.w.depth = -10
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_35_0"@10005)
        self.w = instance_create(220, 160, obj_writer)
        self.w.depth = -10
    }
    if (self.textimer == 460)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_43_0"@10006)
        self.w = instance_create(80, 160, obj_writer)
        self.w.depth = -10
    }
    draw_sprite(self.pic, 0, 60, (48 + self.yoff))
    self.ytimer = (self.ytimer + 1)
    if (self.ytimer >= 4)
        _temp_local_var_1 = (self.yoff > -260)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        self.ytimer = 0
        self.yoff = (self.yoff - 2)
    }
    if (self.yoff <= -260)
    {
        self.contimer = (self.contimer + 1)
        if (self.contimer == 40)
            audio_pause_sound(global.currentsong[1])
        if (self.contimer == 100)
        {
            self.con = 2
            self.contimer = 0
            self.chunkfade = 1
            self.alarm[4] = 90
        }
    }
}
if (self.con == 2)
{
    draw_sprite(self.pic, 0, 60, (48 + self.yoff))
    self.contimer = (self.contimer + 1)
    if (self.contimer == 40)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
    }
}
if (self.con == 3)
{
    self.pic = spr_introimage1
    audio_sound_set_track_position(global.currentsong[1], 19.656)
    audio_resume_sound(global.currentsong[1])
    self.con = 4
    self.contimer = 0
    self.chunkfade = 0
    global.typer = 40
    global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_98_0"@10008)
    global.msg[1] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_99_0"@10009)
    self.w = instance_create(40, 160, obj_writer)
}
if (self.con == 4)
{
    draw_sprite(self.pic, 0, 60, 28)
    self.contimer = (self.contimer + 1)
    if (self.contimer == 270)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_113_0"@10010)
        self.w = instance_create(70, 160, obj_writer)
    }
    if (self.contimer >= 276)
    {
        self.c_chunkamt = 0
        self.contimer = 0
        self.con = 5
    }
}
if (self.con == 5)
{
    if (self.contimer <= 200)
        draw_sprite(self.pic, 0, 60, 28)
    self.con_alph = 0
    self.c_chunkamt = (self.c_chunkamt + 0.05)
    if (self.c_chunkamt >= 0.25)
        self.con_alph = 0.25
    if (self.c_chunkamt >= 0.5)
        self.con_alph = 0.5
    if (self.c_chunkamt >= 0.75)
        self.con_alph = 0.75
    if (self.c_chunkamt >= 1)
        self.con_alph = 1
    if (self.contimer <= 200)
        draw_sprite_ext(self.pic, 1, 60, 28, 1, 1, 0, 0xFFFFFF, self.con_alph)
    self.contimer = (self.contimer + 1)
    if (self.contimer == 120)
        self.chunkfade = 1
    if (self.contimer == 130)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_151_0"@10013)
        self.w = instance_create(40, 80, obj_writer)
    }
    if (self.contimer == 210)
    {
        self.chunkfade = 0
        self.fadespeed = 0.2
    }
    if (self.contimer == 230)
    {
        self.chunkfade = 1
        self.fadespeed = 0.03
        self.fadecolor = 0xFFFFFF
    }
    if (self.contimer == 275)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_170_0"@10014)
        self.w = instance_create(80, 185, obj_writer)
        self.fadespeed = 0.05
        self.con = 6
        self.chunkfade = 0
        self.contimer = 0
        self.border = 0
        self.c_chunkamt = 0
        self.pic = spr_introimage2
    }
}
if (self.con == 6)
{
    draw_sprite(self.pic, 0, 0, 0)
    self.con_alph = 0
    if (self.contimer >= 276)
        self.c_chunkamt = (self.c_chunkamt + 0.05)
    if (self.c_chunkamt >= 0.25)
        self.con_alph = 0.25
    if (self.c_chunkamt >= 0.5)
        self.con_alph = 0.5
    if (self.c_chunkamt >= 0.75)
        self.con_alph = 0.75
    if (self.c_chunkamt >= 1)
        self.con_alph = 1
    draw_sprite_ext(self.pic, 1, 0, 0, 1, 1, 0, 0xFFFFFF, self.con_alph)
    self.contimer = (self.contimer + 1)
    if (self.contimer == 138)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_205_0"@10015)
        self.w = instance_create(80, 185, obj_writer)
    }
    if (self.contimer == 276)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_212_0"@10016)
        self.w = instance_create(60, 185, obj_writer)
    }
    if (self.contimer == 414)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_219_0"@10017)
        self.w = instance_create(80, 185, obj_writer)
    }
    if (self.contimer == 520)
    {
        self.fadespeed = 0.04
        self.fadecolor = 0x000000
        self.chunkfade = 1
    }
    if (self.contimer == 551)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_233_0"@10018)
        self.w = instance_create(40, 185, obj_writer)
        self.contimer = 0
        self.c_chunkamt = 0
        self.chunkfade = 0
        self.con = 7
        self.c_chunkamt = 0
        self.pic = spr_introimage3
    }
}
if (self.con == 7)
{
    draw_sprite(self.pic, 0, 0, 0)
    if (self.contimer == 138)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_253_0"@10019)
        self.w = instance_create(80, 185, obj_writer)
    }
    self.con_alph = 0
    if (self.contimer >= 138)
        self.c_chunkamt = (self.c_chunkamt + 0.05)
    if (self.c_chunkamt >= 0.25)
        self.con_alph = 0.25
    if (self.c_chunkamt >= 0.5)
        self.con_alph = 0.5
    if (self.c_chunkamt >= 0.75)
        self.con_alph = 0.75
    if (self.c_chunkamt >= 1)
        self.con_alph = 1
    draw_sprite_ext(self.pic, 1, 0, 0, 1, 1, 0, 0xFFFFFF, self.con_alph)
    self.contimer = (self.contimer + 1)
    if (self.contimer == 246)
    {
        self.fadespeed = 0.04
        self.fadecolor = 0x000000
        self.chunkfade = 1
    }
    if (self.contimer >= 277)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        self.contimer = 0
        self.c_chunkamt = 0
        self.chunkfade = 0
        self.con = 8
        self.c_chunkamt = 0
        self.pic = spr_introimage4
    }
}
if (self.con == 8)
{
    draw_sprite(self.pic, 0, 0, 0)
    self.con_alph = 0
    if (self.contimer == 4)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_301_0"@10020)
        self.w = instance_create(20, 185, obj_writer)
    }
    if (self.contimer == 69)
    {
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_309_0"@10021)
        self.w = instance_create(110, 185, obj_writer)
    }
    if (self.contimer == 138)
    {
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_317_0"@10022)
        self.w = instance_create(200, 185, obj_writer)
    }
    if (self.contimer >= 69)
        _temp_local_var_2 = (self.contimer <= 138)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        self.c_chunkamt = (self.c_chunkamt + 0.05)
        if (self.c_chunkamt >= 0.25)
            self.con_alph = 0.25
        if (self.c_chunkamt >= 0.5)
            self.con_alph = 0.5
        if (self.c_chunkamt >= 0.75)
            self.con_alph = 0.75
        if (self.c_chunkamt >= 1)
            self.con_alph = 1
        if (self.c_chunkamt > 1)
            self.c_chunkamt = 1
    }
    if (self.contimer >= 138)
    {
        self.con_alph = 1
        self.c_chunkamt = (self.c_chunkamt + 0.05)
        if (self.c_chunkamt >= 1.25)
            self.con_alph = 1.25
        if (self.c_chunkamt >= 1.5)
            self.con_alph = 1.5
        if (self.c_chunkamt >= 1.75)
            self.con_alph = 1.75
        if (self.c_chunkamt >= 2)
            self.con_alph = 2
    }
    draw_sprite_ext(self.pic, 1, 0, 0, 1, 1, 0, 0xFFFFFF, self.con_alph)
    draw_sprite_ext(self.pic, 2, 0, 0, 1, 1, 0, 0xFFFFFF, (self.con_alph - 1))
    self.contimer = (self.contimer + 1)
    if (self.contimer == 246)
    {
        self.fadespeed = 0.04
        self.fadecolor = 0x000000
        self.chunkfade = 1
    }
    if (self.contimer >= 277)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_356_0"@10023)
        self.w = instance_create(40, 185, obj_writer)
        self.contimer = 0
        self.c_chunkamt = 0
        self.chunkfade = 0
        self.con = 9
        self.pic = spr_introimage5
    }
}
if (self.con == 9)
{
    draw_sprite(self.pic, 0, 0, 0)
    self.con_alph = 0
    if (self.contimer >= 276)
        self.c_chunkamt = (self.c_chunkamt + 0.05)
    if (self.c_chunkamt >= 0.25)
        self.con_alph = 0.25
    if (self.c_chunkamt >= 0.5)
        self.con_alph = 0.5
    if (self.c_chunkamt >= 0.75)
        self.con_alph = 0.75
    if (self.c_chunkamt >= 1)
        self.con_alph = 1
    draw_sprite_ext(self.pic, 1, 0, 0, 1, 1, 0, 0xFFFFFF, self.con_alph)
    self.contimer = (self.contimer + 1)
    if (self.contimer == 138)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_387_0"@10024)
        self.w = instance_create(40, 185, obj_writer)
    }
    if (self.contimer == 276)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_394_0"@10025)
        self.w = instance_create(80, 185, obj_writer)
    }
    if (self.contimer == 414)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_401_0"@10026)
        self.w = instance_create(80, 185, obj_writer)
        self.fadespeed = 0.04
        self.fadecolor = 0x000000
        self.chunkfade = 1
    }
    if (self.contimer >= 552)
    {
        self.xoff = 0
        self.yoff = 0
        self.fadespeed = 0.02
        self.contimer = 0
        self.c_chunkamt = 0
        self.chunkfade = 0
        self.con = 10
        self.c_chunkamt = 0
        self.pic = spr_introimage6
        self.border = 1
        self.ytimer = 0
        self.xtimer = 0
        with(obj_writer)
        {
            instance_destroy()
        }
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_426_0"@10027)
        self.w = instance_create(40, 160, obj_writer)
    }
}
if (self.con == 10)
{
    draw_sprite(self.pic, 0, (60 + self.xoff), (28 + self.yoff))
    self.ytimer = (self.ytimer + 1)
    if (self.ytimer >= 4)
        _temp_local_var_3 = (self.yoff > -110)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
    {
        self.ytimer = 0
        self.yoff = (self.yoff - 2)
    }
    self.contimer = (self.contimer + 1)
    if (self.contimer == 138)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_451_0"@10028)
        self.w = instance_create(80, 160, obj_writer)
    }
    if (self.contimer == 276)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_459_0"@10029)
        self.w = instance_create(80, 160, obj_writer)
    }
    if (self.contimer == 444)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_466_0"@10030)
        self.w = instance_create(40, 160, obj_writer)
    }
    if (self.contimer == 640)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_473_0"@10031)
        self.w = instance_create(40, 160, obj_writer)
    }
    if (self.contimer >= 444)
    {
        self.xtimer = (self.xtimer + 1)
        if (self.xoff > -60)
            _temp_local_var_4 = (self.xtimer >= 4)
        else
            _temp_local_var_4 = 0
        if _temp_local_var_4
        {
            self.xtimer = 0
            self.xoff = (self.xoff - 2)
        }
    }
    if (self.contimer == 760)
    {
        self.fadespeed = 0.02
        self.chunkfade = 1
    }
    if (self.contimer == 880)
        _temp_local_var_5 = (self.skipped == 0)
    else
        _temp_local_var_5 = 0
    if _temp_local_var_5
    {
        snd_free(global.currentsong[0])
        global.flag[6] = 0
        self.f = instance_create(0, 0, obj_fadeout)
        self.f.fadespeed = 0.02
    }
    if (self.contimer == 960)
        _temp_local_var_6 = (self.skipped == 0)
    else
        _temp_local_var_6 = 0
    if _temp_local_var_6
    {
        if (global.plot == 20)
        {
            instance_create(0, 0, obj_persistentfadein)
            room_goto(room_castle_front)
        }
        else
            room_goto(PLACE_LOGO)
    }
}
if (self.border == 1)
{
    draw_set_color(0x000000)
    draw_rectangle(-10, -10, 330, 27, 0)
    draw_rectangle(-10, -10, 59, 300, 0)
    draw_rectangle(400, -10, 260, 300, 0)
    draw_rectangle(-10, 400, 330, 138, 0)
}
if (self.chunkfade == 0)
    _temp_local_var_7 = (self.chunkamt > 0)
else
    _temp_local_var_7 = 0
if _temp_local_var_7
    self.chunkamt = (self.chunkamt - self.fadespeed)
if (self.chunkfade == 1)
    _temp_local_var_8 = (self.chunkamt < 1)
else
    _temp_local_var_8 = 0
if _temp_local_var_8
    self.chunkamt = (self.chunkamt + self.fadespeed)
draw_set_color(self.fadecolor)
self.alph = 0
if (self.chunkamt >= 0.25)
    self.alph = 0.25
if (self.chunkamt >= 0.5)
    self.alph = 0.5
if (self.chunkamt >= 0.75)
    self.alph = 0.75
if (self.chunkamt >= 1)
    self.alph = 1
draw_set_alpha(self.alph)
draw_rectangle(-10, -10, 330, 330, 0)
draw_set_alpha(1)
if (self.ingame == 0)
{
    if button1_p()
        _temp_local_var_9 = (self.skipped == 0)
    else
        _temp_local_var_9 = 0
    if _temp_local_var_9
    {
        self.skipped = 1
        self.skiptimer = 0
        self.f = instance_create(0, 0, obj_fadeout)
        self.f.fadespeed = 0.08
        mus_volume(global.currentsong[1], 0, 15)
    }
    if (self.skipped == 1)
        self.skiptimer = (self.skiptimer + 1)
    if (self.skiptimer == 19)
    {
        snd_free(global.currentsong[0])
        global.flag[6] = 0
    }
    if (self.skiptimer == 20)
        room_goto(PLACE_LOGO)
}
