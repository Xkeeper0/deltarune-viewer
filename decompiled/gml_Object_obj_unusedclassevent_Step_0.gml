if (self.con == 0)
{
    scr_windowcaption(" ")
    global.facing = 0
    self.con = 1
    self.alarm[4] = 90
}
if (self.con == 2)
{
    global.darkzone = 0
    global.flag[29] = 1
    global.typer = 10
    global.fe = 0
    global.fc = 0
    global.msg[0] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_16_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 3
}
if ((self.con == 3) && (!d_ex()))
{
    snd_play(snd_impact)
    self.con = 4
    self.alarm[4] = 15
}
if (self.con == 5)
{
    snd_play(snd_drive)
    self.con = 6
    self.alarm[4] = 15
}
if (self.con == 7)
{
    snd_play(snd_locker)
    self.con = 8
    self.alarm[4] = 15
}
if (self.con == 9)
{
    snd_play(snd_squeaky)
    self.con = 10
    self.alarm[4] = 15
}
if (self.con == 11)
{
    snd_play(snd_sussurprise)
    global.msg[0] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_52_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 12
    self.alarm[4] = 15
}
if ((self.con == 13) && (!d_ex()))
{
    snd_play(snd_wing)
    self.con = 14
    self.alarm[4] = 15
}
if (self.con == 15)
{
    snd_play(snd_pombark)
    self.con = 16
    self.alarm[4] = 15
}
if (self.con == 17)
{
    snd_play(snd_impact)
    self.con = 18
    self.alarm[4] = 15
}
if (self.con == 19)
{
    scr_windowcaption(scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_81_0"))
    snd_play(snd_noise)
    self.lightsoff = 0
    self.s = scr_marker(146, 70, spr_susied_plain)
    with (self.s)
        self.depth = 100000
    self.con = 24
    self.alarm[4] = 50
}
if (self.con == 25)
{
    global.fc = 1
    global.fe = 0
    global.msg[0] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_94_0")
    global.msg[1] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_95_0")
    global.msg[2] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_96_0")
    self.con = 26
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 26) && (!d_ex()))
{
    with (self.s)
    {
        self.image_speed = 0.1
        self.vspeed = 0.5
    }
    self.con = 27
    self.alarm[4] = 40
}
if (self.con == 28)
{
    with (self.s)
        scr_halt()
    self.con = 29
    self.alarm[4] = 45
    global.fe = 0
}
if (self.con == 30)
{
    with (self.s)
        self.sprite_index = spr_susier_plain
    global.msg[0] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_123_0")
    global.msg[1] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_124_0")
    global.msg[2] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_125_0")
    global.msg[3] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_126_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 31
}
if ((self.con == 31) && (!d_ex()))
{
    self.con = 32
    self.alarm[4] = 60
}
if (self.con == 33)
{
    with (self.s)
        self.sprite_index = spr_susied_plain
    global.fe = 0
    global.msg[0] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_141_0")
    global.msg[1] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_142_0")
    global.msg[2] = scr_84_get_lang_string("obj_unusedclassevent_slash_Step_0_gml_143_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 34
}
if ((self.con == 34) && (!d_ex()))
{
    with (self.s)
    {
        self.vspeed = 2
        self.image_speed = 0.2
    }
    self.con = 35
}
if (self.con == 35)
{
    if (self.s.y >= 140)
    {
        snd_play(snd_doorclose)
        with (self.s)
            self.visible = 0
        self.con = 37
    }
}
if (self.con == 37)
{
    global.interact = 0
    if (global.plot < 250)
        global.plot = 250
    self.con = 38
}
