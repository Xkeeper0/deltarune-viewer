if (self.con == 1)
{
    if (obj_mainchara.x >= (self.x - 80))
        _temp_local_var_1 = (global.interact == 0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        global.facing = 2
        with(obj_caterpillarchara)
        {
            self.fun = 1
            self.sprite_index = spr_ralseiu
        }
        global.interact = 1
        global.fc = 1
        global.fe = 9
        global.typer = 30
        global.msg[0] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_16_0"@4975)
        instance_create(0, 0, obj_dialoguer)
        self.con = 2
    }
}
if (self.con == 2)
    _temp_local_var_2 = (d_ex() == 0)
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    self.sprite_index = spr_susied_dark
    instance_create((self.x + (self.sprite_width / 2)), (self.y - 30), obj_excblcon)
    self.con = 3
    self.alarm[4] = 30
}
if (self.con == 4)
{
    global.fe = 0
    global.msg[0] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_35_0"@4976)
    scr_ralface(1, 6)
    global.msg[2] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_37_0"@4977)
    global.msg[3] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_38_0"@4978)
    scr_susface(4, 1)
    global.msg[5] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_40_0"@4979)
    global.msg[6] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_41_0"@4980)
    scr_ralface(7, 8)
    global.msg[8] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_43_0"@4981)
    global.msg[9] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_44_0"@4982)
    scr_susface(10, 1)
    global.msg[11] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_46_0"@4983)
    scr_ralface(12, 1)
    global.msg[13] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_48_0"@4984)
    global.msg[14] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_49_0"@4985)
    global.msg[15] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_50_0"@4986)
    global.msg[16] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_51_0"@4987)
    scr_susface(17, 0)
    global.msg[18] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_53_0"@4988)
    global.msg[19] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_54_0"@4989)
    scr_ralface(20, 8)
    global.msg[21] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_56_0"@4990)
    scr_susface(22, 0)
    global.msg[23] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_58_0"@4991)
    self.con = 3.1
    instance_create(0, 0, obj_dialoguer)
}
if (self.con == 3.1)
    _temp_local_var_3 = (d_ex() == 0)
else
    _temp_local_var_3 = 0
if _temp_local_var_3
{
    self.walkcon = 1
    self.vspeed = 5
    self.image_speed = 0.2
    self.con = 3.2
}
if (self.con == 3.2)
{
    if (self.y >= 200)
    {
        self.sprite_index = spr_susiel_dark
        self.hspeed = -5
        self.con = 3.3
        self.vspeed = 0
    }
}
if (self.con == 3.3)
{
    if instance_exists(obj_caterpillarchara)
    {
        if (self.x <= (obj_caterpillarchara.x - 60))
        {
            self.sprite_index = spr_susier_dark
            self.hspeed = 0
            self.image_speed = 0
            self.image_index = 0
            global.facing = 3
            with(obj_caterpillarchara)
            {
                self.sprite_index = spr_ralseil
            }
            self.con = 3.4
            self.alarm[4] = 30
        }
    }
}
if (self.con == 4.4)
{
    global.fe = 0
    global.msg[0] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_105_0"@4992)
    scr_ralface(1, 8)
    global.msg[2] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_107_0"@4993)
    instance_create(0, 0, obj_dialoguer)
    self.con = 5
}
if (self.con == 7)
{
    global.currentsong[1] = mus_play(global.currentsong[0])
    global.fc = 0
    global.typer = 51
    global.msg[0] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_118_0"@4994)
    self.d = instance_create(0, 0, obj_dialoguer)
    self.d.skippable = 0
    self.con = 8
    self.alarm[4] = 340
}
if (self.con == 6)
{
    global.currentsong[0] = snd_init("fanfare.ogg"@4495)
    self.con = 7
}
if (self.con == 5)
    _temp_local_var_4 = (d_ex() == 0)
else
    _temp_local_var_4 = 0
if _temp_local_var_4
{
    snd_free_all()
    self.con = 6
}
if (self.con == 9)
    _temp_local_var_5 = (d_ex() == 0)
else
    _temp_local_var_5 = 0
if _temp_local_var_5
{
    global.typer = 30
    global.fc = 1
    global.fe = 8
    global.msg[0] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_144_0"@4995)
    self.con = 10
    instance_create(0, 0, obj_dialoguer)
}
if (self.con == 10)
    _temp_local_var_6 = (d_ex() == 0)
else
    _temp_local_var_6 = 0
if _temp_local_var_6
{
    self.walkcon = 1
    self.hspeed = -1
    self.image_speed = 0.1
    self.sprite_index = spr_susiel_dark
    global.currentsong[1] = mus_play(global.currentsong[0])
    snd_pitch(global.currentsong[1], 0.95)
    global.fc = 0
    global.typer = 52
    global.msg[0] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_160_0"@4996)
    self.d = instance_create(0, 0, obj_dialoguer)
    self.d.skippable = 0
    self.con = 12
    self.alarm[4] = 320
}
if (self.walkcon == 1)
    scr_depth()
if (self.con == 13)
    _temp_local_var_7 = (d_ex() == 0)
else
    _temp_local_var_7 = 0
if _temp_local_var_7
{
    snd_free_all()
    scr_losechar()
    scr_getchar(3)
    scr_getchar(2)
    if (global.plot < 37)
        global.plot = 37
    global.facing = 0
    with(obj_caterpillarchara)
    {
        self.fun = 0
    }
    global.interact = 0
    self.con = 14
}
if (self.rcon == 1)
{
    if (obj_mainchara.x >= 80)
        _temp_local_var_8 = (global.interact == 0)
    else
        _temp_local_var_8 = 0
}
else
    _temp_local_var_8 = 0
if _temp_local_var_8
{
    global.interact = 1
    global.typer = 31
    global.fc = 2
    global.fe = 3
    global.msg[0] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_196_0"@4997)
    global.msg[1] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_197_0"@4998)
    global.msg[2] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_198_0"@4999)
    if (global.flag[205] == 0)
    {
        global.msg[0] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_201_0"@5000)
        global.msg[1] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_202_0"@5001)
        global.msg[2] = scr_84_get_lang_string("obj_getsusieevent_slash_Step_0_gml_203_0"@5002)
    }
    self.rcon = 2
    instance_create(0, 0, obj_dialoguer)
}
if (self.rcon == 2)
    _temp_local_var_9 = (d_ex() == 0)
else
    _temp_local_var_9 = 0
if _temp_local_var_9
{
    self.rcon = 3
    global.interact = 0
    if (global.plot < 39)
        global.plot = 39
}
