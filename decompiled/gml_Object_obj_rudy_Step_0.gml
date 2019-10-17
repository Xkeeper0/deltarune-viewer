if (self.con == 1)
{
    global.interact = 1
    self.con = 2
    self.alarm[4] = 10
}
if (self.con == 2)
    global.interact = 1
if (self.con == 3)
{
    global.typer = 12
    global.fc = 3
    global.fe = 4
    global.msg[0] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_15_0")
    global.msg[1] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_16_0")
    scr_rudface(2, 0)
    global.msg[3] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_18_0")
    global.msg[4] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_19_0")
    scr_noeface(5, 2)
    global.msg[6] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_21_0")
    scr_rudface(7, 7)
    global.msg[8] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_23_0")
    self.con = 4
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 4) && (!d_ex()))
{
    self.sprite_index = spr_rudy_laugh
    snd_play(snd_rudylaugh)
    self.image_speed = 0.25
    self.con = 5
    self.alarm[4] = 30
}
if (self.con == 6)
{
    self.image_index = 0
    snd_stop(snd_rudylaugh)
    self.sprite_index = spr_rudy_cough
    snd_play(snd_rudycough)
    self.con = 7
    self.alarm[4] = 30
}
if (self.con == 8)
{
    global.typer = 12
    global.fc = 3
    global.fe = 4
    self.sprite_index = spr_rudy_l
    global.msg[0] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_53_0")
    scr_rudface(1, 2)
    global.msg[2] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_55_0")
    scr_noeface(3, 4)
    global.msg[4] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_57_0")
    global.msg[5] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_58_0")
    scr_rudface(6, 4)
    global.msg[7] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_60_0")
    global.msg[8] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_61_0")
    scr_noeface(9, 7)
    global.msg[10] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_63_0")
    scr_rudface(11, 7)
    global.msg[12] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_65_0")
    scr_noeface(13, 8)
    global.msg[14] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_67_0")
    global.msg[15] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_68_0")
    global.msg[16] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_69_0")
    scr_rudface(17, 4)
    global.msg[18] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_71_0")
    global.msg[19] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_72_0")
    scr_noeface(20, 3)
    global.msg[21] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_74_0")
    scr_rudface(22, 6)
    global.msg[23] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_76_0")
    scr_noeface(24, 4)
    global.msg[25] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_78_0")
    scr_rudface(26, 7)
    global.msg[27] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_80_0")
    scr_noeface(28, 8)
    global.msg[29] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_82_0")
    scr_rudface(30, 2)
    global.msg[31] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_84_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 9
}
if ((self.con == 9) && (!d_ex()))
{
    with (self.n)
    {
        self.sprite_index = spr_noelle_d
        self.vspeed = 2
        self.image_speed = 0.25
    }
    self.con = 10
}
if (self.con == 10)
{
    if (self.n.y >= 150)
    {
        self.sprite_index = spr_rudy_d
        with (self.n)
        {
            self.sprite_index = spr_noelle_r
            self.hspeed = 2
            self.vspeed = 0
            self.image_speed = 0.25
        }
        self.con = 11
    }
}
if (self.con == 11)
{
    if (self.n.x >= 160)
    {
        with (self.n)
        {
            self.sprite_index = spr_noelle_dt
            self.hspeed = 0
            self.vspeed = 0
            self.image_speed = 0
            self.image_index = 0
        }
        self.con = 12
        self.alarm[4] = 30
    }
}
if (self.con == 13)
{
    global.typer = 12
    global.fc = 3
    global.fe = 4
    global.msg[0] = scr_84_get_lang_string("obj_rudy_slash_Step_0_gml_140_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 14
    self.kcon = 0
}
if ((self.con == 14) && (!d_ex()))
{
    with (self.n)
    {
        self.vspeed = 3
        self.image_speed = 0.25
        self.sprite_index = spr_noelle_d
    }
    self.con = 15
    self.kcon = 1
    self.alarm[4] = 30
}
if (self.con == 15)
{
    with (obj_mainchara)
    {
        if (self.x > 140)
            self.x -= 1
    }
}
if (self.con == 16)
{
    instance_create(self.x, self.y, obj_npc_room)
    global.facing = 0
    global.flag[255] = 1
    global.interact = 0
    instance_destroy()
    self.con = 17
}
