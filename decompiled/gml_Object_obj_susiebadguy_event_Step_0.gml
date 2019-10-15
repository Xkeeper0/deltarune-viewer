if (self.con == 1)
{
    if (obj_mainchara.x >= (self.x - 200))
        _temp_local_var_1 = (global.interact == 0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        snd_free_all()
        global.facing = 1
        with(obj_caterpillarchara)
        {
            self.fun = 1
            if (self.rsprite == 209)
                self.sprite_index = spr_ralseir
        }
        with(obj_mainchara)
        {
            self.cutscene = 1
        }
        global.interact = 1
        self.sprite_index = spr_lancer_lt
        with(self.s)
        {
            self.sprite_index = spr_susiel_dark
        }
        self.exc = instance_create((self.x + 30), (self.y - 20), obj_excblcon)
        self.con = 2
        scr_pan(4, 0, 30)
        self.alarm[4] = 30
    }
}
if (self.con == 3)
{
    global.currentsong[0] = snd_init("lancer.ogg"@4596)
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 1)
    global.typer = 31
    global.fc = 2
    global.fe = 10
    global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_30_0"@4670)
    scr_susface(1, 2)
    global.msg[2] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_32_0"@4671)
    scr_lanface(3, 1)
    global.msg[4] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_34_0"@4672)
    scr_susface(5, 2)
    global.msg[6] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_36_0"@4673)
    scr_lanface(7, 2)
    global.msg[8] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_38_0"@4674)
    scr_susface(9, 4)
    global.msg[10] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_40_0"@4675)
    instance_create(0, 0, obj_dialoguer)
    self.con = 4
}
if (self.con == 4)
    _temp_local_var_2 = (~ d_ex())
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    self.sprite_index = spr_lancer_dt
    snd_play(snd_impact)
    instance_create(0, 0, obj_shake)
    self.con = 5
    self.alarm[4] = 5
}
if (self.con == 6)
{
    global.typer = 32
    global.fc = 5
    global.fe = 2
    global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_60_0"@4676)
    instance_create(0, 0, obj_dialoguer)
    self.con = 7
}
if (self.con == 7)
    _temp_local_var_3 = (~ d_ex())
else
    _temp_local_var_3 = 0
if _temp_local_var_3
{
    with(self.s)
    {
        self.sprite_index = spr_susied_dark
    }
    snd_play(snd_impact)
    instance_create(0, 0, obj_shake)
    self.con = 8
    self.alarm[4] = 5
}
if (self.con == 9)
    _temp_local_var_4 = (~ d_ex())
else
    _temp_local_var_4 = 0
if _temp_local_var_4
{
    global.typer = 30
    global.fc = 1
    global.fe = 2
    global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_79_0"@4677)
    instance_create(0, 0, obj_dialoguer)
    self.con = 10
}
if (self.con == 10)
    _temp_local_var_5 = (~ d_ex())
else
    _temp_local_var_5 = 0
if _temp_local_var_5
{
    self.sprite_index = spr_lancer_rt
    with(self.s)
    {
        self.sprite_index = spr_susiel_dark
    }
    self.con = 11
    self.alarm[4] = 5
}
if (self.con == 12)
{
    global.typer = 30
    global.fc = 1
    global.fe = 3
    global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_97_0"@4678)
    instance_create(0, 0, obj_dialoguer)
    self.con = 13
}
if (self.con == 13)
    _temp_local_var_6 = (~ d_ex())
else
    _temp_local_var_6 = 0
if _temp_local_var_6
{
    snd_play(snd_magicsprinkle)
    self.whitefade = scr_dark_marker(-10, -10, spr_pixel_white)
    with(self.whitefade)
    {
        self.image_alpha = 0
        self.image_xscale = 1000
        self.image_yscale = 1000
        self.depth = -100
    }
    self.wtimer = 0
    self.con = 14
}
if (self.con == 14)
{
    self.wtimer = (self.wtimer + 1)
    if (self.wtimer <= 25)
    {
        with(self.whitefade)
        {
            self.image_alpha = (self.image_alpha + 0.04)
        }
    }
    if (self.wtimer == 26)
    {
        self.sprite_index = spr_lancer_pose
        with(self.s)
        {
            self.sprite_index = spr_susieb_spellready
        }
        with(self.s)
        {
            self.image_xscale = -2
        }
        with(self.s)
        {
            self.image_speed = 0.2
        }
        with(self.s)
        {
            self.x = (self.x + 60)
        }
    }
    if (self.wtimer > 28)
    {
        with(self.whitefade)
        {
            self.image_alpha = (self.image_alpha - 0.04)
        }
    }
    if (self.wtimer >= 60)
    {
        with(self.whitefade)
        {
            instance_destroy()
        }
        self.con = 15
    }
}
if (self.con == 15)
    _temp_local_var_7 = (~ d_ex())
