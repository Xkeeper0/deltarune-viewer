if (self.con == 1)
{
    if ((obj_mainchara.x >= (self.x - 140)) && (global.interact == 0))
    {
        snd_free_all()
        global.facing = 1
        global.interact = 1
        self.sprite_index = spr_lancer_lt
        self.exc = instance_create((self.x + 40), (self.y - 20), obj_excblcon)
        scr_caterpillar_facing(global.facing)
        self.con = 2
        self.alarm[4] = 30
    }
}
if (self.con == 3)
{
    global.fe = 6
    global.fc = 5
    global.typer = 32
    global.msg[0] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_22_0")
    global.msg[1] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_23_0")
    scr_ralface(2, 6)
    global.msg[3] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_25_0")
    scr_susface(4, 0)
    global.msg[5] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_27_0")
    global.msg[6] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_28_0")
    self.name = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_29_0")
    if (global.flag[214] == 1)
        self.name = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_30_0")
    if (global.flag[214] == 2)
        self.name = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_31_0")
    if (global.flag[214] == 3)
        self.name = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_32_0")
    scr_lanface(7, 3)
    global.msg[8] = scr_84_get_subst_string(scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_34_0"), self.name)
    global.msg[9] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_35_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 4
}
if ((self.con == 4) && (!d_ex()))
{
    self.sprite_index = spr_lancer_rt_unhappy
    self.hspeed = 4
    self.con = 5
    self.alarm[4] = 10
}
if (self.con == 5)
{
    self.hspeed = 0
    self.con = 6
    self.alarm[4] = 20
}
if (self.con == 7)
{
    global.fe = 7
    global.msg[0] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_59_0")
    global.msg[1] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_60_0")
    global.msg[2] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_61_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 8
}
if ((self.con == 8) && (!d_ex()))
{
    self.con = 9
    self.alarm[4] = 20
}
if (self.con == 10)
{
    global.typer = 30
    global.fe = 12
    global.fc = 1
    global.msg[0] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_77_0")
    global.msg[1] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_78_0")
    global.msg[2] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_79_0")
    global.msg[3] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_80_0")
    self.con = 11
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 11) && (!d_ex()))
{
    self.sprite_index = spr_lancer_lt
    self.hspeed = -8
    self.con = 12
    self.alarm[4] = 10
}
if (self.con == 13)
{
    scr_halt()
    self.con = 14
    self.alarm[4] = 15
}
if (self.con == 15)
{
    global.fc = 5
    global.fe = 6
    global.msg[0] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_104_0")
    scr_susface(1, 2)
    global.msg[2] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_106_0")
    scr_lanface(3, 3)
    global.msg[4] = scr_84_get_subst_string(scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_108_0"), self.name)
    global.msg[5] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_109_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 16
}
if ((self.con == 16) && (!d_ex()))
{
    self.sprite_index = spr_lancer_dt
    self.con = 17
    self.alarm[4] = 60
}
if (self.con == 18)
{
    self.sprite_index = spr_lancer_lt
    global.fe = 3
    global.msg[0] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_125_0")
    scr_susface(1, 2)
    global.msg[2] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_127_0")
    scr_ralface(3, 3)
    global.msg[4] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_129_0")
    global.msg[5] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_130_0")
    scr_lanface(6, 8)
    global.msg[7] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_132_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 19
    global.currentsong[0] = snd_init("fanfare.ogg")
}
if ((self.con == 19) && (!d_ex()))
{
    global.currentsong[1] = mus_play(global.currentsong[0])
    global.fc = 0
    global.typer = 51
    global.msg[0] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_144_0")
    self.d = instance_create(0, 0, obj_dialoguer)
    self.d.skippable = 0
    self.con = 20
    self.alarm[4] = 120
}
if (self.con == 21)
{
    snd_free_all()
    with (obj_dialoguer)
        instance_destroy()
    with (obj_writer)
        instance_destroy()
    global.typer = 30
    global.fe = 8
    global.fc = 1
    global.msg[0] = scr_84_get_lang_string("obj_thrashafter_event_slash_Step_0_gml_159_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 22
}
if ((self.con == 22) && (!d_ex()))
{
    self.sprite_index = spr_lancer_dt
    self.vspeed = -8
    self.con = 24
    self.alarm[4] = 10
}
if ((self.con == 25) && (!d_ex()))
{
    self.npc = instance_create(self.x, self.y, obj_npc_room)
    self.npc.sprite_index = spr_lancer_dt
    self.con = 26
    global.interact = 0
    global.flag[229] = 1
    instance_destroy()
}
