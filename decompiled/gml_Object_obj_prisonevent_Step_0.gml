if (self.con == 1)
{
    self.doorblock = instance_create(640, 360, obj_soliddark)
    with (self.doorblock)
        self.image_xscale = 2
    snd_play(snd_locker)
    instance_create(0, 0, obj_shake)
    __view_set(0, 0, 440)
    with (obj_mainchara)
    {
        self.cutscene = 1
        self.visible = 0
    }
    self.k = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, spr_krisb_defeat)
    self.r = scr_dark_marker(520, 160, spr_ralsei_fell)
    with (self.r)
        self.image_index = 2
    self.irondoor = scr_dark_marker(640, 280, spr_irondoor)
    with (self.irondoor)
        scr_depth()
    self.diamond = scr_dark_marker(640, 360, spr_diamond_overworld)
    with (self.diamond)
        self.depth = 100
    self.con = 2
    self.alarm[4] = 60
}
if (self.con == 2)
    global.interact = 1
if (self.con == 3)
{
    global.typer = 6
    global.fc = 0
    with (self.diamond)
        self.image_speed = 0.25
    global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_29_0")
    global.msg[1] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_30_0")
    global.msg[2] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_31_0")
    self.con = 4
    self.d = instance_create(0, 0, obj_dialoguer)
    self.d.side = 0
}
if ((self.con == 4) && (!d_ex()))
{
    with (self.diamond)
    {
        self.image_speed = 0.5
        self.vspeed = 5
    }
    self.con = 5
    self.kx = self.k.x
    self.ky = self.k.y
    self.rx = self.r.x
    self.ry = self.r.y
    self.moveamt = 0.5
    self.alarm[4] = 30
}
if (self.con == 6)
{
    self.moveamt += 0.1
    self.k.x = (self.kx + random(self.moveamt))
    self.k.y = (self.ky + random(self.moveamt))
    self.r.x = (self.rx + random(self.moveamt))
    self.r.y = (self.ry + random(self.moveamt))
    if (self.moveamt >= 3)
    {
        self.r.x = self.rx
        self.r.y = self.ry
        self.k.x = self.kx
        self.k.y = self.ky
        with (self.k)
            self.sprite_index = spr_krisd_dark
        with (self.r)
            self.sprite_index = spr_ralseid
        snd_play(snd_noise)
        self.con = 7
        self.alarm[4] = 20
    }
}
if (self.con == 8)
{
    with (self.r)
        self.sprite_index = spr_ralseir
    with (self.k)
        self.sprite_index = spr_krisl_dark
    global.fc = 2
    global.fe = 3
    global.typer = 31
    global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_82_0")
    global.msg[1] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_83_0")
    global.msg[2] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_84_0")
    global.msg[3] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_85_0")
    global.msg[4] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_86_0")
    self.con = 8.1
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 8.1) && (!d_ex()))
{
    with (self.r)
        self.sprite_index = spr_ralseid
    self.exc = instance_create((self.r.x + 20), (self.r.y - 20), obj_excblcon)
    self.con = 7.2
    self.alarm[4] = 30
}
if (self.con == 8.2)
{
    with (self.exc)
        instance_destroy()
    with (self.r)
        self.sprite_index = spr_ralseir
    global.fe = 3
    global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_104_0")
    global.msg[1] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_105_0")
    global.msg[2] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_106_0")
    global.msg[3] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_107_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 9
}
if ((self.con == 9) && (!d_ex()))
{
    self.rnpc = instance_create(self.r.x, self.r.y, obj_npc_facing)
    with (self.rnpc)
    {
        self.y += self.sprite_height
        self.sprite_index = spr_ralseid
        self.dtsprite = spr_ralseid
        self.utsprite = spr_ralseiu
        self.rtsprite = spr_ralseir
        self.ltsprite = spr_ralseil
        scr_depth()
    }
    with (self.r)
        instance_destroy()
    with (self.k)
        instance_destroy()
    global.facing = 0
    with (obj_mainchara)
        self.visible = 1
    global.interact = 0
    self.con = 10
}
if ((self.con == 15) && (!d_ex()))
{
    self.remfacing = global.facing
    global.interact = 1
    global.fe = 1
    global.fc = 2
    global.typer = 31
    global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_140_0")
    global.msg[1] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_141_0")
    global.msg[2] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_142_0")
    global.msg[3] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_143_0")
    global.msg[4] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_144_0")
    global.msg[5] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_145_0")
    scr_susface(6, 7)
    global.msg[7] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_147_0")
    global.msg[8] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_148_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 16
}
if (self.con == 16)
{
    global.facing = self.remfacing
    global.interact = 1
}
if ((self.con == 16) && (!d_ex()))
{
    self.r = scr_dark_marker(self.rnpc.x, self.rnpc.y, spr_ralsei_shock_overworld)
    with (self.r)
        scr_depth()
    with (self.rnpc)
        instance_destroy()
    global.facing = 3
    global.interact = 1
    self.exc = instance_create((self.r.x + 20), (self.r.y - 20), obj_excblcon)
    self.con = 17
    self.alarm[4] = 30
}
if (self.con == 18)
{
    with (self.exc)
        instance_destroy()
    with (self.r)
        self.sprite_index = spr_ralseil
    global.fc = 2
    global.fe = 3
    global.typer = 31
    global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_179_0")
    scr_susface(1, 2)
    global.msg[2] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_181_0")
    self.con = 19
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 19) && (!d_ex()))
{
    self.irondoor2 = scr_dark_marker(200, 520, spr_irondoor)
    with (self.irondoor2)
        scr_depth()
    scr_pan(-4, 4, 30)
    self.s = scr_dark_marker(320, 300, spr_susier_dark)
    with (self.s)
        scr_depth()
    self.con = 20
    self.alarm[4] = 30
}
if (self.con == 21)
{
    global.fc = 1
    global.fe = 2
    global.typer = 30
    global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_207_0")
    global.msg[1] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_208_0")
    scr_ralface(2, 3)
    global.msg[3] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_210_0")
    self.con = 22
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 22) && (!d_ex()))
{
    with (self.s)
        self.sprite_index = spr_susiel_dark_unhappy
    scr_pan(-4, 0, 70)
    self.con = 23
    self.alarm[4] = 120
}
if (self.con == 24)
{
    with (self.s)
        self.sprite_index = spr_susier_dark
    global.fc = 1
    global.fe = 0
    global.typer = 30
    global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_229_0")
    global.msg[1] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_232_0")
    scr_ralface(2, 8)
    global.msg[3] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_234_0")
    self.con = 25
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 25) && (!d_ex()))
{
    with (self.s)
        self.sprite_index = spr_susieu_dark
    self.con = 26
    self.alarm[4] = 80
}
if (self.con == 27)
{
    with (self.s)
        self.sprite_index = spr_susier_dark
    global.fc = 1
    global.fe = 5
    global.typer = 30
    global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_252_0")
    global.msg[1] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_253_0")
    global.msg[2] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_254_0")
    global.msg[3] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_255_0")
    scr_ralface(4, 6)
    global.msg[5] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_257_0")
    scr_susface(6, 0)
    global.msg[7] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_259_0")
    global.msg[8] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_260_0")
    global.msg[9] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_261_0")
    global.msg[10] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_262_0")
    scr_ralface(11, "6")
    global.msg[12] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_264_0")
    self.con = 200
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 200) && (!d_ex()))
{
    with (self.s)
        self.sprite_index = spr_susieu_dark
    global.interact = 1
    global.msc = 290
    global.typer = 6
    global.fc = 0
    scr_text(global.msc)
    instance_create(0, 0, obj_dialoguer)
    self.con = 201
    self.tried += 1
}
if ((self.con == 201) && (!d_ex()))
{
    if (obj_suitspuzz.won == 0)
    {
        global.fc = 1
        global.typer = 30
        global.fe = 6
        self.con = 200
        if ((obj_suitspuzz.suit[0] == 3) && ((obj_suitspuzz.suit[1] == 4) && (obj_suitspuzz.suit[2] == 3)))
        {
            if (self.wcon == 1)
            {
                global.fe = 2
                global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_299_0")
                global.msg[1] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_300_0")
                global.msg[2] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_301_0")
                instance_create(0, 0, obj_dialoguer)
                self.wcon = 2
            }
            if (self.wcon == 0)
            {
                global.fe = 2
                global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_309_0")
                global.msg[1] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_310_0")
                global.msg[2] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_311_0")
                instance_create(0, 0, obj_dialoguer)
                self.wcon = 1
            }
        }
        if ((obj_suitspuzz.reset == 1) && (self.pcon == 0))
        {
            self.pcon = 1
            global.fe = 0
            global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_322_0")
            instance_create(0, 0, obj_dialoguer)
        }
        if ((obj_suitspuzz.reset == 2) && (self.pcon == 1))
        {
            self.pcon = 2
            global.fe = 0
            global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_329_0")
            instance_create(0, 0, obj_dialoguer)
        }
        if ((obj_suitspuzz.reset == 3) && (self.pcon == 2))
        {
            self.pcon = 3
            global.fe = 6
            global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_336_0")
            instance_create(0, 0, obj_dialoguer)
        }
        if ((obj_suitspuzz.reset == 4) && (self.pcon == 3))
        {
            self.pcon = 4
            global.fe = 9
            global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_343_0")
            global.msg[1] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_344_0")
            global.msg[2] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_345_0")
            instance_create(0, 0, obj_dialoguer)
        }
        if ((obj_suitspuzz.swap == 1) && ((obj_suitspuzz.suit[0] == 0) && ((self.scon == 0) && (self.pcon == 0))))
        {
            self.scon = 1
            global.fe = 0
            global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_354_0")
            instance_create(0, 0, obj_dialoguer)
        }
    }
    else
    {
        with (self.irondoor2)
            instance_destroy()
        snd_play(snd_impact)
        instance_create(0, 0, obj_shake)
        self.con = 202
        self.alarm[4] = 30
    }
}
if (self.con == 203)
{
    global.typer = 30
    global.fe = 2
    global.fc = 1
    global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_376_0")
    scr_ralface(1, 8)
    global.msg[2] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_378_0")
    scr_susface(3, 1)
    global.msg[4] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_380_0")
    self.con = 204
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 204) && (!d_ex()))
{
    with (self.s)
    {
        self.sprite_index = spr_susiel_dark
        self.image_speed = 0.25
        self.hspeed = -6
    }
    self.con = 205
    self.alarm[4] = 16
}
if (self.con == 206)
{
    with (self.s)
    {
        scr_halt()
        self.sprite_index = spr_susied_dark
        self.image_speed = 0.25
        self.vspeed = 6
    }
    self.con = 207
    self.alarm[4] = 60
}
if (self.con == 208)
{
    scr_pan(6, -2, 60)
    self.con = 209
    self.alarm[4] = 90
}
if (self.con == 210)
{
    with (self.r)
        self.sprite_index = spr_ralseid
    global.msc = 305
    global.fe = 6
    global.fc = 2
    global.typer = 31
    scr_text(global.msc)
    instance_create(0, 0, obj_dialoguer)
    self.con = 228
}
if ((self.con == 228) && (!d_ex()))
{
    self.fade = instance_create(0, 0, obj_fadeout)
    with (self.fade)
        self.fadespeed = 0.02
    self.con = 229
    self.alarm[4] = 70
}
if (self.con == 230)
{
    scr_losechar()
    global.char[0] = 2
    global.entrance = 0
    global.interact = 3
    global.plot = 152
    self.pers = instance_create(0, 0, obj_persistentfadein)
    room_goto(room_cc_prisonlancer)
    self.con = 231
}
if (self.con == 300)
{
    __view_set(0, 0, 440)
    with (obj_mainchara)
    {
        self.cutscene = 1
        self.visible = 0
    }
    obj_mainchara.x = 680
    obj_mainchara.y = 160
    self.k = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, spr_krisd_dark)
    self.r = scr_dark_marker(640, 150, spr_ralseir)
    self.s = scr_dark_marker(660, 500, spr_susieu_dark)
    with (self.r)
        self.image_index = 2
    with (self.r)
        scr_depth()
    with (self.k)
        scr_depth()
    self.irondoor = scr_dark_marker(640, 280, spr_irondoor)
    with (self.irondoor)
        scr_depth()
    self.con = 301
    self.alarm[4] = 20
}
if (self.con == 301)
    global.interact = 1
