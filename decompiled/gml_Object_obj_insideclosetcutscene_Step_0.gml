if (self.papeshake == 1)
{
    with(obj_fallpaper)
    {
        if (self.vspeed == 0)
        {
            self.x = (self.xstart + random(1))
            self.y = ((self.ystart + 10) + random(1))
        }
    }
}
if (self.papefall == 1)
{
    self.papetimer = (self.papetimer + 1)
    if (self.papetimer >= 3)
    {
        if (self.papei < self.papeno)
        {
            snd_stop(snd_paper_rise)
            snd_play(snd_paper_rise)
            with(self.pape[self.papei])
            {
                self.sprite_index = spr_paperfly
                self.vspeed = 1
                self.image_speed = 0.5
                self.gravity = 0.5
            }
            self.papetimer = 0
            self.papei = (self.papei + 1)
        }
    }
}
if (global.interact == 0)
    _temp_local_var_1 = (obj_mainchara.x <= 70)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    obj_mainchara.x = 71
    global.fe = 7
    global.fc = 1
    global.typer = 10
    self.dex = 1
    global.interact = 1
    global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_45_0"@3634)
    instance_create(0, 0, obj_dialoguer)
}
if (self.dex == 1)
    _temp_local_var_2 = (instance_exists(obj_dialoguer) == 0)
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    global.facing = 1
    global.interact = 0
    self.dex = 0
}
if (self.con == 1.5)
{
    global.interact = 1
    global.fe = 0
    global.fc = 1
    global.typer = 10
    global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_62_0"@3635)
    global.msg[1] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_63_0"@3636)
    global.msg[2] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_64_0"@3637)
    self.con = 2
    instance_create(0, 0, obj_dialoguer)
}
if (self.con == 2)
    _temp_local_var_3 = (instance_exists(obj_dialoguer) == 0)
else
    _temp_local_var_3 = 0
if _temp_local_var_3
{
    self.image_speed = 0.2
    global.interact = 0
    self.hspeed = 3
    self.con = 3
}
if (self.con == 3)
{
    if (obj_mainchara.px >= 3)
        self.hspeed = obj_mainchara.px
    else
        self.hspeed = 3
    if (self.x >= 310)
    {
        scr_halt()
        self.sprite_index = spr_susieu
        self.con = 4
    }
}
if (self.con == 4)
{
    if (obj_mainchara.x >= 270)
        _temp_local_var_4 = (global.interact == 0)
    else
        _temp_local_var_4 = 0
}
else
    _temp_local_var_4 = 0
if _temp_local_var_4
{
    self.sprite_index = spr_susiel
    global.interact = 1
    global.fe = 0
    global.fc = 1
    global.typer = 10
    global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_97_0"@3641)
    global.msg[1] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_98_0"@3642)
    self.con = 5
    instance_create(0, 0, obj_dialoguer)
}
if (self.con == 5)
    _temp_local_var_5 = (instance_exists(obj_dialoguer) == 0)
else
    _temp_local_var_5 = 0
if _temp_local_var_5
{
    self.sprite_index = spr_susier
    self.image_speed = 0.2
    global.interact = 0
    self.hspeed = 3
    self.con = 6
}
if (self.con == 6)
{
    if (obj_mainchara.px >= 3)
        self.hspeed = obj_mainchara.px
    else
        self.hspeed = 3
    if (self.x >= 490)
    {
        scr_halt()
        self.sprite_index = spr_susier
        self.con = 7
    }
}
if (self.con == 7)
{
    if (obj_mainchara.x >= 450)
        _temp_local_var_6 = (global.interact == 0)
    else
        _temp_local_var_6 = 0
}
else
    _temp_local_var_6 = 0
if _temp_local_var_6
{
    self.sprite_index = spr_susiel
    global.interact = 1
    global.fe = 0
    global.fc = 1
    global.typer = 10
    global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_134_0"@3643)
    global.msg[1] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_135_0"@3644)
    global.msg[2] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_136_0"@3645)
    self.con = 8
    instance_create(0, 0, obj_dialoguer)
}
if (self.con == 8)
    _temp_local_var_7 = (instance_exists(obj_dialoguer) == 0)
else
    _temp_local_var_7 = 0
if _temp_local_var_7
{
    self.sprite_index = spr_susier
    self.image_speed = 0.2
    global.interact = 0
    self.hspeed = 3
    self.con = 9
}
if (self.con == 9)
{
    if (obj_mainchara.px >= 3)
        self.hspeed = obj_mainchara.px
    else
        self.hspeed = 3
    if (self.x >= 670)
    {
        scr_halt()
        self.sprite_index = spr_susier
        self.con = 10
    }
}
if (self.con == 10)
{
    if (obj_mainchara.x >= 630)
        _temp_local_var_8 = (global.interact == 0)
    else
        _temp_local_var_8 = 0
}
else
    _temp_local_var_8 = 0
if _temp_local_var_8
{
    self.sprite_index = spr_susiel
    global.interact = 1
    global.fe = 0
    global.fc = 1
    global.typer = 10
    global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_180_0"@3646)
    global.msg[1] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_181_0"@3647)
    global.msg[2] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_182_0"@3648)
    global.msg[3] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_183_0"@3649)
    global.msg[4] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_184_0"@3650)
    global.msg[5] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_185_0"@3651)
    global.msg[6] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_186_0"@3652)
    global.msg[7] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_187_0"@3653)
    self.con = 15
    instance_create(0, 0, obj_dialoguer)
}
if (self.con == 15)
    _temp_local_var_9 = (instance_exists(obj_dialoguer) == 0)
