if ((self.con > 0) && (self.type == 1))
{
    if (self.con == 2)
    {
        with (obj_mainchara)
            self.vspeed = 0
        with (self.t)
        {
            self.vspeed = 0
            self.image_index = 0
            self.image_speed = 0
        }
        self.con = 3
        self.alarm[4] = 40
    }
    if (self.con == 4)
    {
        with (self.t)
            self.sprite_index = spr_toriel_hug
        self.con = 5
        self.alarm[4] = 20
    }
    if (self.con == 6)
    {
        with (obj_writer)
            instance_destroy()
        with (self.t)
            self.image_speed = 0.2
        self.con = 7
        self.alarm[4] = 10
    }
    if (self.con == 8)
    {
        with (self.t)
        {
            self.image_speed = 0
            self.image_index = 2
        }
        self.con = 11
        self.alarm[4] = 50
    }
    if (self.con == 12)
    {
        with (obj_writer)
            instance_destroy()
        with (self.t)
            self.image_speed = -0.2
        self.con = 13
        self.alarm[4] = 10
    }
    if (self.con == 14)
    {
        with (self.t)
        {
            self.image_index = 0
            self.image_speed = 0
            self.sprite_index = spr_toriel_d
        }
        self.k = scr_marker((self.t.x + 4), (self.t.y + 21), spr_krisu)
        self.con = 15
        self.alarm[4] = 20
    }
    if (self.con == 16)
    {
        with (self.t)
            self.sprite_index = spr_toriel_l
        scr_pan(-3, 0, 118)
        with (self.k)
        {
            self.sprite_index = spr_krisl
            self.hspeed = -3
            self.image_speed = 0.25
        }
        self.con = 17
        self.alarm[4] = 30
    }
    if (self.con == 18)
    {
        with (self.t)
        {
            self.sprite_index = spr_toriel_r
            self.hspeed = 2
            self.image_speed = 0.2
        }
        self.con = 18.1
        self.alarm[4] = 78
    }
    if (self.con == 19.1)
    {
        self.fade = instance_create(0, 0, obj_fadeout)
        self.fade.fadespeed = 0.02
        self.con = 19
        self.alarm[4] = 10
    }
    if (self.con == 20)
    {
        with (self.k)
        {
            self.hspeed = 0
            self.sprite_index = spr_krisu
            self.vspeed = -0.5
        }
        self.con = 21
        self.alarm[4] = 40
    }
    if (self.con == 23)
    {
        instance_create(0, 0, obj_persistentfadein)
        room_goto(room_alphysclass)
    }
    if (self.con == 22)
    {
        snd_free_all()
        self.con = 23
    }
}
if ((self.con > 0) && (self.type == 2))
{
    if (self.con == 0.1)
        global.interact = 1
    if (self.con == 1.1)
    {
        with (self.k)
            self.sprite_index = spr_krisr
        with (self.s)
        {
            self.sprite_index = spr_susie_eatchalk
            self.image_speed = 0.2
        }
        self.con = 1.2
        self.chalksound = 0
    }
    if (self.con == 1.2)
    {
        if ((self.s.image_index >= 16) && (self.chalksound == 0))
        {
            self.chalksound = 1
            snd_play(snd_noise)
        }
        if (self.s.image_index >= 21)
        {
            with (self.s)
            {
                self.sprite_index = spr_susier
                self.image_speed = 0
                self.image_index = 0
            }
            self.con = 0.3
            self.alarm[4] = 40
        }
    }
    if (self.con == 1.3)
    {
        self.s.sprite_index = spr_susied
        self.con = 0.4
        self.alarm[4] = 30
    }
    if (self.con == 1.4)
    {
        self.s.sprite_index = spr_susiel
        self.s.hspeed = -0.5
        self.s.image_speed = 0.1
        self.con = 0.5
        self.alarm[4] = 40
    }
    if (self.con == 1.5)
    {
        with (self.s)
        {
            self.x = 220
            self.hspeed = 0
            self.image_index = 0
            self.image_speed = 0
        }
        self.con = 1
        instance_create((self.s.x + 10), (self.s.y - 10), obj_excblcon)
        with (obj_excblcon)
            self.alarm[0] = 40
        snd_play(snd_b)
        self.alarm[4] = 70
    }
    if (self.con == 2)
    {
        global.fc = 1
        global.fe = 0
        with (self.k)
            self.sprite_index = spr_krisr
        global.facing = 1
        global.typer = 10
        global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_193_0")
        global.msg[1] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_194_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 2.1
    }
    if ((self.con == 2.1) && (d_ex() == 0))
    {
        self.s.sprite_index = spr_susieu
        self.con = 1.6
        self.alarm[4] = 60
    }
    if (self.con == 2.6)
    {
        self.s.sprite_index = spr_susier
        global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_209_0")
        global.msg[1] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_210_0")
        self.con = 3
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 3) && (instance_exists(obj_dialoguer) == 0))
    {
        self.con = 4
        self.alarm[4] = 90
    }
    if (self.con == 5)
    {
        with (self.s)
            self.sprite_index = spr_susier_lookup
        global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_225_0")
        global.msg[1] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_226_0")
        self.con = 6
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 6) && (instance_exists(obj_dialoguer) == 0))
    {
        self.con = 7
        self.alarm[4] = 60
    }
    if (self.con == 8)
    {
        with (self.s)
            self.sprite_index = spr_susied_plain
        self.con = 9
        self.alarm[4] = 30
    }
    if (self.con == 10)
    {
        with (self.s)
            self.sprite_index = spr_susiel
        self.con = 11
        self.alarm[4] = 60
    }
    if (self.con == 12)
    {
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_254_0")
        self.con = 13
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 13) && (instance_exists(obj_dialoguer) == 0))
    {
        with (self.s)
        {
            self.hspeed = -1
            self.image_speed = 0.1
        }
        self.alarm[4] = 56
        self.con = 14
    }
    if (self.con == 15)
    {
        with (self.k)
        {
            self.image_speed = 0.1
            self.hspeed = -0.5
        }
        self.con = 16
        self.alarm[4] = 80
    }
    if (self.con == 17)
    {
        with (self.k)
        {
            self.hspeed = 0
            self.image_index = 0
            self.image_speed = 0
        }
        with (self.s)
        {
            self.hspeed = 0
            self.image_index = 0
            self.image_speed = 0
        }
        self.con = 18
        self.alarm[4] = 50
    }
    if (self.con == 19)
    {
        global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_303_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 20
    }
    if ((self.con == 20) && (instance_exists(obj_dialoguer) == 0))
    {
        self.con = 21
        with (self.k)
            self.visible = 0
        with (self.s)
        {
            self.sprite_index = spr_susie_krisshoulder
            self.image_index = 0
            self.image_speed = 0.2
        }
        self.alarm[4] = 25
    }
    if (self.con == 22)
    {
        with (self.s)
            self.image_speed = 0
        self.con = 23
        self.alarm[4] = 30
    }
    if (self.con == 24)
    {
        global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_330_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 25
    }
    if ((self.con == 25) && (instance_exists(obj_dialoguer) == 0))
    {
        self.con = 27
        self.alarm[4] = 50
    }
    if (self.con == 28)
    {
        with (self.s)
        {
            self.sprite_index = spr_susie_krisgrab
            self.image_index = 0
            self.image_speed = 0.334
        }
        self.con = 29
        self.alarm[4] = 9
    }
    if (self.con == 30)
    {
        snd_play(snd_locker)
        self.con = 31
        self.alarm[4] = 6
    }
    if (self.con == 32)
    {
        with (self.s)
            self.image_speed = 0
        self.con = 33
        self.alarm[4] = 60
    }
    if (self.con == 34)
    {
        global.fe = 2
        global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_374_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 35
    }
    if ((self.con == 35) && (instance_exists(obj_dialoguer) == 0))
    {
        global.currentsong[0] = snd_init("s_neo.ogg")
        global.currentsong[1] = mus_loop(global.currentsong[0])
        self.con = 36
        self.alarm[4] = 60
    }
    if (self.con == 37)
    {
        global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_389_0")
        global.msg[1] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_390_0")
        global.msg[2] = (scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_391_0") + "/")
        global.msg[3] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_392_0")
        global.msg[4] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_393_0")
        global.msg[5] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_394_0")
        global.msg[6] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_395_0")
        global.msg[7] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_396_0")
        global.msg[8] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_397_0")
        global.msg[9] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_398_0")
        global.msg[10] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_399_0")
        global.msg[11] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_400_0")
        global.msg[12] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_401_0")
        global.msg[13] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_402_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 38
    }
    if ((instance_exists(obj_dialoguer) == 0) && (self.con == 38))
    {
        snd_free(global.currentsong[0])
        with (self.s)
        {
            self.sprite_index = spr_susie_grabsmile
            self.image_index = 0
            self.image_speed = 0.2
        }
        self.con = 39
        self.alarm[4] = 20
    }
    if (self.con == 40)
    {
        with (self.s)
            self.image_speed = 0
        self.con = 41
        self.alarm[4] = 30
    }
    if (self.con == 42)
    {
        global.fe = 3
        global.typer = 2
        global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_432_0")
        self.d = instance_create(0, 0, obj_dialoguer)
        with (self.d)
            self.skippable = 0
        self.con = 43
    }
    if ((self.con == 43) && (instance_exists(obj_dialoguer) == 0))
    {
        global.currentsong[0] = snd_init("s_neo_clip.ogg")
        audio_sound_pitch(global.currentsong[0], 0.667)
        global.currentsong[1] = mus_play(global.currentsong[0])
        with (self.s)
        {
            self.image_index = 0
            self.image_speed = 0.0666666666666667
            self.sprite_index = spr_susie_krisgrab_eat
        }
        self.con = 43.5
        self.alarm[4] = 89
    }
    if (self.con == 44.5)
    {
        snd_free(global.currentsong[0])
        with (self.s)
            self.image_speed = 0
        self.con = 44
        self.alarm[4] = 60
    }
    if (self.con == 45)
    {
        with (self.s)
        {
            self.sprite_index = spr_susie_krisdrop
            self.image_speed = 0.334
            self.image_index = 0
        }
        snd_play(snd_noise)
        self.con = 46
        self.alarm[4] = 12
    }
    if (self.con == 47)
    {
        with (self.s)
            self.image_speed = 0
        self.con = 48
        self.alarm[4] = 30
    }
    if (self.con == 49)
    {
        global.typer = 10
        global.fe = 0
        with (self.k)
        {
            self.visible = 1
            self.sprite_index = spr_krisr_sit
        }
        self.k.x = (self.s.x - 19)
        with (self.s)
        {
            self.image_index = 0
            self.sprite_index = spr_susier
        }
        self.con = 50
        global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_499_0")
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 50) && (instance_exists(obj_dialoguer) == 0))
    {
        with (self.s)
        {
            self.hspeed = 2
            self.image_speed = 0.2
        }
        self.con = 51
        self.alarm[4] = 30
    }
    if (self.con == 52)
    {
        with (self.s)
        {
            self.image_index = 0
            self.image_speed = 0
            self.hspeed = 0
        }
        self.con = 53
        self.alarm[4] = 30
    }
    if (self.con == 54)
    {
        with (self.s)
            self.sprite_index = spr_susier_lookup
        global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_532_0")
        global.msg[1] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_533_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 55
    }
    if ((self.con == 55) && (instance_exists(obj_dialoguer) == 0))
    {
        with (self.s)
            self.sprite_index = spr_susiel
        self.con = 56
        self.alarm[4] = 30
    }
    if (self.con == 57)
    {
        global.msc = 104
        scr_text(global.msc)
        instance_create(0, 0, obj_dialoguer)
        self.con = 57.1
        self.choosetimer = 0
    }
    if (self.con == 57.1)
    {
        if instance_exists(obj_choicer_old)
        {
            self.choosetimer += 1
            if (self.choosetimer >= 30)
            {
                if (obj_choicer_old.choiced == 0)
                {
                    with (obj_choicer_old)
                    {
                        self.canchoose = 1
                        self.mychoice = 1
                        event_user(0)
                    }
                }
                self.con = 58
            }
        }
        if (!d_ex())
            self.con = 58
    }
    if ((self.con == 58) && (instance_exists(obj_dialoguer) == 0))
    {
        with (self.s)
            self.sprite_index = spr_susier
        global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_582_0")
        global.msg[1] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_583_0")
        global.msg[2] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_584_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 59
    }
    if ((self.con == 59) && (instance_exists(obj_dialoguer) == 0))
    {
        with (self.s)
        {
            self.image_speed = 0.2
            self.hspeed = 2
        }
        self.con = 60
        self.alarm[4] = 20
    }
    if (self.con == 61)
    {
        with (self.s)
        {
            self.hspeed = 0
            self.image_speed = 0
            self.image_index = 0
        }
        self.con = 62
        self.alarm[4] = 30
    }
    if (self.con == 63)
    {
        global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_616_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 64
    }
    if ((self.con == 64) && (instance_exists(obj_dialoguer) == 0))
    {
        self.interact = instance_create(110, 200, obj_readable_room1)
        obj_mainchara.x = (self.k.x + 6)
        obj_mainchara.y = (self.k.y + 2)
        with (self.k)
            instance_destroy()
        global.facing = 1
        global.interact = 0
        with (obj_mainchara)
            self.visible = 1
        self.con = 1
        self.type = 3
        self.scon = 1
    }
}
if (self.type == 3)
{
    with (self.s)
        scr_depth()
    if (self.scon == 1)
    {
        if (self.s.x < 448)
        {
            with (self.s)
            {
                self.hspeed = 3
                self.image_speed = 0.2
                if (obj_mainchara.px > 3)
                {
                    obj_schoollobbycutscene.ran += 1
                    self.hspeed = (obj_mainchara.px + 1)
                    self.image_speed = 0.4
                }
            }
        }
        else
        {
            with (self.s)
            {
                self.x = 450
                self.sprite_index = spr_susiel
                self.hspeed = 0
                self.image_index = 0
                self.image_speed = 0
            }
            self.scon = 2
        }
    }
    if (self.scon == 2)
    {
        if (obj_mainchara.x >= 404)
            self.scon = 3
    }
    if (self.scon == 3)
    {
        with (self.s)
        {
            self.sprite_index = spr_susieu
            self.image_speed = 0.2
            self.vspeed = -3
            if (obj_mainchara.py < -3)
            {
                obj_schoollobbycutscene.ran += 1
                self.vspeed = (obj_mainchara.py - 1)
                self.image_speed = 0.4
            }
        }
        if (self.s.y <= 42)
        {
            with (self.s)
            {
                self.sprite_index = spr_susied
                self.speed = 0
                self.image_index = 0
                self.image_speed = 0
            }
            self.scon = 4
        }
    }
    if (self.scon == 4)
    {
        if ((obj_mainchara.y <= 80) && (global.interact == 0))
        {
            global.interact = 1
            self.scon = 5
            global.fc = 1
            global.typer = 10
            global.fe = 1
            if (self.ran < 15)
            {
                global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_719_0")
                global.msg[1] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_720_0")
                global.msg[2] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_721_0")
                global.msg[3] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_722_0")
            }
            if (self.ran >= 15)
            {
                global.flag[200] = 1
                global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_727_0")
                global.msg[1] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_728_0")
                global.msg[2] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_729_0")
                global.msg[3] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_730_0")
            }
            instance_create(0, 0, obj_dialoguer)
        }
    }
    if ((self.scon == 5) && (instance_exists(obj_dialoguer) == 0))
    {
        with (obj_doorC)
            instance_destroy()
        with (self.s)
        {
            self.vspeed = -1
            self.sprite_index = spr_susieu
            self.image_speed = 0.2
        }
        with (obj_mainchara)
        {
            self.fun = 1
            self.sprite_index = spr_krisu
            self.image_speed = 0.2
            move_towards_point(450, 20, 1)
        }
        self.f = instance_create(0, 0, obj_fadeout)
        with (self.f)
            self.fadespeed = 0.03
        self.scon = 6
        self.con = 5
        self.alarm[4] = 34
    }
    if (self.con == 6)
    {
        global.plot = 4
        instance_create(0, 0, obj_persistentfadein)
        room_goto(room_schooldoor)
        self.con = 7
    }
    if ((obj_mainchara.x >= 560) && (global.interact == 0))
    {
        obj_mainchara.x = 558
        global.interact = 1
        global.facing = 3
        global.fc = 1
        global.typer = 10
        global.fe = 0
        self.dex = 1
        global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_776_0")
        global.msg[1] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_777_0")
        global.msg[2] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_778_0")
        global.msg[3] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_779_0")
        global.msg[4] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_780_0")
        if (self.teast > 0)
            global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_784_0")
        self.teast += 1
        instance_create(0, 0, obj_dialoguer)
    }
    if ((obj_mainchara.y >= 300) && (global.interact == 0))
    {
        obj_mainchara.y = 298
        global.interact = 1
        global.facing = 2
        global.fc = 1
        global.typer = 10
        global.fe = 0
        self.dex = 1
        global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_799_0")
        global.msg[1] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_800_0")
        global.msg[2] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_801_0")
        if (self.tsouth > 0)
            global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_805_0")
        self.tsouth += 1
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.dex == 1) && ((instance_exists(obj_dialoguer) == 0) && (global.interact == 1)))
    {
        self.dex = 0
        global.interact = 0
    }
}
if (self.type == 4)
{
    if ((global.flag[272] == 0) && ((global.interact == 0) && (self.con == 0)))
    {
        if (obj_mainchara.y >= 320)
        {
            global.fc = 0
            global.typer = 5
            global.interact = 1
            global.msc = 365
            scr_text(global.msc)
            snd_play(snd_phone)
            if (global.flag[272] == 0)
                global.flag[272] = 1
            self.con = 2
            instance_create(0, 0, obj_dialoguer)
        }
    }
    if ((self.con == 2) && (!d_ex()))
    {
        global.interact = 0
        self.con = 3
    }
}