if (self.con == 302)
{
    global.fc = 2
    global.typer = 31
    global.fe = 6
    global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_481_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 303
}
if ((self.con == 303) && (!d_ex()))
{
    with (self.irondoor)
        instance_destroy()
    snd_play(snd_locker)
    with (self.r)
        self.sprite_index = spr_ralseid
    with (self.k)
        self.sprite_index = spr_krisd_dark
    self.exc = instance_create((self.r.x + 25), (self.y - 40), obj_excblcon)
    self.con = 304
    self.alarm[4] = 30
}
if (self.con == 305)
{
    with (self.exc)
        instance_destroy()
    with (self.s)
    {
        self.vspeed = -6
        self.image_speed = 0.25
    }
    self.con = 306
    self.alarm[4] = 50
}
if (self.con == 307)
{
    with (self.s)
        scr_halt()
    self.con = 308
    self.alarm[4] = 30
}
if (self.con == 309)
{
    global.fc = 1
    global.fe = 0
    global.typer = 30
    global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_521_0")
    scr_ralface(1, 0)
    global.msg[2] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_523_0")
    global.msg[3] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_524_0")
    scr_susface(4, 0)
    global.msg[5] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_526_0")
    self.d = instance_create(0, 0, obj_dialoguer)
    self.con = 310
}
if ((self.con == 310) && (!d_ex()))
{
    with (self.s)
        self.sprite_index = spr_susied_dark_unhappy
    self.con = 311
    self.alarm[4] = 30
}
if (self.con == 312)
{
    global.fc = 0
    global.typer = 6
    global.msg[0] = scr_84_get_lang_string("obj_prisonevent_slash_Step_0_gml_543_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 313
}
if ((self.con == 313) && (!d_ex()))
{
    with (self.s)
    {
        self.image_speed = 0.25
        self.vspeed = 6
    }
    with (self.r)
    {
        self.image_speed = 0.25
        self.vspeed = 6
    }
    with (self.k)
    {
        self.image_speed = 0.25
        self.vspeed = 6
    }
    self.con = 314
    self.alarm[4] = 30
}
if (self.con == 315)
{
    instance_create(0, 0, obj_fadeout)
    self.con = 316
    self.alarm[4] = 30
}
if (self.con == 317)
{
    global.plot = 156
    scr_losechar()
    global.char[0] = 1
    scr_getchar(2)
    scr_getchar(3)
    global.charauto[0] = 0
    global.charauto[1] = 0
    global.charauto[2] = 0
    global.charauto[3] = 0
    self.con = 318
    global.facing = 0
    global.entrance = 1
    global.interact = 3
    instance_create(0, 0, obj_persistentfadein)
    room_goto(room_cc_prisonlancer)
}
