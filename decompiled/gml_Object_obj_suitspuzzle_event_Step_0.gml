if (self.con == 1)
{
    if ((obj_mainchara.x >= 140) && (global.interact == 0))
    {
        self.r = global.cinstance[0]
        with (self.r)
        {
            self.sprite_index = self.rsprite
            self.fun = 1
        }
        global.facing = 1
        global.interact = 1
        global.typer = 30
        global.fc = 1
        global.msg[0] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_16_0")
        scr_lanface(1, 3)
        global.msg[2] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_18_0")
        scr_susface(3, 2)
        global.msg[4] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_20_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 2
    }
}
if ((self.con == 2) && (!d_ex()))
{
    self.exc = instance_create((self.s.x + 30), (self.s.y - 20), obj_excblcon)
    self.con = 3
    with (self.s)
        self.sprite_index = spr_susiel_dark
    self.sprite_index = spr_lancer_lt
    self.alarm[4] = 30
}
if (self.con == 4)
{
    global.typer = 31
    global.fc = 2
    global.fe = 8
    global.msg[0] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_41_0")
    scr_susface(1, 7)
    global.msg[2] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_43_0")
    scr_lanface(3, 6)
    global.msg[4] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_45_0")
    scr_susface(5, 0)
    global.msg[6] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_47_0")
    scr_ralface(7, 6)
    global.msg[8] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_49_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 5
}
if ((self.con == 5) && (!d_ex()))
{
    with (self.r)
        self.sprite_index = spr_ralseiu
    with (self.s)
        self.sprite_index = spr_susieu_dark
    self.sprite_index = spr_lancer_ut
    self.con = 6
    self.alarm[4] = 30
}
if (self.con == 7)
{
    with (self.r)
        self.sprite_index = spr_ralseir
    with (self.s)
        self.sprite_index = spr_susiel_dark
    self.sprite_index = spr_lancer_lt
    global.typer = 31
    global.fc = 2
    global.fe = 0
    global.msg[0] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_71_0")
    scr_susface(1, 0)
    global.msg[2] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_73_0")
    scr_ralface(3, 6)
    global.msg[4] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_75_0")
    scr_susface(5, 0)
    global.msg[6] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_77_0")
    global.msg[7] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_78_0")
    scr_lanface(8, 3)
    global.msg[9] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_80_0")
    scr_susface(10, 2)
    global.msg[11] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_82_0")
    global.msg[12] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_83_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 8
}
if ((self.con == 8) && (!d_ex()))
{
    global.facing = 0
    with (self.r)
        self.fun = 0
    self.visible = 0
    with (self.s)
        self.visible = 0
    self.lnpc = instance_create(self.x, self.y, obj_npc_facing)
    with (self.lnpc)
    {
        self.dtsprite = spr_lancer_dt
        self.rtsprite = spr_lancer_rt
        self.ltsprite = spr_lancer_lt
        self.utsprite = spr_lancer_ut
        self.sprite_index = self.dtsprite
        self.y += 100
    }
    self.snpc = instance_create(self.s.x, self.s.y, obj_npc_facing)
    with (self.snpc)
    {
        self.dtsprite = spr_susiedt_dark
        self.rtsprite = spr_susiert_dark
        self.ltsprite = spr_susielt_dark
        self.utsprite = spr_susieut_dark
        self.sprite_index = self.dtsprite
        self.y += 100
    }
    global.interact = 0
    self.con = 9
}
if ((self.con == 9) && ((obj_mainchara.x < 40) && (global.interact == 0)))
{
    global.facing = 1
    with (obj_mainchara)
        self.x = 32
    global.interact = 1
    global.typer = 30
    global.fc = 1
    global.fe = 0
    if (self.talked == 0)
        global.msg[0] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_133_0")
    else
        global.msg[0] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_137_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 10
}
if ((self.con == 10) && (!d_ex()))
{
    self.talked += 1
    with (obj_mainchara)
        self.x = 32
    global.interact = 0
    self.con = 9
}
if ((self.con == 15) && (global.interact == 0))
{
    if (obj_suitspuzz.won == 1)
    {
        global.facing = 1
        with (global.cinstance[0])
        {
            self.fun = 1
            self.sprite_index = self.rsprite
        }
        snd_play(snd_screenshake)
        instance_create(0, 0, obj_shake)
        global.interact = 1
        with (self.block)
            instance_destroy()
        with (self.spike[0])
            self.image_index = 1
        with (self.spike[1])
            self.image_index = 1
        with (self.spike[2])
            self.image_index = 1
        self.con = 11
        self.alarm[4] = 60
        self.s.visible = 1
        self.visible = 1
        self.sprite_index = spr_lancer_rt
        with (self.s)
            self.sprite_index = spr_susier_dark
        with (self.snpc)
            instance_destroy()
        with (self.lnpc)
            instance_destroy()
    }
}
if (self.con == 12)
{
    with (self.s)
        self.sprite_index = spr_susiel_dark
    self.sprite_index = spr_lancer_lt
    global.typer = 30
    global.fc = 1
    global.fe = 0
    global.msg[0] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_189_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 13
}
if ((self.con == 13) && (!d_ex()))
{
    global.fe = 2
    with (self.s)
    {
        self.sprite_index = spr_susier_dark
        self.image_speed = 0.5
        self.hspeed = 14
    }
    self.sprite_index = spr_lancer_rt
    self.hspeed = 14
    global.msg[0] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_200_0")
    scr_lanface(1, 2)
    global.msg[2] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_202_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 14
}
if ((self.con == 14) && (!d_ex()))
{
    self.con = 15
    self.alarm[4] = 30
}
if (self.con == 16)
{
    with (self.s)
    {
        self.x = (__view_get(0, 0) + __view_get(2, 0))
        self.sprite_index = spr_susiel_dark
        self.hspeed = -12
    }
    self.hspeed = -12
    self.sprite_index = spr_lancer_lt
    self.x = ((__view_get(0, 0) + __view_get(2, 0)) + 50)
    self.con = 17
}
if (self.con == 17)
{
    if (self.s.x <= 380)
    {
        with (self.s)
            scr_halt()
        scr_halt()
        self.con = 18
        self.alarm[4] = 15
    }
}
if (self.con == 19)
{
    with (self.s)
        self.sprite_index = spr_susieu_dark
    self.sprite_index = spr_lancer_ut
    global.fc = 1
    global.fe = 0
    global.typer = 30
    global.msg[0] = scr_84_get_lang_string("obj_suitspuzzle_event_slash_Step_0_gml_247_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 20
}
if ((self.con == 20) && (!d_ex()))
{
    with (self.s)
    {
        self.sprite_index = spr_susier_dark
        self.image_speed = 0.5
        self.hspeed = 12
    }
    self.sprite_index = spr_lancer_rt
    self.hspeed = 12
    with (self.easel)
        self.hspeed = 12
    self.con = 21
    self.alarm[4] = 30
}
if (self.con == 22)
{
    with (global.cinstance[0])
        self.fun = 0
    global.facing = 0
    global.interact = 0
    global.plot = 72
    self.con = 23
}