else
    _temp_local_var_7 = 0
if _temp_local_var_7
{
    global.typer = 32
    global.fc = 5
    global.fe = 3
    global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_158_0"@4681)
    if (global.flag[214] == 1)
        global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_161_0"@4682)
    if (global.flag[214] == 2)
        global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_165_0"@4683)
    instance_create(0, 0, obj_dialoguer)
    self.con = 16
}
if (self.con == 16)
    _temp_local_var_8 = (~ d_ex())
else
    _temp_local_var_8 = 0
if _temp_local_var_8
{
    self.alarm[4] = 30
    self.con = 17
}
if (self.con == 18)
{
    snd_free_all()
    global.fc = 2
    global.fe = 8
    global.typer = 31
    global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_185_0"@4684)
    instance_create(0, 0, obj_dialoguer)
    self.con = 19
}
if (self.con == 19)
    _temp_local_var_9 = (~ d_ex())
else
    _temp_local_var_9 = 0
if _temp_local_var_9
{
    with(self.s)
    {
        self.image_speed = 0
        self.image_index = 0
        self.sprite_index = spr_susiel_dark_unhappy
        self.image_xscale = 2
        self.x = (self.x - 60)
    }
    self.sprite_index = spr_lancer_lt_unhappy
    global.typer = 30
    global.fc = 1
    global.fe = 6
    global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_205_0"@4685)
    global.msg[1] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_206_0"@4686)
    global.msg[2] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_207_0"@4687)
    scr_lanface(3, 6)
    global.msg[4] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_209_0"@4688)
    scr_ralface(5, 1)
    global.msg[6] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_211_0"@4689)
    global.msg[7] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_212_0"@4690)
    instance_create(0, 0, obj_dialoguer)
    self.con = 20
}
if (self.con == 20)
    _temp_local_var_10 = (~ d_ex())
else
    _temp_local_var_10 = 0
if _temp_local_var_10
{
    self.sprite_index = spr_lancer_lt
    with(self.s)
    {
        self.sprite_index = spr_susiel_dark
    }
    global.typer = 30
    global.fc = 1
    global.fe = 1
    global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_224_0"@4691)
    scr_lanface(1, 2)
    global.msg[2] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_226_0"@4692)
    scr_susface(3, 2)
    global.msg[4] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_228_0"@4693)
    scr_lanface(5, 2)
    global.msg[6] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_230_0"@4694)
    instance_create(0, 0, obj_dialoguer)
    self.con = 21
}
if (self.con == 21)
    _temp_local_var_11 = (~ d_ex())
else
    _temp_local_var_11 = 0
if _temp_local_var_11
{
    with(self.s)
    {
        self.sprite_index = spr_susier_dark
    }
    self.con = 22
    self.alarm[4] = 30
}
if (self.con == 23)
{
    global.typer = 30
    global.fc = 1
    global.fe = 1
    global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_247_0"@4695)
    instance_create(0, 0, obj_dialoguer)
    self.con = 24
}
if (self.con == 24)
    _temp_local_var_12 = (~ d_ex())
else
    _temp_local_var_12 = 0
if _temp_local_var_12
{
    self.sprite_index = spr_lancer_rt
    self.con = 25
    self.alarm[4] = 30
}
if (self.con == 26)
{
    global.fc = 5
    global.fe = 3
    global.typer = 32
    global.msg[0] = scr_84_get_lang_string("obj_susiebadguy_event_slash_Step_0_gml_265_0"@4696)
    instance_create(0, 0, obj_dialoguer)
    self.con = 27
}
if (self.con == 27)
    _temp_local_var_13 = (~ d_ex())
else
    _temp_local_var_13 = 0
if _temp_local_var_13
{
    self.sprite_index = spr_lancer_dt
    self.vspeed = 16
    with(self.s)
    {
        self.sprite_index = spr_susied_dark
        self.image_speed = 0.5
        self.vspeed = 16
    }
    self.con = 27.1
    self.alarm[4] = 30
}
if (self.con == 28.1)
{
    scr_pan(-4, 0, 30)
    self.con = 28
    self.alarm[4] = 30
}
if (self.con == 29)
{
    global.currentsong[0] = snd_init("forest.ogg"@4697)
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 1)
    global.facing = 0
    with(obj_caterpillarchara)
    {
        self.fun = 0
    }
    with(obj_mainchara)
    {
        self.cutscene = 0
    }
    global.interact = 0
    global.plot = 70
    self.con = 30
}
