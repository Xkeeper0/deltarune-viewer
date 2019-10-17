if (self.mcon == 3)
{
    global.currentsong[0] = snd_init("basement.ogg")
    global.currentsong[1] = mus_loop(global.currentsong[0])
    self.mcon = 4
}
if (self.mcon == 2)
{
    snd_free_all()
    self.mcon = 3
}
if (self.mcon == 1)
    self.mcon = 2
if (self.con == 1)
{
    self.diamond = scr_dark_marker((self.x + 80), (self.y - 47), spr_diamond_knight_overworld)
    self.puzzwall = scr_dark_marker(1000, 0, spr_jailwall)
    __view_set(0, 0, 200)
    global.interact = 1
    self.image_speed = 0
    with (obj_mainchara)
        self.visible = 0
    with (obj_mainchara)
        self.cutscene = 1
    global.encounterno = 20
    scr_encountersetup(global.encounterno)
    self.s = scr_dark_marker(500, (__view_get(1, 0) - 20), spr_susied_dark_unhappy)
    with (self.s)
    {
        scr_depth()
        self.vspeed = 5
        self.image_speed = 0.25
    }
    self.con = 2
}
if (self.con == 2)
{
    global.interact = 1
    if (self.s.y >= (global.heromakey[0] - 4))
    {
        with (self.s)
        {
            scr_halt()
            self.y = global.heromakey[0]
        }
        self.con = 3
        self.alarm[4] = 30
    }
}
if (self.con == 4)
{
    global.fc = 1
    global.typer = 30
    global.fe = 0
    global.msc = 310
    scr_text(global.msc)
    instance_create(0, 0, obj_dialoguer)
    self.con = 150
}
if (self.con == 150)
{
    if (global.msc == 311)
    {
        with (self.s)
            self.sprite_index = spr_susieu_dark
    }
}
if ((self.con == 150) && (!d_ex()))
{
    with (self.s)
        self.sprite_index = spr_susiel_dark_unhappy
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_79_0")
    self.con = 151
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 151) && (!d_ex()))
{
    scr_pan(-5, 0, 30)
    with (self.s)
    {
        self.hspeed = -5
        self.image_speed = 0.25
    }
    self.con = 152
    self.alarm[4] = 30
}
if (self.con == 153)
{
    with (self.s)
        scr_halt()
    self.con = 154
    self.alarm[4] = 30
}
if (self.con == 155)
{
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_105_0")
    self.con = 160
    instance_create(0, 0, obj_dialoguer)
    self.rep = 0
}
if ((self.con == 160) && (!d_ex()))
{
    with (self.s)
        self.sprite_index = spr_susier_dark_unhappy
    self.exc = instance_create((self.s.x + 20), (self.s.y - 20), obj_excblcon)
    self.con = 161
}
if (self.con == 162)
    self.con = 163
