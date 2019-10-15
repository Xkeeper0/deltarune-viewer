if (self.con == 1)
{
    if (obj_mainchara.x >= self.x)
        _temp_local_var_1 = (global.interact == 0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        global.interact = 1
        self.con = 2
        global.facing = 1
        with(obj_caterpillarchara)
        {
            self.sprite_index = self.rsprite
            self.fun = 1
        }
    }
}
if (self.con == 2)
{
    self.darkfade = scr_marker(-10, -10, spr_pixel_white)
    self.darkfade.image_xscale = 700
    self.darkfade.image_yscale = 400
    self.darkfade.image_alpha = 0
    self.darkfade.depth = 800000
    self.darkfade.image_blend = 0x000000
    self.fade = 0
    self.con = 3
}
if (self.con == 3)
{
    snd_free_all()
    with(obj_caterpillarchara)
    {
        self.image_index = 0
    }
    scr_pan(4, 0, 40)
    self.fade = (self.fade + 0.02)
    self.darkfade.image_alpha = self.fade
    if (self.fade >= 0.6)
    {
        self.con = 4
        self.alarm[4] = 11
    }
}
if (self.con == 5)
{
    global.msg[0] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_45_0"@3995)
    global.typer = 42
    instance_create((__view_get(e__VW.XView, 0) + 120), 50, obj_writer)
    self.con = 6
}
if (self.con == 6)
    _temp_local_var_2 = (~ instance_exists(obj_writer))
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    self.appear = instance_create((__view_get(e__VW.XView, 0) + 420), (__view_get(e__VW.YView, 0) + 160), obj_rurus_appear)
    snd_play(snd_rurus_appear)
    self.con = 14
    self.rurus = scr_dark_marker(self.appear.x, self.appear.y, spr_rurus_idle)
    self.rurus.visible = 0
    self.alarm[4] = 60
}
if (self.con == 15)
{
    with(self.rurus)
    {
        self.visible = 1
    }
    with(self.appear)
    {
        instance_destroy()
    }
    self.con = 16
    self.alarm[4] = 21
}
if (self.con == 16)
{
    with(self.darkfade)
    {
        self.image_alpha = (self.image_alpha - 0.05)
        if (self.image_alpha <= 0)
            self.image_alpha = 0
    }
}
if (self.con == 17)
{
    global.currentsong[0] = snd_init("ruruskaado.ogg"@3998)
    global.currentsong[1] = mus_loop(global.currentsong[0])
    global.fc = 18
    global.fe = 0
    global.typer = 6
    global.msg[0] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_88_0"@3999)
    global.msg[1] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_89_0"@4000)
    global.msg[2] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_90_0"@4001)
    self.d = instance_create(0, 0, obj_dialoguer)
    self.d.side = 1
    self.con = 18
}
if (self.con == 18)
    _temp_local_var_3 = (~ d_ex())
else
    _temp_local_var_3 = 0
if _temp_local_var_3
{
    with(self.rurus)
    {
        self.hspeed = 7
    }
    self.con = 19
    self.alarm[4] = 15
}
if (self.con == 20)
{
    with(self.rurus)
    {
        scr_halt()
    }
    snd_play(snd_rurus_appear)
    self.checkerappear = instance_create((__view_get(e__VW.XView, 0) + 380), (__view_get(e__VW.YView, 0) + 120), obj_rurus_appear)
    with(self.checkerappear)
    {
        self.type = 1
    }
    self.checker = scr_dark_marker(self.checkerappear.x, self.checkerappear.y, spr_checkers_idle)
    with(self.checker)
    {
        self.visible = 0
    }
    self.con = 21
    self.alarm[4] = 60
}
if (self.con == 22)
{
    with(self.checker)
    {
        self.visible = 1
    }
    with(self.checkerappear)
    {
        instance_destroy()
    }
    global.smalarm[0] = 5
    global.smyy[0] = 70
    global.smxx[0] = 170
    global.smdir[0] = 180
    global.smspeed[0] = 10
    global.smtype[0] = 3
    global.smsprite[0] = 7
    global.smcolor[0] = 16777215
    global.smstring[0] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_133_0"@4004)
    global.smalarm[1] = 5
    global.smyy[1] = 70
    global.smxx[1] = 170
    global.smdir[1] = 180
    global.smspeed[1] = 10
    global.smtype[1] = 3
    global.smsprite[1] = 8
    global.smcolor[1] = 16777215
    global.smstring[1] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_143_0"@4005)
    global.msg[0] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_145_0"@4006)
    scr_ralface(1, 3)
    global.msg[2] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_147_0"@4007)
    global.msg[3] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_148_0"@4008)
    global.msg[4] = "%%"@1081
    instance_create(0, 0, obj_dialoguer)
    self.con = 23
}
if (self.con == 23)
    _temp_local_var_4 = (~ d_ex())
else
    _temp_local_var_4 = 0
