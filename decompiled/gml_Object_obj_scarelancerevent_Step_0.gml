if (self.con == 1)
{
    if ((obj_mainchara.x >= self.tx) && (global.interact == 0))
    {
        global.interact = 1
        global.facing = 1
        with (obj_caterpillarchara)
            self.visible = 0
        self.s = scr_dark_marker(global.cinstance[1].x, global.cinstance[1].y, spr_susier_dark)
        self.r = scr_dark_marker(global.cinstance[0].x, global.cinstance[0].y, spr_ralseir)
        self.k = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, spr_krisr_dark)
        with (obj_mainchara)
            self.visible = 0
        with (self.s)
        {
            scr_depth()
            scr_move_to_point_over_time((obj_mainchara.x - 120), ((obj_mainchara.y + obj_mainchara.sprite_height) - self.sprite_height), 15)
        }
        with (self.r)
        {
            scr_depth()
            scr_move_to_point_over_time((obj_mainchara.x - 60), ((obj_mainchara.y + obj_mainchara.sprite_height) - self.sprite_height), 15)
        }
        with (self.k)
            scr_depth()
        self.con = 2
        self.alarm[4] = 30
        instance_create((self.x + 20), (self.y - 10), obj_excblcon)
        self.sprite_index = spr_lancer_lt
        snd_free_all()
    }
}
if (self.con == 3)
{
    self.con = 4
    global.currentsong[0] = snd_init("lancer.ogg")
    self.alarm[4] = 15
}
if (self.con == 5)
{
    global.currentsong[1] = mus_loop(global.currentsong[0])
    global.fe = 3
    global.fc = 5
    global.typer = 32
    global.msg[0] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_49_0")
    global.msg[1] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_50_0")
    global.msg[2] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_51_0")
    global.msg[3] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_52_0")
    global.msg[4] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_53_0")
    global.msg[5] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_54_0")
    self.d = instance_create(0, 0, obj_dialoguer)
    self.d.side = 0
    self.con = 6
}
if ((self.con == 6) && (d_ex() == 0))
{
    snd_free_all()
    global.fc = 1
    global.fe = 0
    global.typer = 30
    global.msg[0] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_66_0")
    global.msg[1] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_67_0")
    global.msg[2] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_68_0")
    scr_lanface(3, 6)
    global.msg[4] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_70_0")
    global.msg[5] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_71_0")
    scr_susface(6, 1)
    global.msg[7] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_73_0")
    scr_lanface(8, 7)
    global.msg[9] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_75_0")
    scr_susface(10, 2)
    global.msg[11] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_77_0")
    self.con = 7
    self.d = instance_create(0, 0, obj_dialoguer)
    self.d.side = 0
}
if ((self.con == 7) && (d_ex() == 0))
{
    self.oy = obj_mainchara.y
    obj_mainchara.cutscene = 1
    scr_pan(2, 0, 60)
    global.currentsong[0] = snd_init("s_neo.ogg")
    with (self.s)
    {
        self.depth = 100
        self.image_speed = 0.2
        self.hspeed = 2
    }
    self.con = 8
}
if (self.con == 8)
{
    if (abs((self.s.x - (self.r.x - 20))) < 6)
    {
        with (self.r)
        {
            self.sprite_index = spr_ralseid
            self.y -= 1
        }
    }
    if (abs((self.s.x - (obj_mainchara.x - 20))) < 6)
    {
        with (self.k)
        {
            self.sprite_index = spr_krisd_dark
            self.y -= 1
        }
    }
    if (self.s.x > (obj_mainchara.x + 60))
    {
        with (self.s)
            scr_halt()
        self.con = 9
        global.currentsong[1] = mus_loop(global.currentsong[0])
    }
}
if (self.con == 9)
{
    global.facing = 1
    with (self.r)
        self.sprite_index = spr_ralseir
    with (self.k)
        self.sprite_index = spr_krisr_dark
    global.fe = 2
    global.msg[0] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_134_0")
    scr_lanface(1, 4)
    global.msg[2] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_136_0")
    scr_susface(3, 0)
    global.msg[4] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_138_0")
    global.msg[5] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_139_0")
    global.msg[6] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_140_0")
    self.con = 10
    self.d = instance_create(0, 0, obj_dialoguer)
    self.d.side = 0
}
if ((self.con == 10) && (d_ex() == 0))
{
    with (self.s)
    {
        self.hspeed = 1
        self.image_speed = 0.1
    }
    self.con = 11
    self.alarm[4] = 20
}
if (self.con == 12)
{
    with (self.s)
        scr_halt()
    global.fe = 2
    global.msg[0] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_163_0")
    scr_lanface(1, 5)
    global.msg[2] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_165_0")
    scr_susface(3, 1)
    global.msg[4] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_167_0")
    self.con = 13
    self.d = instance_create(0, 0, obj_dialoguer)
    self.d.side = 0
}
if ((self.con == 13) && (d_ex() == 0))
{
    with (self.s)
    {
        self.hspeed = 2
        self.vspeed = ((((obj_scarelancerevent.y - self.y) + obj_scarelancerevent.sprite_height) - self.sprite_height) / 30)
        self.image_speed = 0.2
    }
    self.hspeed = 1
    self.con = 15
    self.alarm[4] = 30
}
if (self.con == 16)
{
    with (self.s)
        scr_halt()
    self.visible = 0
    with (self.s)
        self.sprite_index = spr_susie_grablancer
    self.hspeed = 0
    self.con = 16.1
    self.alarm[4] = 30
}
if (self.con == 17.1)
{
    self.s.image_index += 0.25
    if (self.s.image_index == 1)
        snd_play(snd_noise)
    if (self.s.image_index >= 3)
    {
        self.con = 17
        self.alarm[4] = 30
    }
}
if (self.con == 18)
{
    self.visible = 0
    global.fe = 3
    global.msg[0] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_215_0")
    self.con = 19
    self.d = instance_create(0, 0, obj_dialoguer)
    self.d.side = 0
}
if ((self.con == 19) && (d_ex() == 0))
{
    self.s.image_index += 0.25
    if (self.s.image_index >= 7)
        self.con = 20
    self.alarm[4] = 30
}
if (self.con == 21)
{
    global.msg[0] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_234_0")
    global.msg[1] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_235_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 22
}
if ((self.con == 22) && (d_ex() == 0))
{
    with (self.s)
    {
        self.sprite_index = spr_susie_laughlancer
        self.image_speed = 0.25
        self.image_index = 0
    }
    global.msg[0] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_249_0")
    self.d = instance_create(0, 0, obj_dialoguer)
    self.d.skippable = 0
    self.d.skip = 0
    self.con = 23
}
if ((self.con == 23) && (d_ex() == 0))
{
    self.con = 26
    self.alarm[4] = 30
}
if ((self.con == 27) && (d_ex() == 0))
{
    snd_free_all()
    with (self.s)
        self.sprite_index = spr_susie_finelancer
    global.fe = 3
    global.fc = 5
    global.typer = 32
    global.msg[0] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_270_0")
    global.msg[1] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_271_0")
    scr_susface(2, "A")
    global.msg[3] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_273_0")
    scr_lanface(4, 3)
    global.msg[5] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_275_0")
    global.msg[6] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_276_0")
    scr_susface(7, 7)
    global.msg[8] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_278_0")
    scr_lanface(9, 2)
    global.msg[10] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_280_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 28
    global.encounterno = 8
    scr_encountersetup(global.encounterno)
}
if ((self.con == 28) && (d_ex() == 0))
{
    instance_create((self.s.x + 20), (self.s.y - 10), obj_excblcon)
    with (self.s)
    {
        self.sprite_index = spr_susier_dark
        self.image_index = 0
        self.image_speed = 0
    }
    self.visible = 1
    self.y -= 14
    snd_play(snd_noise)
    self.hspeed = 8
    self.vspeed = 2
    self.con = 29
    self.alarm[4] = 5
}
if (self.con == 30)
{
    self.hspeed = 0
    self.vspeed = 0
    self.con = 30.1
    self.alarm[4] = 10
}
if (self.con == 31.1)
{
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        self.cc[self.i] = scr_dark_marker((__view_get(0, 0) + 700), (self.y - 20), spr_jigsawry_idle)
        with (self.cc[self.i])
        {
            scr_move_to_point_over_time((global.monstermakex[0] + 60), self.y, 30)
            self.depth = 50000
        }
    }
    self.con = 31
    self.alarm[4] = 30
}
if (self.con == 32)
{
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        with (self.cc[self.i])
            self.hspeed = 0
    }
    global.msg[0] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_328_0")
    global.msg[1] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_329_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 33
}
if ((self.con == 33) && (d_ex() == 0))
{
    self.hspeed = 16
    global.fe = 3
    global.msg[0] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_340_0")
    self.con = 34
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 34) && (d_ex() == 0))
{
    scr_pan_to_obj(obj_mainchara, 20)
    self.con = 35
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        with (self.cc[self.i])
            self.hspeed = -4
    }
    with (self.k)
        scr_move_to_point_over_time(obj_mainchara.x, obj_mainchara.y, 20)
    with (self.s)
        scr_move_to_point_over_time(global.cinstance[1].x, global.cinstance[1].y, 20)
    with (self.r)
        scr_move_to_point_over_time(global.cinstance[0].x, global.cinstance[0].y, 20)
    self.alarm[4] = 30
}
if (self.con == 36)
{
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        with (self.cc[self.i])
        {
            self.depth = 0
            self.hspeed = 0
        }
    }
    with (obj_caterpillarchara)
        self.visible = 1
    with (obj_mainchara)
        self.visible = 1
    with (self.s)
        instance_destroy()
    with (self.r)
        instance_destroy()
    with (self.k)
        instance_destroy()
    global.fe = 0
    global.fc = 1
    global.typer = 30
    global.msg[0] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_374_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 37
}
if ((self.con == 37) && (d_ex() == 0))
{
    global.currentsong[0] = snd_init("field_of_hopes.ogg")
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 1)
    snd_pause(global.currentsong[1])
    instance_create(0, 0, obj_battleback)
    global.encounterno = 22
    scr_encountersetup(global.encounterno)
    global.specialbattle = 0
    global.flag[9] = 1
    global.batmusic[0] = snd_init("battle.ogg")
    instance_create(0, 0, obj_encounterbasic)
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        if instance_exists(self.cc[self.i])
        {
            self.cc[self.i].i = self.i
            with (self.cc[self.i])
                scr_move_to_point_over_time(global.monstermakex[self.i], global.monstermakey[self.i], 25)
        }
    }
    self.con = 38
    if (global.plot < 45)
        global.plot = 45
    self.alarm[4] = 25
}
if (self.con == 39)
{
    with (self.cc[0])
        self.visible = 0
    with (self.cc[1])
        self.visible = 0
    with (self.cc[2])
        self.visible = 0
    self.con = 40
    self.alarm[4] = 15
}