else
    _temp_local_var_9 = 0
if _temp_local_var_9
{
    with(obj_mainchara)
    {
        self.x = (self.x - 140)
        self.fun = 1
        self.sprite_index = spr_krisl
        self.image_speed = 0.2
        self.hspeed = -3
    }
    self.x = (self.x - 140)
    self.hspeed = -3
    self.sprite_index = spr_susiel
    self.image_speed = 0.2
    self.con = 16
    self.alarm[4] = 120
}
if (self.con == 17)
{
    scr_windowcaption(" "@24)
    self.sprite_index = spr_susiel_plain
    scr_halt()
    with(obj_mainchara)
    {
        scr_halt()
    }
    tile_layer_hide(1000000)
    snd_free_all()
    with(obj_fallpaper)
    {
        self.image_blend = 0x808080
    }
    snd_play(snd_locker)
    self.con = 18
    self.alarm[4] = 60
}
if (self.con == 19)
{
    global.fe = 0
    global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_237_0"@3657)
    instance_create(0, 0, obj_dialoguer)
    self.con = 51
}
if (self.con == 51)
    _temp_local_var_10 = (d_ex() == 0)
else
    _temp_local_var_10 = 0
if _temp_local_var_10
{
    self.remxx = self.x
    self.hspeed = -5
    self.image_speed = 0.5
    self.con = 52
    self.alarm[4] = 20
}
if (self.con == 53)
{
    scr_halt()
    self.remsx = self.x
    self.remsy = self.y
    with(obj_mainchara)
    {
        self.remsx = self.x
        self.remsy = self.y
    }
    global.fe = 9
    global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_266_0"@3662)
    global.msg[1] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_267_0"@3663)
    instance_create(0, 0, obj_dialoguer)
    self.con = 54
}
if (self.con == 54)
    _temp_local_var_11 = (d_ex() == 0)
else
    _temp_local_var_11 = 0
if _temp_local_var_11
{
    self.pape_sfx = snd_loop(snd_paper_rumble)
    self.papeshake = 1
    self.con = 55
    self.alarm[4] = 30
}
if (self.con == 56)
{
    global.fe = 0
    global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_284_0"@3666)
    instance_create(0, 0, obj_dialoguer)
    self.con = 57
}
if (self.con == 57)
    _temp_local_var_12 = (d_ex() == 0)
else
    _temp_local_var_12 = 0
if _temp_local_var_12
{
    self.image_speed = 0.2
    self.alarm[4] = 30
    self.con = 58
}
if (self.con == 58)
    self.x = (self.x + 1)
if (self.con == 59)
{
    scr_halt()
    self.con = 60
    self.alarm[4] = 30
}
if (self.con == 61)
{
    global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_312_0"@3667)
    global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_313_0"@3668)
    instance_create(0, 0, obj_dialoguer)
    self.con = 62
}
if (self.con == 62)
    _temp_local_var_13 = (d_ex() == 0)
else
    _temp_local_var_13 = 0
if _temp_local_var_13
{
    snd_stop(self.pape_sfx)
    self.papefall = 1
    self.con = 69
    with(obj_mainchara)
    {
        self.hspeed = 0.8
        self.image_speed = 0.1
        self.cutscene = 1
    }
    self.hspeed = 0.8
    self.image_speed = 0.1
    self.alarm[4] = 80
}
if (instance_exists(obj_dialoguer) == 0)
    _temp_local_var_14 = (self.con == 70)
else
    _temp_local_var_14 = 0
if _temp_local_var_14
{
    self.hspeed = 0
    __view_set(e__VW.Object, 0, -4)
    with(obj_mainchara)
    {
        self.visible = 0
    }
    self.k = scr_marker(obj_mainchara.x, obj_mainchara.y, spr_kris_fall)
    with(self.k)
    {
        self.vspeed = 1
        self.gravity = 0.5
    }
    self.image_speed = 0
    self.image_index = 0
    self.vspeed = 1
    self.gravity = 0.5
    self.sprite_index = spr_susie_fall
    snd_play(snd_sussurprise)
    self.con = 21
    self.alarm[4] = 50
}
if (self.con == 22)
{
    snd_play(snd_closet_fall)
    self.rate = 5
    self.rate_alpha = 1.8
    self.bgdraw = 1
    self.con = 23
    self.alarm[4] = 150
}
if (self.con == 24)
{
    snd_play(snd_closet_impact)
    self.con = 25
    self.alarm[4] = 80
}
if (self.con == 26)
{
    global.currentsong[0] = snd_init("ocean.ogg"@3673)
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 0.9)
    snd_volume(global.currentsong[1], 0.2, 0)
    snd_volume(global.currentsong[1], 1, 200)
    self.con = 29
    self.alarm[4] = 260
}
if (self.con == 31)
{
    global.plot = 10
    scr_become_dark()
    room_goto(room_dark1)
}
if (self.con == 30)
{
    snd_free(global.currentsong[0])
    self.con = 31
}