if _temp_local_var_4
{
    global.typer = 6
    global.fc = 18
    global.fe = 0
    global.msg[0] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_161_0"@4009)
    global.msg[1] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_162_0"@4010)
    instance_create(0, 0, obj_dialoguer)
    self.con = 24
}
if (self.con == 24)
    _temp_local_var_5 = (~ d_ex())
else
    _temp_local_var_5 = 0
if _temp_local_var_5
{
    snd_play(snd_impact)
    instance_create(0, 0, obj_shake)
    with(self.checker)
    {
        self.image_index = 4
    }
    self.con = 25
    self.alarm[4] = 30
}
if (self.con == 26)
{
    global.fc = 2
    global.fe = 3
    global.typer = 31
    global.msg[0] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_181_0"@4011)
    global.msg[1] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_182_0"@4012)
    global.msg[2] = "%%"@1081
    self.con = 27
    instance_create(0, 0, obj_dialoguer)
}
if (self.con == 27)
    _temp_local_var_6 = (~ d_ex())
else
    _temp_local_var_6 = 0
if _temp_local_var_6
{
    global.fc = 18
    global.typer = 6
    global.fe = 0
    global.msg[0] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_194_0"@4013)
    global.msg[1] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_195_0"@4014)
    global.msg[2] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_196_0"@4015)
    instance_create(0, 0, obj_dialoguer)
    self.con = 28
}
if (self.con == 28)
    _temp_local_var_7 = (~ d_ex())
else
    _temp_local_var_7 = 0
if _temp_local_var_7
{
    with(self.rurus)
    {
        self.hspeed = 10
    }
    snd_free_all()
    global.encounterno = 27
    scr_encountersetup(global.encounterno)
    global.flag[9] = 1
    global.batmusic[0] = snd_init("checkers.ogg"@4017)
    global.specialbattle = 3
    instance_create(0, 0, obj_encounterbasic)
    self.depth = 4000
    with(self.checker)
    {
        scr_move_to_point_over_time(global.monstermakex[0], global.monstermakey[0], 20)
    }
    self.con = 29
    self.alarm[4] = 20
}
if (self.con == 30)
{
    with(self.checker)
    {
        self.speed = 0
    }
    self.con = 31
    self.alarm[4] = 5
}
if (self.con == 32)
{
    with(self.checker)
    {
        instance_destroy()
    }
    self.con = 35
    self.alarm[4] = 30
    self.victimer = 0
}
if (self.con == 36)
{
    if (~ instance_exists(obj_battlecontroller))
    {
        self.rurus.x = (__view_get(e__VW.XView, 0) + 660)
        with(self.rurus)
        {
            self.hspeed = -12
        }
        self.con = 37
    }
}
if (self.con == 37)
{
    if (self.rurus.x <= (__view_get(e__VW.XView, 0) + 420))
    {
        with(self.rurus)
        {
            scr_halt()
        }
        self.con = 38
        self.alarm[4] = 20
    }
}
if (self.con == 39)
{
    global.msg[0] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_260_0"@4020)
    global.msg[1] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_261_0"@4021)
    global.fc = 18
    global.typer = 6
    global.fe = 6
    instance_create(0, 0, obj_dialoguer)
    self.con = 39.1
}
if (self.con == 39.1)
    _temp_local_var_8 = (~ d_ex())
else
    _temp_local_var_8 = 0
if _temp_local_var_8
{
    global.currentsong[0] = snd_init("ruruskaado.ogg"@3998)
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 0.9)
    global.fe = 5
    global.msg[0] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_274_0"@4022)
    global.msg[1] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_275_0"@4023)
    global.msg[2] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_276_0"@4024)
    global.msg[3] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_277_0"@4025)
    global.msg[4] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_278_0"@4026)
    global.msg[5] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_279_0"@4027)
    instance_create(0, 0, obj_dialoguer)
    self.con = 40
}
if (self.con == 40)
    _temp_local_var_9 = (~ d_ex())
else
    _temp_local_var_9 = 0
if _temp_local_var_9
{
    snd_free_all()
    self.con = 41
    self.alarm[4] = 30
}
if (self.con == 42)
{
    global.fc = 2
    global.fe = 6
    global.typer = 31
    global.msg[0] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_296_0"@4028)
    instance_create(0, 0, obj_dialoguer)
    self.con = 43
}
if (self.con == 43)
    _temp_local_var_10 = (~ d_ex())
else
    _temp_local_var_10 = 0
if _temp_local_var_10
{
    global.fc = 18
    global.fe = 3
    global.typer = 6
    global.msg[0] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_306_0"@4029)
    instance_create(0, 0, obj_dialoguer)
    self.con = 44
    with(self.rurus)
    {
        self.hspeed = 24
    }
}
if (self.con == 44)
    _temp_local_var_11 = (~ d_ex())
else
    _temp_local_var_11 = 0
if _temp_local_var_11
{
    with(obj_caterpillarchara)
    {
        self.fun = 0
    }
    global.facing = 0
    global.plot = 175
    global.interact = 0
    self.con = 45
    instance_destroy()
}
