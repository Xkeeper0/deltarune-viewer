if ((self.con > 0) && (self.con < 40))
{
    if (self.con == 1)
        global.interact = 1
    if (self.con == 2)
    {
        with (self.k)
            scr_halt()
        with (self.s)
            scr_halt()
        self.con = 3
        self.alarm[4] = 30
    }
    if (self.con == 4)
    {
        global.typer = 10
        global.fc = 1
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_21_0")
        global.msg[1] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_22_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 4.5
    }
    if ((self.con == 4.5) && (instance_exists(obj_dialoguer) == 0))
    {
        snd_play(snd_locker)
        self.image_index = 1
        self.con = 5.5
        self.alarm[4] = 60
    }
    if (self.con == 6.5)
    {
        global.currentsong[0] = snd_init("creepydoor.ogg")
        mus_loop(global.currentsong[0])
        self.open = 1
        self.con = 6
        self.alarm[4] = 60
    }
    if (self.con == 7)
    {
        with (self.s)
        {
            self.vspeed = 0.5
            self.image_speed = 0.1
        }
        with (self.k)
        {
            self.vspeed = 0.5
            self.image_speed = 0.1
        }
        self.con = 8
        self.alarm[4] = 30
    }
    if (self.con == 9)
    {
        with (self.s)
            scr_halt()
        with (self.k)
            scr_halt()
        self.con = 10
        self.alarm[4] = 30
    }
    if (self.con == 11)
    {
        global.fe = 5
        global.msg[0] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_72_0")
        global.msg[1] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_73_0")
        global.msg[2] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_74_0")
        instance_create(0, 0, obj_dialoguer)
        with (self.s)
            self.sprite_index = spr_susiel
        self.con = 12
    }
    if ((self.con == 12) && (instance_exists(obj_dialoguer) == 0))
    {
        with (self.s)
            self.sprite_index = spr_susieu
        self.con = 13
        self.alarm[4] = 90
    }
    if (self.con == 14)
    {
        with (self.s)
            self.sprite_index = spr_susiel
        global.msg[0] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_90_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 15
    }
    if ((self.con == 15) && (instance_exists(obj_dialoguer) == 0))
    {
        with (self.k)
        {
            self.vspeed = 0.5
            self.image_speed = 0.1
        }
        self.con = 14.5
        self.alarm[4] = 30
    }
    if (self.con == 15.5)
    {
        with (self.k)
            scr_halt()
        self.con = 16
        self.alarm[4] = 60
    }
    if (self.con == 17)
    {
        with (self.s)
            self.sprite_index = spr_susiel
        global.msg[0] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_117_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 18
    }
    if ((self.con == 18) && (instance_exists(obj_dialoguer) == 0))
    {
        with (self.s)
            self.sprite_index = spr_susieu
        self.con = 19
        self.alarm[4] = 90
    }
    if (self.con == 20)
    {
        with (self.s)
            self.sprite_index = spr_susiel
        global.msg[0] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_132_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 21
    }
    if ((self.con == 21) && (instance_exists(obj_dialoguer) == 0))
    {
        with (self.s)
        {
            self.sprite_index = spr_susieu
            self.vspeed = -0.5
            self.image_speed = 0.1
        }
        with (self.k)
        {
            self.vspeed = -0.5
            self.image_speed = 0.1
        }
        self.con = 22
        self.alarm[4] = 30
    }
    if (self.con == 23)
    {
        self.fade = instance_create(0, 0, obj_fadeout)
        with (self.fade)
            self.fadespeed = 0.03
        self.con = 24
        self.alarm[4] = 34
    }
    if (self.con == 25)
    {
        self.con = 26
        global.plot = 5
        instance_create(0, 0, obj_persistentfadein)
        room_goto(room_insidecloset)
    }
}
if (self.con >= 40)
{
    if (self.con == 40)
    {
        snd_free_all()
        global.currentsong[0] = snd_init("mus_birdnoise.ogg")
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.6, 0.7)
        global.interact = 1
        self.s = scr_marker(479, 92, spr_susiel_plain)
        with (self.s)
            scr_depth()
        with (obj_mainchara)
        {
            self.x = obj_markerD.x
            self.y = obj_markerD.y
        }
        self.con = 41
        self.alarm[4] = 45
    }
    if (self.con == 42)
    {
        global.typer = 10
        global.fc = 1
        global.fe = 0
        global.flag[29] = 1
        global.msg[0] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_194_0")
        global.msg[1] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_195_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 43
    }
    if ((self.con == 43) && (!d_ex()))
    {
        self.k = scr_marker(obj_mainchara.x, obj_mainchara.y, spr_krisl)
        with (self.k)
            scr_depth()
        with (obj_mainchara)
            self.visible = 0
        with (self.s)
            self.sprite_index = spr_susier
        self.con = 44
        self.alarm[4] = 30
    }
    if (self.con == 45)
    {
        global.fe = 2
        global.msg[0] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_215_0")
        self.con = 50
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 50) && (!d_ex()))
    {
        with (self.s)
        {
            self.hspeed = -2
            self.image_speed = 0.2
            self.sprite_index = spr_susiel
        }
        with (self.k)
        {
            self.hspeed = -2
            self.image_speed = 0.2
        }
        with (obj_mainchara)
            self.hspeed = -2
        self.con = 51
        self.alarm[4] = 100
    }
    if (self.con == 52)
    {
        with (self.s)
            scr_halt()
        with (self.k)
            scr_halt()
        with (obj_mainchara)
            scr_halt()
        with (self.s)
            self.sprite_index = spr_susieu
        with (self.k)
            self.sprite_index = spr_krisu
        self.con = 51.1
        self.alarm[4] = 60
    }
    if (self.con == 52.1)
    {
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_252_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 52.2
    }
    if ((self.con == 52.2) && (!d_ex()))
    {
        self.con = 53
        self.alarm[4] = 30
    }
    if (self.con == 54)
    {
        with (self.s)
            self.sprite_index = spr_susier_plain
        with (self.k)
            self.sprite_index = spr_krisl
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_268_0")
        global.msg[1] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_269_0")
        global.msg[2] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_270_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 55
    }
    if ((self.con == 55) && (!d_ex()))
    {
        with (self.k)
            self.sprite_index = spr_krisd
        with (self.s)
        {
            self.sprite_index = spr_susied_plain
            self.image_speed = 0.1
            self.vspeed = 0.5
        }
        self.con = 56
        self.alarm[4] = 60
    }
    if (self.con == 57)
    {
        with (self.s)
            scr_halt()
        self.con = 58
        self.alarm[4] = 30
    }
    if (self.con == 59)
    {
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_298_0")
        global.msg[1] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_299_0")
        global.msg[2] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_300_0")
        self.con = 60
        self.d = instance_create(0, 0, obj_dialoguer)
        with (self.d)
            self.side = 0
    }
    if ((self.con == 60) && (!d_ex()))
    {
        with (self.s)
            self.sprite_index = spr_susier_plain
        self.con = 61
        self.alarm[4] = 30
    }
    if (self.con == 62)
    {
        with (self.s)
        {
            self.vspeed = -2
            self.hspeed = 0.75
            self.image_speed = 0.25
            self.sprite_index = spr_susieu
        }
        with (self.k)
            self.sprite_index = spr_krisl
        self.con = 63
        self.alarm[4] = 15
    }
    if (self.con == 64)
    {
        with (self.s)
        {
            scr_halt()
            self.sprite_index = spr_susier_plain
        }
        self.con = 65
        self.alarm[4] = 20
    }
    if (self.con == 66)
    {
        with (self.k)
            self.visible = 0
        with (self.s)
        {
            self.sprite_index = spr_susie_krisshoulder_r
            self.image_speed = 0.2
        }
        self.con = 67
        self.alarm[4] = 20
    }
    if (self.con == 68)
    {
        with (self.s)
            self.image_speed = 0
        self.con = 69
        self.alarm[4] = 60
    }
    if (self.con == 70)
    {
        global.fe = 8
        global.flag[6] = 1
        global.msg[0] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_363_0")
        self.d = instance_create(0, 0, obj_dialoguer)
        with (obj_writer)
            self.skippable = 0
        with (self.d)
            self.skippable = 0
        with (self.d)
            self.side = 0
        self.con = 70.1
    }
    if ((self.con == 70.1) && (!d_ex()))
    {
        self.con = 69.2
        self.alarm[4] = 30
    }
    if ((self.con == 70.2) && (!d_ex()))
    {
        with (self.s)
            self.image_speed = -0.24
        self.con = 69.3
        self.alarm[4] = 16
    }
    if (self.con == 70.3)
    {
        with (self.s)
            scr_halt()
        self.con = 72
        self.alarm[4] = 30
    }
    if ((self.con == 73) && (!d_ex()))
    {
        with (self.k)
        {
            self.visible = 1
            self.sprite_index = spr_krisd
        }
        with (self.s)
        {
            self.sprite_index = spr_susied
            self.image_speed = 0.2
            self.vspeed = 3
        }
        self.con = 74
        self.alarm[4] = 30
    }
    if (self.con == 75)
    {
        global.flag[6] = 0
        if (global.plot < 251)
            global.plot = 251
        self.con = 76
        global.interact = 0
        with (obj_mainchara)
            self.visible = 1
        with (self.k)
            instance_destroy()
    }
}
