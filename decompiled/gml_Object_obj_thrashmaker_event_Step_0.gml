if (self.con == 1)
{
    snd_free_all()
    self.y = 200
    global.interact = 1
    self.ral = scr_dark_marker(-50, global.cinstance[0].y, spr_ralseir)
    self.k = scr_dark_marker(0, obj_mainchara.y, spr_krisr_dark)
    self.c[0] = self.k
    self.c[1] = self.ral
    with (obj_caterpillarchara)
        self.visible = 0
    with (obj_mainchara)
        self.visible = 0
    with (self.ral)
    {
        self.hspeed = 4
        self.image_speed = 0.2
    }
    with (self.k)
    {
        self.hspeed = 4
        self.image_speed = 0.2
    }
    self.con = 2
    self.alarm[4] = 30
}
if (self.con == 2)
    global.interact = 1
if (self.con == 3)
{
    with (obj_marker)
        scr_halt()
    self.con = 4
    self.alarm[4] = 20
}
if (self.con == 5)
{
    global.fc = 0
    global.fe = 0
    global.typer = 32
    global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_57_0")
    scr_ralface(1, 3)
    global.msg[2] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_59_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 5.1
}
if ((self.con == 5.1) && (!d_ex()))
{
    global.currentsong[0] = snd_init("lancer.ogg")
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.6, 1)
    self.sprite_index = spr_lancer_lt_mustache
    global.fc = 5
    global.fe = 13
    global.typer = 32
    global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_74_0")
    scr_ralface(1, 1)
    global.msg[2] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_76_0")
    scr_lanface(3, "E")
    global.msg[4] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_78_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 6
}
if ((self.con == 6) && (!d_ex()))
{
    snd_play(snd_lancerlaugh)
    self.sprite_index = spr_lancer_lt_laugh_mustache
    self.image_speed = 0.25
    self.con = 7
    self.alarm[4] = 50
}
if (self.con == 8)
{
    self.sprite_index = spr_lancer_lt_mustache
    self.image_index = 0
    self.image_speed = 0
    global.fc = 2
    global.typer = 31
    global.fe = 11
    global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_103_0")
    scr_lanface(1, "D")
    global.msg[2] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_105_0")
    scr_ralface(3, "C")
    global.msg[4] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_107_0")
    scr_lanface(5, "E")
    global.msg[6] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_109_0")
    scr_ralface(7, 1)
    global.msg[8] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_111_0")
    global.msg[9] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_112_0")
    global.msg[10] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_113_0")
    scr_lanface(11, "E")
    global.msg[12] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_115_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 8.1
}
if ((self.con == 8.1) && (!d_ex()))
{
    self.easel = scr_dark_marker(280, -80, spr_thrashdesign)
    with (self.easel)
    {
        self.vspeed = 3
        self.gravity = 0.5
        self.depth = 700000
    }
    snd_play(snd_spearrise)
    self.con = 8.2
}
if (self.con == 8.2)
{
    if (self.easel.y >= 155)
    {
        with (self.easel)
        {
            self.speed = 0
            self.gravity = 0
            self.y = 160
        }
        snd_play(snd_impact)
        instance_create(0, 0, obj_shake)
        self.con = 8.3
        self.alarm[4] = 30
    }
}
if ((self.con == 9.3) && (!d_ex()))
{
    with (self.k)
    {
        self.hspeed = 8
        self.sprite_index = spr_krisr_dark
        self.image_speed = 0.25
    }
    with (self.ral)
    {
        self.hspeed = 8
        self.sprite_index = spr_ralseir
        self.image_speed = 0.25
    }
    self.hspeed = -1
    self.con = 10
    self.alarm[4] = 26
}
if (self.con == 11)
{
    with (self.k)
        scr_halt()
    with (self.ral)
        scr_halt()
    with (self.k)
        self.sprite_index = spr_krisu_dark
    with (self.ral)
        self.sprite_index = spr_ralseiu
    scr_halt()
    self.con = 12
    self.alarm[4] = 30
}
if (self.con == 13)
{
    global.typer = 32
    global.fc = 5
    global.fe = 14
    global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_187_0")
    global.msg[1] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_188_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 23
}
if ((self.con == 23) && (!d_ex()))
{
    snd_free_all()
    with (self.ral)
        scr_halt()
    with (self.k)
        scr_halt()
    self.con = 24
    self.alarm[4] = 5
}
if (self.con == 25)
{
    global.currentsong[0] = snd_init("thrashmachine.ogg")
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.6, 1)
    instance_create(0, 0, obj_thrashcontroller)
    self.con = 30
}
if ((self.con == 30) && (!instance_exists(obj_thrashcontroller)))
{
    snd_free_all()
    with (self.ral)
        self.sprite_index = spr_ralseir
    with (self.k)
        self.sprite_index = spr_krisr_dark
    global.typer = 32
    global.fc = 5
    global.fe = 14
    global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_223_0")
    scr_ralface(1, 8)
    global.msg[2] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_225_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 31
}
if ((self.con == 31) && (!d_ex()))
{
    snd_play(snd_noise)
    with (self.bush)
        self.image_index = 1
    self.s = scr_dark_marker((self.bush.x + 88), (self.bush.y + 44), spr_susied_dark)
    with (self.s)
    {
        self.vspeed = 8
        self.image_speed = 0.25
        scr_depth()
    }
    self.bush_debris_obj = scr_dark_marker(self.s.x, self.s.y, spr_susiebushdebris)
    self.bush_debris_obj.depth = (self.s.depth - 20)
    self.bush_debris = 1
    self.hspeed = 8
    self.con = 32
}
if (self.bush_debris == 1)
{
    if (instance_exists(self.s) && instance_exists(self.bush_debris_obj))
    {
        self.bush_debris_obj.x = self.s.x
        self.bush_debris_obj.y = self.s.y
        self.bush_debris_obj.depth = (self.s.depth - 20)
    }
}
if (self.con == 32)
{
    self.move_finished = 0
    if (self.s.y >= 185)
    {
        with (self.s)
        {
            scr_halt()
            self.y = 185
            self.sprite_index = spr_susiel_dark
        }
        self.move_finished += 1
    }
    if (self.x >= 460)
    {
        self.x = 460
        self.speed = 0
        self.move_finished += 1
    }
    if (self.move_finished == 2)
        self.con = 35
}
if (self.con == 33)
{
    with (self.s)
        scr_halt()
    self.con = 34
    self.alarm[4] = 10
}
if (self.con == 35)
{
    global.currentsong[0] = snd_init("lancer.ogg")
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.6, 1)
    global.fc = 1
    global.fe = 2
    global.typer = 30
    global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_299_0")
    global.msg[1] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_300_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 39
}
if ((self.con == 39) && (!d_ex()))
{
    with (self.s)
    {
        scr_depth()
        self.hspeed = -8
        self.image_speed = 0.334
    }
    with (self.k)
        self.hspeed = -8
    with (self.ral)
        self.hspeed = -8
    self.con = 40
    self.alarm[4] = 12
}
if (self.con == 41)
{
    with (self.s)
        scr_halt()
    with (self.k)
        scr_halt()
    with (self.ral)
        scr_halt()
    scr_halt()
    self.s.sprite_index = spr_susieu_dark
    self.con = 123
    self.alarm[4] = 60
}
if (self.con == 124)
{
    self.type = -1
    self.topstat = -1
    self.topstatlevel = 0
    for (self.i = 0; self.i < 6; self.i += 1)
    {
        if ((self.stat[self.i] == self.topstatlevel) && (self.topstatlevel >= 2))
            self.type = 7
        if (self.stat[self.i] > self.topstatlevel)
        {
            self.topstat = self.i
            self.topstatlevel = self.stat[self.i]
        }
    }
    self.type = self.topstat
    if (self.type == 7)
        self.type = -1
    if (self.topstatlevel == 0)
        self.type = 6
    self.con = 128
    global.typer = 30
    global.fc = 1
    global.fe = 4
    global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_359_0")
    if (self.type == -1)
        global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_363_0")
    if (self.type == 0)
        global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_367_0")
    if (self.type == 1)
        global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_371_0")
    if (self.type == 2)
        global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_375_0")
    if (self.type == 3)
    {
        global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_379_0")
        global.msg[1] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_380_0")
        global.msg[2] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_381_0")
        global.msg[3] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_382_0")
        scr_ralface(4, 6)
        global.msg[5] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_384_0")
    }
    if (self.type == 4)
        global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_388_0")
    if (self.type == 5)
    {
        global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_392_0")
        global.msg[1] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_393_0")
    }
    if (self.type == 6)
    {
        with (self.s)
            self.image_speed = 0
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_401_0")
        global.msg[1] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_402_0")
        global.msg[2] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_403_0")
        global.msg[3] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_404_0")
        self.con = 126
    }
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 126) && (!d_ex()))
{
    with (self.s)
        scr_halt()
    with (self.s)
        self.sprite_index = spr_susieu_dark
    self.con = 127
    self.alarm[4] = 60
}
if ((self.con == 128) && (!d_ex()))
{
    with (self.s)
        self.sprite_index = spr_susier_dark
    global.typer = 30
    global.fc = 1
    global.fe = 2
    global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_427_0")
    scr_lanface(1, "D")
    global.msg[2] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_429_0")
    global.msg[3] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_430_0")
    if (self.type == 6)
    {
        with (self.s)
            self.sprite_index = spr_susiel_dark_unhappy
        global.fe = 6
        global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_435_0")
        scr_lanface(1, "D")
        global.msg[2] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_437_0")
        scr_susface(3, 2)
        global.msg[4] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_439_0")
        scr_lanface(5, "E")
        global.msg[6] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_441_0")
        global.msg[7] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_442_0")
    }
    instance_create(0, 0, obj_dialoguer)
    self.con = 49
}
if ((self.con == 49) && (!d_ex()))
{
    with (self.s)
    {
        self.sprite_index = spr_susier_dark
        self.hspeed = 12
        self.image_speed = 0.334
    }
    with (self.easel)
        self.hspeed = 12
    self.hspeed = 12
    self.con = 50
    snd_volume(global.currentsong[1], 0, 30)
    self.alarm[4] = 60
}
if (self.con == 51)
{
    snd_free_all()
    global.typer = 31
    global.fe = 0
    global.fc = 2
    global.msg[0] = scr_84_get_lang_string("obj_thrashmaker_event_slash_Step_0_gml_465_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 52
}
if ((self.con == 52) && (!d_ex()))
{
    with (self.ral)
        self.sprite_index = spr_ralseir
    with (self.k)
        self.sprite_index = spr_krisr_dark
    self.con = 54
    self.alarm[4] = 5
}
if (self.con == 55)
{
    self.r = self.ral
    obj_mainchara.x = self.k.x
    obj_mainchara.y = self.k.y
    with (obj_mainchara)
        self.visible = 1
    scr_unmarkify_caterpillar()
    scr_caterpillar_facing(1)
    global.facing = 0
    with (self.ral)
        instance_destroy()
    with (self.k)
        instance_destroy()
    with (self.s)
        instance_destroy()
    event_user(1)
    scr_tempsave()
    self.con = 56
    global.flag[226] = 1
    global.interact = 0
    instance_destroy()
}
