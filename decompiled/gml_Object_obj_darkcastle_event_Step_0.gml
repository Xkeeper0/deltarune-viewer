if (self.con < 40)
{
    if (self.con == 2)
    {
        self.xx = __view_get(0, 0)
        self.yy = __view_get(1, 0)
        with (self.k)
            scr_halt()
        with (self.s)
            scr_halt()
        self.con = 3
        self.alarm[4] = 30
    }
    if (self.con == 4)
    {
        with (obj_mainchara)
            self.cutscene = 1
        global.fe = 0
        global.fc = 1
        global.typer = 30
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_20_0")
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_21_0")
        self.con = 5
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 5) && (d_ex() == 0))
    {
        self.con = 6
        global.fc = 0
        global.typer = 42
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_32_0")
        self.wr = instance_create((self.xx + 200), (self.yy + 100), obj_writer)
        if (scr_debug() == 0)
        {
            with (self.wr)
                self.skippable = 0
        }
    }
    if (self.con == 6)
    {
        if (instance_exists(self.wr) == 0)
        {
            global.fe = 9
            global.fc = 1
            global.typer = 30
            global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_46_0")
            self.con = 7
            instance_create(0, 0, obj_dialoguer)
        }
    }
    if ((self.con == 7) && (d_ex() == 0))
    {
        global.fc = 0
        self.con = 8
        global.typer = 42
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_58_0")
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_59_0")
        self.wr = instance_create((self.xx + 200), (self.yy + 100), obj_writer)
        if (scr_debug() == 0)
        {
            with (self.wr)
                self.skippable = 0
        }
    }
    if (self.con == 8)
    {
        if (instance_exists(self.wr) == 0)
        {
            self.r = scr_dark_marker(495, 310, spr_ralsei_hood)
            with (self.r)
                self.depth = 100
            with (self.s)
            {
                self.vspeed = -4
                self.image_speed = 0.1
            }
            with (self.k)
            {
                self.vspeed = -4
                self.image_speed = 0.1
            }
            scr_pan(0, -4, 70)
            self.con = 9
            self.alarm[4] = 85
        }
    }
    if (self.con == 10)
    {
        with (self.k)
            scr_halt()
        with (self.s)
            scr_halt()
        self.con = 11
        self.alarm[4] = 30
    }
    if (self.con == 12)
    {
        global.typer = 6
        global.fc = 2
        global.fe = 0
        global.flag[30] = 1
        global.msc = 120
        scr_text(global.msc)
        self.con = 20
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
    }
    if ((self.con == 20) && (d_ex() == 0))
    {
        self.fade = instance_create(0, 0, obj_fadeout)
        with (self.fade)
            self.fadespeed = 0.01
        self.con = 21
        self.alarm[4] = 100
    }
    if (self.con == 22)
    {
        self.room_persistent = 1
        self.con = 24
        self.alarm[4] = 2
    }
    if (self.con == 25)
    {
        instance_create(0, 0, obj_persistentfadein)
        room_goto(room_legend)
        global.plot = 20
        self.con = 26
        self.alarm[4] = 3
    }
    if (self.con == 27)
    {
        global.plot = 21
        self.room_persistent = 0
        self.con = 28
        self.alarm[4] = 60
    }
    if (self.con == 29)
    {
        global.fc = 2
        global.fe = 0
        global.typer = 6
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_142_0")
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_143_0")
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_144_0")
        global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_145_0")
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_146_0")
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 35
    }
    if ((self.con == 30) && (d_ex() == 1))
    {
        if (scr_getmsgno() == 17)
        {
            with (self.s)
                self.sprite_index = spr_susier_dark
        }
        if (scr_getmsgno() == 18)
        {
            with (self.s)
                self.sprite_index = spr_susied_dark
        }
    }
    if ((self.con == 30) && (d_ex() == 0))
        self.con = 40
    if ((self.con == 35) && (d_ex() == 0))
    {
        with (self.s)
            self.sprite_index = spr_susier_dark
        self.con = 36
        self.alarm[4] = 50
    }
    if (self.con == 37)
    {
        with (self.s)
            self.sprite_index = spr_susieu_dark
        global.typer = 30
        global.fe = 0
        global.fc = 1
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_181_0")
        scr_ralface(1, 1)
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_183_0")
        scr_susface(3, 0)
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_185_0")
        global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_186_0")
        scr_ralface(6, 1)
        global.msg[7] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_188_0")
        scr_susface(8, 0)
        global.msg[9] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_190_0")
        global.msg[10] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_191_0")
        global.msg[11] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_192_0")
        scr_ralface(12, 0)
        global.msg[13] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_194_0")
        scr_susface(14, 0)
        global.msg[15] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_196_0")
        global.msg[16] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_197_0")
        global.msg[17] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_198_0")
        global.msg[18] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_199_0")
        scr_ralface(19, 1)
        global.msg[20] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_201_0")
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 38
    }
    if ((self.con == 38) && (d_ex() == 1))
    {
        if (scr_getmsgno() == 0)
        {
            with (self.s)
                self.sprite_index = spr_susieu_dark
        }
        if (scr_getmsgno() == 9)
        {
            with (self.s)
                self.sprite_index = spr_susier_dark
        }
        if (scr_getmsgno() == 13)
        {
            with (self.s)
                self.sprite_index = spr_susieu_dark
        }
        if (scr_getmsgno() == 15)
        {
            with (self.s)
                self.sprite_index = spr_susiel_dark
        }
        if (scr_getmsgno() == 18)
        {
            with (self.s)
                self.sprite_index = spr_susied_dark
        }
    }
    if ((self.con == 38) && (d_ex() == 0))
        self.con = 40
}
else
{
    if ((self.con == 40) && (d_ex() == 0))
    {
        with (self.s)
            self.sprite_index = spr_susieu_dark
        snd_play(snd_lancerlaugh)
        self.con = 44
        self.alarm[4] = 50
    }
    if (self.con == 45)
    {
        snd_play(snd_drive)
        self.xx = __view_get(0, 0)
        self.yy = __view_get(1, 0)
        self.l = scr_dark_marker((self.xx + 720), ((self.r.y + self.r.sprite_height) - 10), spr_lancerbike)
        with (self.l)
            self.hspeed = -32
        self.con = 46
    }
    if (self.con == 46)
    {
        if (self.l.x <= (self.xx + 360))
        {
            self.ex = instance_create((self.r.x + 30), (self.r.y + 30), obj_animation)
            self.ex.sprite_index = spr_realisticexplosion
            self.ex.image_xscale = 2
            self.ex.image_yscale = 2
            self.ex.image_speed = 0.5
            self.ex.depth = 10
            global.currentsong[0] = snd_init("lancer.ogg")
            with (self.l)
                self.hspeed = 0
            with (self.r)
            {
                self.hspeed = -32
                self.vspeed = -8
                self.gravity = 0.2
            }
            self.rflip = 1
            snd_play(snd_badexplosion)
            instance_create(0, 0, obj_shake)
            self.con = 47
            self.alarm[4] = 60
        }
    }
    if (self.con == 48)
    {
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 1)
        self.con = 49
        global.fc = 5
        global.fe = 1
        global.typer = 32
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_276_0")
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_277_0")
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_278_0")
        global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_279_0")
        scr_susface(4, 9)
        global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_281_0")
        scr_lanface(6, 0)
        global.msg[7] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_283_0")
        if (global.flag[203] == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_287_0")
            global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_288_0")
            scr_susface(2, 9)
            global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_290_0")
            scr_lanface(4, 0)
            global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_292_0")
        }
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
    }
    if ((self.con == 49) && (d_ex() == 0))
    {
        self.con = 50
        snd_play(snd_lancerwhistle)
        with (self.l)
            self.sprite_index = spr_lancerbike_l
        self.siner = 0
        self.maxamt = 20
    }
    if (self.con == 50)
    {
        self.siner += 1
        self.l.image_xscale = (2 * cos((((self.siner * 2) * 3.14159265358979) / self.maxamt)))
        if (self.siner >= self.maxamt)
        {
            self.con = 51
            if (global.flag[203] == 1)
                self.con = 54
            self.l.image_xscale = 2
            self.alarm[4] = 15
        }
    }
    if (self.con == 52)
    {
        with (self.l)
            self.sprite_index = spr_lancerbike
        global.fe = 1
        global.fc = 5
        global.typer = 32
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_327_0")
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_328_0")
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_329_0")
        global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_330_0")
        scr_susface(4, 0)
        global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_332_0")
        scr_lanface(6, 1)
        global.msg[7] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_334_0")
        global.msg[8] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_335_0")
        global.msg[9] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_336_0")
        global.msg[10] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_337_0")
        global.msg[11] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_338_0")
        global.msg[12] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_339_0")
        global.msg[13] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_340_0")
        scr_susface(14, 1)
        global.msg[15] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_342_0")
        scr_lanface(16, 6)
        global.msg[17] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_344_0")
        scr_susface(18, 2)
        global.msg[19] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_346_0")
        global.msg[20] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_347_0")
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 70
    }
    if (self.con == 55)
    {
        with (self.l)
            self.sprite_index = spr_lancerbike
        global.fc = 5
        global.fe = 1
        global.typer = 32
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_360_0")
        scr_susface(1, 0)
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_362_0")
        scr_lanface(3, 0)
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_364_0")
        scr_susface(5, 1)
        global.msg[6] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_366_0")
        scr_lanface(7, 4)
        global.msg[8] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_368_0")
        self.d = instance_create(0, 0, obj_dialoguer)
        with (self.d)
            self.side = 1
        self.con = 56
    }
    if ((self.con == 56) && (d_ex() == 0))
    {
        self.r2 = scr_dark_marker((self.xx - 60), (self.yy + 80), spr_ralsei_hood)
        with (self.r2)
            self.hspeed = 16
        self.con = 57
        self.alarm[4] = 15
    }
    if (self.con == 58)
    {
        global.typer = 6
        with (self.r2)
            self.hspeed = 0
        global.fc = 2
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_388_0")
        scr_lanface(1, 0)
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_390_0")
        scr_ralface(3, 0)
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_392_0")
        scr_susface(5, 0)
        global.msg[6] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_394_0")
        self.d = instance_create(0, 0, obj_dialoguer)
        with (self.d)
            self.side = 1
        self.con = 59
    }
    if ((self.con == 59) && (d_ex() == 0))
    {
        with (self.r2)
            self.hspeed = -8
        self.con = 60
        self.alarm[4] = 30
    }
    if (self.con == 61)
    {
        global.fc = 5
        global.fe = 6
        global.typer = 32
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_412_0")
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_413_0")
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_414_0")
        global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_415_0")
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_416_0")
        scr_susface(5, 2)
        global.msg[6] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_418_0")
        scr_lanface(7, 7)
        global.msg[8] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_420_0")
        self.d = instance_create(0, 0, obj_dialoguer)
        with (self.d)
            self.side = 1
        self.con = 62
    }
    if ((self.con == 62) && (d_ex() == 0))
    {
        self.r3 = scr_dark_marker((self.xx - 60), (self.yy + 80), spr_ralsei_hood)
        with (self.r3)
            self.hspeed = 16
        self.con = 63
        self.alarm[4] = 15
    }
    if (self.con == 64)
    {
        with (self.r3)
            self.hspeed = 0
        global.typer = 6
        global.fc = 2
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_440_0")
        scr_susface(1, 0)
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_442_0")
        self.d = instance_create(0, 0, obj_dialoguer)
        with (self.d)
            self.side = 1
        self.con = 65
    }
    if ((self.con == 65) && (d_ex() == 0))
    {
        with (self.r3)
            self.hspeed = -8
        self.con = 66
        self.alarm[4] = 40
    }
    if (self.con == 67)
    {
        global.typer = 30
        global.fc = 1
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_460_0")
        scr_lanface(1, 1)
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_462_0")
        scr_susface(3, 2)
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_464_0")
        global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_465_0")
        self.d = instance_create(0, 0, obj_dialoguer)
        with (self.d)
            self.side = 1
        self.con = 70
    }
    if (self.con == 72)
    {
        global.flag[9] = 1
        global.batmusic[0] = snd_init("battle.ogg")
        global.encounterno = 2
        global.specialbattle = 3
        scr_getchar(2)
        obj_mainchara.x = self.k.x
        obj_mainchara.y = self.k.y
        global.cinstance[0] = instance_create(self.s.x, self.s.y, obj_caterpillarchara)
        with (self.k)
            instance_destroy()
        with (self.s)
            instance_destroy()
        instance_create(0, 0, obj_encounterbasic)
        self.con = 73
        with (self.l)
        {
            self.direction = point_direction(self.x, self.y, global.monstermakex[0], global.monstermakey[0])
            self.speed = (point_distance(self.x, self.y, global.monstermakex[0], global.monstermakey[0]) / 10)
        }
        self.alarm[4] = 10
    }
    if ((self.con == 70) && (d_ex() == 0))
    {
        snd_free_all()
        self.con = 71
        self.alarm[4] = 2
    }
    if (self.con == 74)
    {
        with (self.l)
            self.speed = 0
        if instance_exists(obj_battlecontroller)
        {
            with (self.l)
                instance_destroy()
            self.con = 75
        }
    }
    if (self.con == 75)
    {
        if (global.plot == 22)
        {
            if (instance_exists(obj_battlecontroller) == 0)
            {
                if (instance_exists(obj_endbattle) == 0)
                    self.con = 76
            }
            self.alarm[4] = 5
        }
    }
    if (self.con == 77)
    {
        self.rflip = 0
        global.interact = 1
        self.k = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, spr_krisu_dark)
        self.s = scr_dark_marker(global.cinstance[0].x, global.cinstance[0].y, spr_susieu_dark)
        with (obj_mainchara)
            self.visible = 0
        with (global.cinstance[0])
            instance_destroy()
        self.con = 78
        self.alarm[4] = 15
    }
    if (self.con == 79)
    {
        self.r = scr_dark_marker(95, 310, spr_ralsei_hood)
        self.r.hspeed = 16
        self.con = 80
        self.alarm[4] = 25
    }
    if (self.con == 81)
    {
        with (self.r)
            self.speed = 0
        global.fc = 2
        global.fe = 1
        global.typer = 6
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_552_0")
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 82
    }
    if ((self.con == 82) && (d_ex() == 0))
    {
        with (self.r)
            self.vspeed = 6
        with (self.r)
            self.depth = 1000
        self.con = 83
        self.alarm[4] = 10
    }
    if (self.con == 84)
    {
        with (self.r)
            self.vspeed = 0
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_569_0")
        scr_susface(1, 0)
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_571_0")
        global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_572_0")
        scr_ralface(4, 0)
        global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_574_0")
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 85
    }
    if ((self.con == 85) && (d_ex() == 0))
    {
        snd_play(snd_noise)
        with (self.r)
        {
            self.sprite_index = spr_ralsei_removehood
            self.image_index = 0
            self.image_speed = 0.1
        }
        self.con = 86
        self.alarm[4] = 60
    }
    if (self.con == 87)
    {
        with (self.r)
        {
            self.sprite_index = spr_ralseid
            self.image_index = 0
            self.image_speed = 0
        }
        global.flag[30] = 0
        self.con = 88
        self.alarm[4] = 30
    }
    if (self.con == 89)
    {
        global.typer = 31
        global.fc = 2
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_611_0")
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_612_0")
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_613_0")
        scr_susface(3, 0)
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_615_0")
        scr_ralface(5, 0)
        global.msg[6] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_617_0")
        scr_susface(7, 0)
        global.msg[8] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_619_0")
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 90
    }
    if ((self.con == 90) && (d_ex() == 0))
    {
        with (self.s)
            self.sprite_index = spr_susier_dark
        self.con = 91
        self.alarm[4] = 40
    }
    if (self.con == 92)
    {
        with (self.k)
            self.sprite_index = spr_krisr_dark
        global.fc = 1
        global.fe = 2
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_637_0")
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 93
    }
    if ((self.con == 93) && (d_ex() == 0))
    {
        with (self.k)
            self.sprite_index = spr_krisd_dark
        with (self.s)
        {
            self.vspeed = 4
            self.image_speed = 0.2
            self.sprite_index = spr_susied_dark
        }
        self.con = 94
        self.alarm[4] = 70
    }
    if (self.con == 95)
    {
        with (self.k)
            self.sprite_index = spr_krisu_dark
        global.typer = 31
        global.fc = 2
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_663_0")
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_664_0")
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 96
    }
    if ((self.con == 96) && (d_ex() == 0))
    {
        with (self.k)
            self.sprite_index = spr_krisr_dark
        with (self.r)
        {
            self.hspeed = 1
            self.vspeed = 2
            self.image_speed = 0.2
        }
        self.con = 97
    }
    if (self.con == 97)
    {
        if (self.r.y >= (self.k.y - 12))
        {
            self.r.y = (self.k.y - 12)
            self.r.image_speed = 0
            self.r.image_index = 0
            self.r.sprite_index = spr_ralseil
            self.r.speed = 0
            self.r.vspeed = 0
            self.r.hspeed = 0
            self.con = 98
            self.alarm[4] = 30
        }
    }
    if (self.con == 99)
    {
        global.fe = 5
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_702_0")
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_703_0")
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_704_0")
        global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_705_0")
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_706_0")
        global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_707_0")
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 100
    }
    if ((self.con == 100) && (d_ex() == 0))
    {
        with (self.r)
            self.sprite_index = spr_ralseid
        self.con = 101
        self.alarm[4] = 40
    }
    if (self.con == 102)
    {
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_723_0")
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 103
    }
    if ((self.con == 103) && (d_ex() == 0))
    {
        with (self.r)
        {
            self.hspeed = -4
            self.image_speed = 0.2
            self.sprite_index = spr_ralseil
        }
        self.con = 104
    }
    if (self.con == 104)
    {
        if (self.r.x <= (self.k.x - 70))
        {
            with (self.r)
                scr_halt()
            with (self.r)
                self.sprite_index = spr_ralseir
            self.con = 105
            global.fe = 8
            global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_749_0")
            self.d = instance_create(0, 0, obj_dialoguer)
            self.d.side = 1
        }
    }
    if ((self.con == 105) && (d_ex() == 0))
    {
        self.con = 107
        global.currentsong[0] = snd_init("castletown_empty.ogg")
        self.alarm[4] = 30
        scr_pan_to_obj(obj_mainchara, 25)
    }
    if (self.con == 109)
    {
        with (self.r)
            instance_destroy()
        self.con = 110
        instance_destroy()
    }
    if (self.con == 108)
    {
        scr_losechar()
        scr_getchar(3)
        global.facing = 1
        obj_mainchara.visible = 1
        obj_mainchara.cutscene = 0
        with (self.k)
            instance_destroy()
        global.cinstance[0] = instance_create((self.r.x + 4), (self.r.y + 12), obj_caterpillarchara)
        with (global.cinstance[0])
        {
            scr_caterpillar_interpolate()
            self.usprite = spr_ralseiu
            self.dsprite = spr_ralseid
            self.rsprite = spr_ralseir
            self.lsprite = spr_ralseil
            for (self.i = 0; self.i < 50; self.i += 1)
                self.facing[self.i] = 1
            self.x -= 4
            self.y -= 12
        }
        self.con = 109
        scr_tempsave()
        global.currentsong[1] = mus_loop(global.currentsong[0])
        global.plot = 30
        global.interact = 0
    }
}
if (self.rflip == 1)
{
    if instance_exists(self.r)
    {
        with (self.r)
            self.image_angle += 2
    }
}