if (self.con == 161)
{
    self.rep += 1
    snd_play(snd_txtlan)
    self.con = 162
}
if (self.con == 163)
{
    if (self.rep <= 20)
        self.con = 161
    else
    {
        self.con = 164
        with (self.exc)
            instance_destroy()
    }
}
if (self.con == 164)
{
    global.fe = 9
    global.fc = 1
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_147_0")
    self.con = 165
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 165) && (!d_ex()))
{
    scr_pan(10, 0, 50)
    with (self.s)
    {
        self.sprite_index = spr_susier_dark_unhappy
        self.image_speed = 0.25
        self.hspeed = 10
    }
    self.con = 166
    self.alarm[4] = 50
}
if (self.con == 167)
{
    with (self.s)
        scr_halt()
    self.con = 168
    self.alarm[4] = 30
}
if (self.con == 169)
{
    with (self.s)
        self.sprite_index = spr_susieu_dark
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_175_0")
    self.con = 170
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 170) && (!d_ex()))
{
    with (self.s)
        self.sprite_index = spr_susiel_dark_unhappy
    self.con = 171
    self.alarm[4] = 15
}
if (self.con == 172)
{
    global.fe = 0
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_190_0")
    self.con = 174
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 174) && (!d_ex()))
{
    global.typer = 32
    global.fc = 0
    with (self.s)
        self.sprite_index = spr_susier_dark_unhappy
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_200_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 175
}
if ((self.con == 175) && (!d_ex()))
{
    global.fc = 1
    global.typer = 30
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_209_0")
    self.con = 176
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 176) && (!d_ex()))
{
    self.con = 177
    self.alarm[4] = 30
}
if (self.con == 178)
{
    with (self.s)
        self.sprite_index = spr_susieu_dark
    self.con = 179
    self.alarm[4] = 30
}
if (self.con == 180)
{
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_232_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 181
}
if ((self.con == 181) && (!d_ex()))
{
    self.con = 182
    self.alarm[4] = 20
}
if (self.con == 183)
{
    snd_play(snd_noise)
    with (self.puzz1)
        event_user(2)
    self.con = 184
    self.alarm[4] = 60
}
if (self.con == 185)
{
    snd_play(snd_noise)
    with (self.puzz1)
        event_user(3)
    self.con = 186
    self.alarm[4] = 40
}
if (self.con == 187)
{
    snd_play(snd_noise)
    with (self.puzz1)
        event_user(2)
    self.con = 188
    self.alarm[4] = 5
}
if (self.con == 189)
{
    snd_free_all()
    instance_create(0, 0, obj_shake)
    snd_play(snd_locker)
    with (self.puzzwall)
        instance_destroy()
    with (self.s)
        self.sprite_index = spr_susier_dark
    self.con = 5
}
if ((self.con == 5) && (!d_ex()))
{
    with (self.s)
        self.sprite_index = spr_susier_dark
    self.exc = instance_create((self.s.x + 20), (self.s.y - 20), obj_excblcon)
    self.con = 6
    self.alarm[4] = 30
}
if (self.con == 7)
{
    with (self.exc)
        instance_destroy()
    with (self.s)
    {
        self.hspeed = 6
        self.image_speed = 0.25
    }
    self.y = global.monstermakey[0]
    self.sprite_index = spr_lancer_rt_unhappy
    self.con = 8
}
if (self.con == 8)
{
    scr_encountersetup(global.encounterno)
    __view_set(0, 0, (__view_get(0, 0) + 10))
    if (self.x <= (global.monstermakex[0] + 5))
    {
        self.x = global.monstermakex[0]
        self.con = 11
        with (self.s)
            scr_halt()
    }
}
if (self.con == 11)
{
    with (self.s)
        self.sprite_index = spr_susier_dark_unhappy
    scr_encountersetup(global.encounterno)
    global.fc = 5
    global.fe = 6
    global.typer = 32
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_330_0")
    global.msg[1] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_331_0")
    global.msg[2] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_332_0")
    scr_susface(3, 0)
    global.msg[4] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_334_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 12
}
if ((self.con == 12) && (!d_ex()))
{
    with (self.diamond)
        self.hspeed = 8
    self.sprite_index = spr_lancer_battle_hurt
    self.exc = instance_create((self.x + 20), (self.y - 20), obj_excblcon)
    self.con = 13
    self.alarm[4] = 30
}
if (self.con == 14)
{
    with (self.exc)
        instance_destroy()
    global.typer = 32
    global.fe = 12
    global.fc = 5
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_354_0")
    global.msg[1] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_355_0")
    self.con = 15
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 15) && (!d_ex()))
{
    self.sprite_index = spr_lancer_battle
    with (self.s)
    {
        self.sprite_index = spr_susier_dark_unhappy
        self.hspeed = 4
        self.image_speed = 0.25
    }
    self.con = 16
    self.alarm[4] = 10
}
if (self.con == 17)
{
    with (self.s)
        scr_halt()
    self.con = 18
    self.alarm[4] = 20
}
if (self.con == 19)
{
    global.typer = 30
    global.fc = 1
    global.fe = 0
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_385_0")
    global.msg[1] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_386_0")
    scr_lanface(2, "C")
    global.msg[3] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_388_0")
    global.msg[4] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_389_0")
    self.con = 20
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 20) && (!d_ex()))
{
    self.sprite_index = spr_lancer_rt_unhappy
    self.con = 21
    self.alarm[4] = 20
}
if (self.con == 22)
{
    global.fe = 6
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_407_0")
    global.msg[1] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_408_0")
    global.msg[2] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_409_0")
    global.msg[3] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_410_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 23
}
if ((self.con == 23) && (!d_ex()))
{
    with (self.s)
    {
        self.hspeed = 4
        self.image_speed = 0.25
    }
    self.con = 24
    self.alarm[4] = 10
}
if (self.con == 25)
{
    with (self.s)
        scr_halt()
    self.con = 26
    self.alarm[4] = 40
}
if (self.con == 27)
{
    self.sprite_index = spr_lancer_battle
    global.typer = 30
    global.fc = 1
    global.fe = 9
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_440_0")
    global.msg[1] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_441_0")
    global.msg[2] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_442_0")
    global.msg[3] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_443_0")
    scr_lanface(4, "C")
    global.msg[5] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_445_0")
    self.con = 28
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 28) && (!d_ex()))
{
    with (self.s)
        self.sprite_index = spr_susiel_dark_unhappy
    self.con = 29
    self.alarm[4] = 70
}
if (self.con == 30)
{
    global.fc = 1
    global.fe = 12
    global.typer = 30
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_462_0")
    global.msg[1] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_463_0")
    global.msg[2] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_464_0")
    global.msg[3] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_465_0")
    global.msg[4] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_466_0")
    global.msg[5] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_467_0")
    global.msg[6] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_468_0")
    self.con = 31
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 31) && (!d_ex()))
{
    with (self.s)
    {
        self.hspeed = -2
        self.image_speed = 0.2
        self.sprite_index = spr_susiel_dark_unhappy
    }
    self.con = 30.5
    self.alarm[4] = 30
}
if (self.con == 31.5)
{
    with (self.s)
        scr_halt()
    self.con = 32
    self.alarm[4] = 50
}
if (self.con == 33)
{
    global.fe = 0
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_500_0")
    global.msg[1] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_501_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 33.1
}
if ((self.con == 33.1) && (!d_ex()))
{
    self.sprite_index = spr_lancer_battle_hurt
    with (self.s)
        self.sprite_index = spr_susier_dark_unhappy
    self.exc = instance_create((self.x + 50), (self.y - 30), obj_excblcon)
    self.con = 32.2
    self.alarm[4] = 30
    global.currentsong[0] = snd_init("tense.ogg")
    global.currentsong[1] = mus_loop(global.currentsong[0])
}
if (self.con == 33.2)
{
    self.sprite_index = spr_lancer_battle
    with (self.exc)
        instance_destroy()
    global.fc = 5
    global.fe = 12
    global.typer = 32
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_526_0")
    scr_susface(1, 2)
    global.msg[2] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_528_0")
    scr_lanface(3, "C")
    global.msg[4] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_530_0")
    scr_susface(5, 3)
    global.msg[6] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_532_0")
    self.con = 33.3
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 33.3) && (!d_ex()))
{
    with (self.s)
        self.sprite_index = spr_susier_dark_unhappy
    with (self.s)
    {
        self.image_speed = 0.1
        self.hspeed = 2
    }
    self.con = 32.4
    self.alarm[4] = 120
}
if (self.con == 33.4)
{
    with (self.s)
        scr_halt()
    self.con = 32.5
    self.alarm[4] = 30
}
if (self.con == 33.5)
{
    global.fe = 0
    global.fc = 1
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_560_0")
    scr_lanface(1, 5)
    global.msg[2] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_562_0")
    self.con = 34
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 34) && (!d_ex()))
{
    with (self.s)
        self.image_index = 1
    self.sprite_index = spr_lancer_battle_hurt
    snd_play(snd_impact)
    instance_create(0, 0, obj_shake)
    self.con = 35
    self.alarm[4] = 15
}
if (self.con == 36)
{
    with (self.s)
        scr_halt()
    self.con = 37
    self.alarm[4] = 20
}
if (self.con == 38)
{
    self.sprite_index = spr_lancer_battle
    self.image_index = 1
    global.fe = 3
    global.fc = 1
    global.typer = 30
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_595_0")
    scr_lanface(1, 5)
    global.msg[2] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_597_0")
    global.msg[3] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_598_0")
    self.con = 39
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 39) && (!d_ex()))
{
    with (self.s)
    {
        self.sprite_index = spr_susier_dark_laugh
        self.image_speed = 0.25
    }
    snd_play(snd_suslaugh)
    self.con = 40
    self.alarm[4] = 60
}
if (self.con == 41)
{
    with (self.s)
    {
        scr_halt()
        self.sprite_index = spr_susier_dark
    }
    global.fe = 2
    global.fc = 1
    global.typer = 30
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_627_0")
    global.msg[1] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_628_0")
    self.con = 42
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 42) && (!d_ex()))
{
    with (self.s)
    {
        self.sprite_index = spr_susiel_dark
        self.hspeed = -3
        self.image_speed = 0.2
    }
    self.con = 43
}
if (self.con == 43)
{
    if (self.s.x <= (global.heromakex[0] + 2))
    {
        with (self.s)
            scr_halt()
        self.con = 44
        self.alarm[4] = 30
    }
}
if (self.con == 45)
{
    global.fe = 1
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_659_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 46
}
if ((self.con == 46) && (!d_ex()))
{
    snd_free_all()
    with (self.s)
    {
        self.image_index = 0
        self.image_speed = 0.5
        self.sprite_index = spr_susieb_attack
    }
    snd_play(snd_laz_c)
    self.con = 47
    self.alarm[4] = 10
}
if (self.con == 48)
{
    with (self.s)
        self.image_speed = 0
    self.con = 48.1
    self.alarm[4] = 30
}
if (self.con == 49.1)
{
    global.currentsong[0] = snd_init("vs_susie.ogg")
    global.fe = 4
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_691_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 50
}
if ((self.con == 50) && (!d_ex()))
{
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.9, 1)
    with (self.s)
        instance_destroy()
    global.encounterno = 20
    global.specialbattle = 0
    global.flag[9] = 0
    global.interact = 1
    self.con = 51
    scr_encountersetup(global.encounterno)
    self.x = global.monstermakex[0]
    self.y = global.monstermakey[0]
    instance_create(0, 0, obj_battlecontroller)
    self.visible = 0
    self.hk = instance_create((__view_get(0, 0) + 640), (__view_get(1, 0) - 20), obj_herokris)
    with (self.hk)
        self.visible = 0
    with (obj_mainchara)
        self.visible = 0
}
if (self.con == 53)
{
    self.s = scr_dark_marker(obj_herosusie.x, obj_herosusie.y, spr_susieb_attack_serious)
    with (self.s)
    {
        scr_depth()
        self.image_index = 5
    }
    self.visible = 1
    self.sprite_index = spr_lancer_battle_hurt
    global.fighting = 0
    with (obj_battlecontroller)
        instance_destroy()
    with (obj_herosusie)
        instance_destroy()
    with (obj_herokris)
        instance_destroy()
    with (obj_tensionbar)
        instance_destroy()
    with (obj_lancerboss2)
        instance_destroy()
    with (obj_bulletparent)
        instance_destroy()
    with (self.black)
        instance_destroy()
    self.dm = instance_create((self.x + 30), (self.y + 40), obj_dmgwriter)
    self.dm.type = 1
    self.dm.damage = 0
    self.con = 54
    self.alarm[4] = 120
}
if (self.con == 55)
{
    self.sprite_index = spr_lancer_battle
    self.image_index = 0
    global.typer = 32
    global.fc = 5
    global.fe = 12
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_762_0")
    global.msg[1] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_763_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 56
}
if ((self.con == 56) && (!d_ex()))
{
    with (self.s)
        self.sprite_index = spr_susieb_defeat
    snd_play(snd_noise)
    self.con = 57
    self.alarm[4] = 45
}
if (self.con == 58)
{
    global.fe = 12
    global.fc = 1
    global.typer = 30
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_781_0")
    global.msg[1] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_782_0")
    global.msg[2] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_783_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 59
}
if ((self.con == 59) && (!d_ex()))
{
    self.image_index = 1
    global.fc = 5
    global.typer = 32
    global.fe = 5
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_794_0")
    global.msg[1] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_795_0")
    global.msg[2] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_796_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 60
}
if ((self.con == 60) && (!d_ex()))
{
    with (self.s)
        self.sprite_index = spr_susier_dark_unhappy
    snd_play(snd_noise)
    self.con = 61
    self.alarm[4] = 30
}
if (self.con == 62)
{
    global.typer = 30
    global.fc = 1
    global.fe = 12
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_814_0")
    scr_lanface(1, 5)
    global.msg[2] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_816_0")
    global.msg[3] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_817_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 63
}
if ((self.con == 63) && (!d_ex()))
{
    with (self.s)
    {
        self.sprite_index = spr_susiel_dark_unhappy
        self.image_speed = 0.2
        self.hspeed = -2
    }
    self.con = 64
    self.alarm[4] = 10
}
if (self.con == 65)
{
    with (self.s)
        scr_halt()
    self.con = 66
    self.alarm[4] = 30
}
if (self.con == 67)
{
    global.typer = 30
    global.fc = 1
    global.fe = 12
    self.image_index = 0
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_849_0")
    global.msg[1] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_850_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 68
}
if ((self.con == 68) && (!d_ex()))
{
    with (self.s)
    {
        self.hspeed = 6
        self.sprite_index = spr_susier_dark
        self.image_speed = 0.25
    }
    self.con = 69
    self.alarm[4] = 20
}
if (self.con == 70)
{
    with (self.s)
        scr_halt()
    self.con = 71
    self.alarm[4] = 20
}
if (self.con == 72)
{
    global.fe = 0
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_878_0")
    global.msg[1] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_879_0")
    global.msg[2] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_880_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 73
}
if ((self.con == 73) && (!d_ex()))
{
    with (self.s)
        self.sprite_index = spr_susier_dark_unhappy
    self.image_index = 1
    global.fc = 5
    global.typer = 32
    global.fe = 6
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_892_0")
    global.msg[1] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_893_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 74
}
if ((self.con == 74) && (!d_ex()))
{
    self.image_index = 0
    with (self.s)
    {
        self.sprite_index = spr_susier_dark
        self.hspeed = 12
        self.image_speed = 0.334
    }
    self.con = 75
    self.alarm[4] = 10
}
if (self.con == 76)
{
    with (self.s)
        scr_halt()
    self.con = 77
    self.alarm[4] = 20
}
if (self.con == 78)
{
    global.fc = 1
    global.typer = 30
    global.fe = 13
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_925_0")
    global.msg[1] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_926_0")
    global.msg[2] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_927_0")
    scr_lanface(3, 6)
    global.msg[4] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_929_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 79
}
if ((self.con == 79) && (!d_ex()))
{
    self.con = 80
    self.alarm[4] = 30
}
if (self.con == 81)
{
    self.sprite_index = spr_lancer_lt
    global.fe = 3
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_944_0")
    global.msg[1] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_945_0")
    global.msg[2] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_946_0")
    global.msg[3] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_947_0")
    scr_susface(4, "D")
    global.msg[5] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_949_0")
    scr_lanface(6, 3)
    global.msg[7] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_951_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 82
}
if ((self.con == 82) && (!d_ex()))
{
    self.sprite_index = spr_lancer_rt
    scr_depth()
    self.vspeed = 0
    self.hspeed = 1
    self.con = 85
    self.alarm[4] = 20
}
if (self.con == 86)
{
    scr_halt()
    self.con = 86.1
    self.alarm[4] = 30
}
if (self.con == 87.1)
{
    self.sprite_index = spr_lancer_rt_unhappy
    global.fe = 6
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_978_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 88
}
if ((self.con == 88) && (!d_ex()))
{
    with (self.s)
        self.sprite_index = spr_susier_dark_unhappy
    self.con = 89
    self.alarm[4] = 20
}
if (self.con == 90)
{
    global.fc = 1
    global.typer = 30
    global.fe = 0
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_995_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 91
}
if ((self.con == 91) && (!d_ex()))
{
    self.sprite_index = spr_lancer_lt_unhappy
    self.con = 92
    self.alarm[4] = 50
}
if (self.con == 93)
{
    global.fc = 5
    global.typer = 32
    global.fe = 6
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_1012_0")
    global.msg[1] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_1013_0")
    scr_susface(2, 5)
    global.msg[3] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_1015_0")
    global.msg[4] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_1016_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 94
}
if ((self.con == 94) && (!d_ex()))
{
    with (self.s)
        self.sprite_index = spr_susier_dark
    global.fc = 5
    global.typer = 32
    global.fe = 3
    self.sprite_index = spr_lancer_rt
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_1028_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 95
}
if ((self.con == 95) && (!d_ex()))
{
    self.hspeed = 10
    self.con = 96
    self.alarm[4] = 60
}
if (self.con == 97)
{
    with (self.s)
        self.sprite_index = spr_susied_dark_unhappy
    global.fe = 12
    global.fc = 1
    global.typer = 30
    global.msg[0] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_1046_0")
    global.msg[1] = scr_84_get_lang_string("obj_lancerbattle2_event_slash_Step_0_gml_1047_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 98
}
if ((self.con == 98) && (!d_ex()))
{
    with (self.s)
    {
        self.sprite_index = spr_susier_dark
        self.hspeed = 10
        self.image_speed = 0.334
    }
    self.con = 99
    self.alarm[4] = 20
}
if (self.con == 100)
{
    instance_create(0, 0, obj_fadeout)
    self.con = 101
    self.alarm[4] = 60
}
if (self.con == 102)
{
    global.plot = 154
    global.entrance = 0
    global.interact = 3
    instance_create(0, 0, obj_persistentfadein)
    room_goto(room_cc_prison_cells)
}
