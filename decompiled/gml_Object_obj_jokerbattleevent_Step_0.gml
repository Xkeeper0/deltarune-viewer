if (self.con == 1)
{
    scr_encountersetup(25)
    self.x = global.monstermakex[0]
    self.y = (global.monstermakey[0] + 100)
    with (obj_mainchara)
        self.visible = 0
    with (obj_caterpillarchara)
        self.visible = 0
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        self.c[self.i] = scr_dark_marker((global.heromakex[self.i] - 100), global.heromakey[self.i], spr_krisr_dark)
        with (self.c[self.i])
        {
            scr_depth()
            self.hspeed = 2
            self.image_speed = 0.2
        }
        if (self.quick == 1)
        {
            with (self.c[self.i])
            {
                self.x += 1
                scr_depth()
                self.hspeed = 5
                self.image_speed = 0.334
            }
        }
    }
    self.k = self.c[0]
    self.s = self.c[1]
    with (self.s)
        self.sprite_index = spr_susier_dark
    self.r = self.c[2]
    with (self.r)
        self.sprite_index = spr_ralseir
    self.con = 2
    self.alarm[4] = 83
    if (self.quick == 1)
        self.alarm[4] = 33
}
if (self.con == 2)
    global.interact = 1
if (self.con == 3)
{
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        with (self.c[self.i])
            scr_halt()
    }
    self.con = 4
    self.alarm[4] = 20
    if (self.quick == 1)
    {
        self.con = 6
        self.alarm[4] = -10
    }
}
if (self.con == 5)
{
    snd_play(snd_joker_laugh1)
    global.typer = 35
    global.fc = 0
    global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_59_0")
    global.msg[1] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_60_0")
    scr_ralface(2, 0)
    global.msg[3] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_62_0")
    scr_noface(4)
    global.msg[5] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_64_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 6
}
if ((self.con == 6) && (!d_ex()))
{
    self.image_speed = 0.5
    snd_play(snd_joker_laugh0)
    self.con = 9
    self.alarm[4] = 10
}
if (self.con == 10)
{
    snd_play(snd_rudebuster_swing)
    self.bulcon = 1
    self.smax = 2
    self.con = 11
    self.alarm[4] = 10
}
if (self.bulcon == 1)
{
    for (self.i = 0; self.i < self.smax; self.i += 1)
    {
        self.sbul[self.i] = scr_dark_marker((self.s.x + 70), (((-self.i) * 100) - 40), spr_joker_scythebody)
        with (self.sbul[self.i])
            self.vspeed = 24
        with (self.sbul[self.i])
            self.image_angle = random(360)
    }
    self.bulcon = 2
}
if (self.bulcon == 2)
{
    self.below = 0
    for (self.i = 0; self.i < self.smax; self.i += 1)
    {
        with (self.sbul[self.i])
        {
            self.image_angle += 24
            self.aft = scr_afterimage()
            with (self.aft)
                self.image_alpha = 0.5
        }
        if (self.sbul[self.i].y >= (__view_get(1, 0) + 580))
            self.below += 1
    }
    if (self.below >= self.smax)
        self.bulcon = 3
}
if (self.con == 12)
{
    with (self.s)
        self.sprite_index = spr_susie_shock_r
    with (self.r)
        self.sprite_index = spr_ralsei_shock_overworld
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        with (self.c[self.i])
        {
            self.hspeed = -10
            self.friction = 1
        }
    }
    self.con = 13
    self.alarm[4] = 45
    if (self.quick == 1)
    {
        self.con = 22
        self.alarm[4] = 40
        snd_free_all()
    }
}
if (self.con == 14)
{
    self.image_speed = 0
    with (self.s)
        self.sprite_index = spr_susier_dark_unhappy
    with (self.r)
        self.sprite_index = spr_ralseir
    global.typer = 30
    global.fe = 0
    global.typer = 35
    global.fc = 0
    global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_140_0")
    scr_susface(1, 0)
    global.msg[2] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_142_0")
    global.msg[3] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_143_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 15.1
}
if ((self.con == 15.1) && (!d_ex()))
{
    with (self.s)
        self.sprite_index = spr_susieb_attack
    with (self.r)
        self.sprite_index = spr_ralseib_attack
    with (self.k)
        self.sprite_index = spr_krisb_attack
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        self.c[self.i].image_index = 0
        self.c[self.i].image_speed = 0.25
    }
    self.con = 16
    self.alarm[4] = 60
    snd_play(snd_laz_c)
}
if (self.con == 16)
{
    if (self.s.image_index >= 5)
        self.s.image_speed = 0
    if (self.k.image_index >= 6)
        self.k.image_speed = 0
    if (self.r.image_index >= 5)
        self.r.image_speed = 0
}
if (self.con == 17)
{
    global.fe = 3
    global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_175_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 18
}
if ((self.con == 18) && (!d_ex()))
{
    self.jlaugh = snd_loop(snd_joker_laugh0)
    self.image_speed = 0.25
    self.con = 19
    self.alarm[4] = 15
}
if (self.con == 20)
{
    global.typer = 35
    global.fc = 0
    global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_192_0")
    global.msg[1] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_193_0")
    self.con = 21
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 21) && (!d_ex()))
{
    snd_free_all()
    snd_stop(self.jlaugh)
    self.con = 22
    self.alarm[4] = 1
}
if (self.con == 23)
{
    obj_mainchara.x = self.k.x
    obj_mainchara.y = self.k.y
    global.cinstance[0].x = self.s.x
    global.cinstance[0].y = self.s.y
    global.cinstance[1].x = self.r.x
    global.cinstance[1].y = self.r.y
    with (global.cinstance[0])
        scr_caterpillar_interpolate()
    with (global.cinstance[1])
        scr_caterpillar_interpolate()
    scr_caterpillar_facing(1)
    with (obj_mainchara)
        self.visible = 1
    with (global.cinstance[0])
        self.visible = 1
    with (global.cinstance[1])
        self.visible = 1
    with (self.k)
        self.visible = 0
    with (self.r)
        self.visible = 0
    with (self.s)
        self.visible = 0
    global.flag[9] = 1
    global.batmusic[0] = snd_init("joker.ogg")
    global.encounterno = 25
    global.specialbattle = 3
    instance_create(0, 0, obj_encounterbasic)
    self.con = 25
    self.bultimer = 0
    self.bulcon = 10
}
if (self.bulcon == 10)
{
    self.image_speed = 0.5
    self.bultimer += 1
    self.aft = scr_afterimage()
    with (self.aft)
        self.image_alpha = 0.5
    self.y -= 16
    self.x += 5
    self.bultimer += 1
    if (self.bultimer >= 10)
        self.bulcon = 11
}
if (self.con == 25)
{
    if instance_exists(obj_battlecontroller)
    {
        self.visible = 0
        with (obj_jokerbg_triangle_real)
            self.on = 1
        if (global.flag[8] == 1)
        {
            with (obj_jokerbg_triangle_real)
                self.on = 0
        }
        self.con = 28
    }
}
if (self.con == 28)
{
    if (!instance_exists(obj_battlecontroller))
    {
        if (global.flag[241] != 6)
            global.flag[241] = 7
        self.con = 29
        self.alarm[4] = 30
    }
}
if (self.con == 30)
{
    with (obj_caterpillarchara)
    {
        if (self.lsprite == spr_susier_dark)
        {
            self.lsprite = spr_susier_dark_unhappy
            self.sprite_index = spr_susier_dark_unhappy
        }
    }
    global.currentsong[0] = snd_init("prejoker.ogg")
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 0.75)
    with (obj_joker_body)
    {
        self.fade = obj_choicer_neo
        self.dancelv = 0
        self.floatsinerspeed = 1
        self.condition = 0
    }
    if (!instance_exists(obj_battlecontroller))
    {
        global.typer = 35
        global.fc = 0
        global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_294_0")
        global.msg[1] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_295_0")
        global.msg[2] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_296_0")
        global.msg[3] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_297_0")
        global.msg[4] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_298_0")
        global.msg[5] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_299_0")
        global.msg[6] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_300_0")
        global.msg[7] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_301_0")
        global.msg[8] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_302_0")
        global.msg[9] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_303_0")
        if (global.flag[241] == 7)
        {
            global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_307_0")
            global.msg[1] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_308_0")
            global.msg[2] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_309_0")
            global.msg[3] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_310_0")
            global.msg[4] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_311_0")
            global.msg[5] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_312_0")
            global.msg[6] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_313_0")
            global.msg[7] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_314_0")
            global.msg[8] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_315_0")
            global.msg[9] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_316_0")
        }
        self.con = 31
        instance_create(0, 0, obj_dialoguer)
    }
}
if ((self.con == 31) && (!d_ex()))
{
    with (obj_joker_body)
    {
        self.condition = 5
        self.timer = 0
    }
    self.con = 32
    self.alarm[4] = 60
}
if (self.con == 33)
{
    snd_play(snd_joker_laugh0)
    global.typer = 35
    global.fc = 0
    if (global.flag[241] == 6)
    {
        scr_weaponget(7)
        if (self.noroom == 0)
            global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_344_0")
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_348_0")
            global.flag[242] = 1
        }
    }
    else
    {
        scr_armorget(7)
        if (self.noroom == 0)
            global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_357_0")
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_361_0")
            global.flag[242] = 2
        }
    }
    self.con = 34
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 34) && (!d_ex()))
{
    self.fade = instance_create(0, 0, obj_fadeout)
    self.fade.fadespeed = 0.02
    self.con = 35
    self.alarm[4] = 60
}
if (self.con == 36)
{
    global.entrance = 2
    global.interact = 3
    global.facing = 3
    instance_create(0, 0, obj_persistentfadein)
    room_goto(room_cc_prison_prejoker)
    self.con = 37
}
