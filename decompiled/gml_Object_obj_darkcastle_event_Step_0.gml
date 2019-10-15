if (self.con < 40)
{
    if (self.con == 2)
    {
        self.xx = __view_get(e__VW.XView, 0)
        self.yy = __view_get(e__VW.YView, 0)
        with(self.k)
        {
            scr_halt()
        }
        with(self.s)
        {
            scr_halt()
        }
        self.con = 3
        self.alarm[4] = 30
    }
    if (self.con == 4)
    {
        with(obj_mainchara)
        {
            self.cutscene = 1
        }
        global.fe = 0
        global.fc = 1
        global.typer = 30
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_20_0"@5131)
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_21_0"@5132)
        self.con = 5
        instance_create(0, 0, obj_dialoguer)
    }
    if (self.con == 5)
        _temp_local_var_1 = (d_ex() == 0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        self.con = 6
        global.fc = 0
        global.typer = 42
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_32_0"@5133)
        self.wr = instance_create((self.xx + 200), (self.yy + 100), obj_writer)
        if (scr_debug() == 0)
        {
            with(self.wr)
            {
                self.skippable = 0
            }
        }
    }
    if (self.con == 6)
    {
        if (instance_exists(self.wr) == 0)
        {
            global.fe = 9
            global.fc = 1
            global.typer = 30
            global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_46_0"@5135)
            self.con = 7
            instance_create(0, 0, obj_dialoguer)
        }
    }
    if (self.con == 7)
        _temp_local_var_2 = (d_ex() == 0)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        global.fc = 0
        self.con = 8
        global.typer = 42
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_58_0"@5136)
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_59_0"@5137)
        self.wr = instance_create((self.xx + 200), (self.yy + 100), obj_writer)
        if (scr_debug() == 0)
        {
            with(self.wr)
            {
                self.skippable = 0
            }
        }
    }
    if (self.con == 8)
    {
        if (instance_exists(self.wr) == 0)
        {
            self.r = scr_dark_marker(495, 310, spr_ralsei_hood)
            with(self.r)
            {
                self.depth = 100
            }
            with(self.s)
            {
                self.vspeed = -4
                self.image_speed = 0.1
            }
            with(self.k)
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
        with(self.k)
        {
            scr_halt()
        }
        with(self.s)
        {
            scr_halt()
        }
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
    if (self.con == 20)
        _temp_local_var_3 = (d_ex() == 0)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
    {
        self.fade = instance_create(0, 0, obj_fadeout)
        with(self.fade)
        {
            self.fadespeed = 0.01
        }
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
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_142_0"@5139)
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_143_0"@5140)
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_144_0"@5141)
        global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_145_0"@5142)
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_146_0"@5143)
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 35
    }
    if (self.con == 30)
        _temp_local_var_4 = (d_ex() == 1)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
    {
        if (scr_getmsgno() == 17)
        {
            with(self.s)
            {
                self.sprite_index = spr_susier_dark
            }
        }
        if (scr_getmsgno() == 18)
        {
            with(self.s)
            {
                self.sprite_index = spr_susied_dark
            }
        }
    }
    if (self.con == 30)
        _temp_local_var_5 = (d_ex() == 0)
    else
        _temp_local_var_5 = 0
    if _temp_local_var_5
        self.con = 40
    if (self.con == 35)
        _temp_local_var_6 = (d_ex() == 0)
    else
        _temp_local_var_6 = 0
    if _temp_local_var_6
    {
        with(self.s)
        {
            self.sprite_index = spr_susier_dark
        }
        self.con = 36
        self.alarm[4] = 50
    }
    if (self.con == 37)
    {
        with(self.s)
        {
            self.sprite_index = spr_susieu_dark
        }
        global.typer = 30
        global.fe = 0
        global.fc = 1
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_181_0"@5145)
        scr_ralface(1, 1)
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_183_0"@5146)
        scr_susface(3, 0)
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_185_0"@5147)
        global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_186_0"@5148)
        scr_ralface(6, 1)
        global.msg[7] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_188_0"@5149)
        scr_susface(8, 0)
        global.msg[9] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_190_0"@5150)
        global.msg[10] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_191_0"@5151)
        global.msg[11] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_192_0"@5152)
        scr_ralface(12, 0)
        global.msg[13] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_194_0"@5153)
        scr_susface(14, 0)
        global.msg[15] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_196_0"@5154)
        global.msg[16] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_197_0"@5155)
        global.msg[17] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_198_0"@5156)
        global.msg[18] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_199_0"@5157)
        scr_ralface(19, 1)
        global.msg[20] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_201_0"@5158)
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 38
    }
    if (self.con == 38)
        _temp_local_var_7 = (d_ex() == 1)
    else
        _temp_local_var_7 = 0
    if _temp_local_var_7
    {
        if (scr_getmsgno() == 0)
        {
            with(self.s)
            {
                self.sprite_index = spr_susieu_dark
            }
        }
        if (scr_getmsgno() == 9)
        {
            with(self.s)
            {
                self.sprite_index = spr_susier_dark
            }
        }
        if (scr_getmsgno() == 13)
        {
            with(self.s)
            {
                self.sprite_index = spr_susieu_dark
            }
        }
        if (scr_getmsgno() == 15)
        {
            with(self.s)
            {
                self.sprite_index = spr_susiel_dark
            }
        }
        if (scr_getmsgno() == 18)
        {
            with(self.s)
            {
                self.sprite_index = spr_susied_dark
            }
        }
    }
    if (self.con == 38)
        _temp_local_var_8 = (d_ex() == 0)
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
        self.con = 40
}
else
{
    if (self.con == 40)
        _temp_local_var_17 = (d_ex() == 0)
    else
        _temp_local_var_17 = 0
    if _temp_local_var_17
    {
        with(self.s)
        {
            self.sprite_index = spr_susieu_dark
        }
        snd_play(snd_lancerlaugh)
        self.con = 44
        self.alarm[4] = 50
    }
    if (self.con == 45)
    {
        snd_play(snd_drive)
        self.xx = __view_get(e__VW.XView, 0)
        self.yy = __view_get(e__VW.YView, 0)
        self.l = scr_dark_marker((self.xx + 720), ((self.r.y + self.r.sprite_height) - 10), spr_lancerbike)
        with(self.l)
        {
            self.hspeed = -32
        }
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
            global.currentsong[0] = snd_init("lancer.ogg"@4596)
            with(self.l)
            {
                self.hspeed = 0
            }
            with(self.r)
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
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_276_0"@5160)
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_277_0"@5161)
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_278_0"@5162)
        global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_279_0"@5163)
        scr_susface(4, 9)
        global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_281_0"@5164)
        scr_lanface(6, 0)
        global.msg[7] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_283_0"@5165)
        if (global.flag[203] == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_287_0"@5166)
            global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_288_0"@5167)
            scr_susface(2, 9)
            global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_290_0"@5168)
            scr_lanface(4, 0)
            global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_292_0"@5169)
        }
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
    }
    if (self.con == 49)
        _temp_local_var_18 = (d_ex() == 0)
    else
        _temp_local_var_18 = 0
    if _temp_local_var_18
    {
        self.con = 50
        snd_play(snd_lancerwhistle)
        with(self.l)
        {
            self.sprite_index = spr_lancerbike_l
        }
        self.siner = 0
        self.maxamt = 20
    }
    if (self.con == 50)
    {
        self.siner = (self.siner + 1)
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
        with(self.l)
        {
            self.sprite_index = spr_lancerbike
        }
        global.fe = 1
        global.fc = 5
        global.typer = 32
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_327_0"@5171)
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_328_0"@5172)
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_329_0"@5173)
        global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_330_0"@5174)
        scr_susface(4, 0)
        global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_332_0"@5175)
        scr_lanface(6, 1)
        global.msg[7] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_334_0"@5176)
        global.msg[8] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_335_0"@5177)
        global.msg[9] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_336_0"@5178)
        global.msg[10] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_337_0"@5179)
        global.msg[11] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_338_0"@5180)
        global.msg[12] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_339_0"@5181)
        global.msg[13] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_340_0"@5182)
        scr_susface(14, 1)
        global.msg[15] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_342_0"@5183)
        scr_lanface(16, 6)
        global.msg[17] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_344_0"@5184)
        scr_susface(18, 2)
        global.msg[19] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_346_0"@5185)
        global.msg[20] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_347_0"@5186)
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 70
    }
    if (self.con == 55)
    {
        with(self.l)
        {
            self.sprite_index = spr_lancerbike
        }
        global.fc = 5
        global.fe = 1
        global.typer = 32
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_360_0"@5187)
        scr_susface(1, 0)
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_362_0"@5188)
        scr_lanface(3, 0)
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_364_0"@5189)
        scr_susface(5, 1)
        global.msg[6] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_366_0"@5190)
        scr_lanface(7, 4)
        global.msg[8] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_368_0"@5191)
        self.d = instance_create(0, 0, obj_dialoguer)
        with(self.d)
        {
            self.side = 1
        }
        self.con = 56
    }
    if (self.con == 56)
        _temp_local_var_19 = (d_ex() == 0)
    else
        _temp_local_var_19 = 0
    if _temp_local_var_19
    {
        self.r2 = scr_dark_marker((self.xx - 60), (self.yy + 80), spr_ralsei_hood)
        with(self.r2)
        {
            self.hspeed = 16
        }
        self.con = 57
        self.alarm[4] = 15
    }
    if (self.con == 58)
    {
        global.typer = 6
        with(self.r2)
        {
            self.hspeed = 0
        }
        global.fc = 2
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_388_0"@5192)
        scr_lanface(1, 0)
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_390_0"@5193)
        scr_ralface(3, 0)
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_392_0"@5194)
        scr_susface(5, 0)
        global.msg[6] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_394_0"@5195)
        self.d = instance_create(0, 0, obj_dialoguer)
        with(self.d)
        {
            self.side = 1
        }
        self.con = 59
    }
    if (self.con == 59)
        _temp_local_var_20 = (d_ex() == 0)
    else
        _temp_local_var_20 = 0
    if _temp_local_var_20
    {
        with(self.r2)
        {
            self.hspeed = -8
        }
        self.con = 60
        self.alarm[4] = 30
    }
    if (self.con == 61)
    {
        global.fc = 5
        global.fe = 6
        global.typer = 32
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_412_0"@5196)
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_413_0"@5197)
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_414_0"@5198)
        global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_415_0"@5199)
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_416_0"@5200)
        scr_susface(5, 2)
        global.msg[6] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_418_0"@5201)
        scr_lanface(7, 7)
        global.msg[8] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_420_0"@5202)
        self.d = instance_create(0, 0, obj_dialoguer)
        with(self.d)
        {
            self.side = 1
        }
        self.con = 62
    }
    if (self.con == 62)
        _temp_local_var_21 = (d_ex() == 0)
    else
        _temp_local_var_21 = 0
    if _temp_local_var_21
    {
        self.r3 = scr_dark_marker((self.xx - 60), (self.yy + 80), spr_ralsei_hood)
        with(self.r3)
        {
            self.hspeed = 16
        }
        self.con = 63
        self.alarm[4] = 15
    }
    if (self.con == 64)
    {
        with(self.r3)
        {
            self.hspeed = 0
        }
        global.typer = 6
        global.fc = 2
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_440_0"@5204)
        scr_susface(1, 0)
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_442_0"@5205)
        self.d = instance_create(0, 0, obj_dialoguer)
        with(self.d)
        {
            self.side = 1
        }
        self.con = 65
    }
    if (self.con == 65)
        _temp_local_var_22 = (d_ex() == 0)
    else
        _temp_local_var_22 = 0
    if _temp_local_var_22
    {
        with(self.r3)
        {
            self.hspeed = -8
        }
        self.con = 66
        self.alarm[4] = 40
    }
    if (self.con == 67)
    {
        global.typer = 30
        global.fc = 1
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_460_0"@5206)
        scr_lanface(1, 1)
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_462_0"@5207)
        scr_susface(3, 2)
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_464_0"@5208)
        global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_465_0"@5209)
        self.d = instance_create(0, 0, obj_dialoguer)
        with(self.d)
        {
            self.side = 1
        }
        self.con = 70
    }
    if (self.con == 72)
    {
        global.flag[9] = 1
        global.batmusic[0] = snd_init("battle.ogg"@4970)
        global.encounterno = 2
        global.specialbattle = 3
        scr_getchar(2)
        obj_mainchara.x = self.k.x
        obj_mainchara.y = self.k.y
        global.cinstance[0] = instance_create(self.s.x, self.s.y, obj_caterpillarchara)
        with(self.k)
        {
            instance_destroy()
        }
        with(self.s)
        {
            instance_destroy()
        }
        instance_create(0, 0, obj_encounterbasic)
        self.con = 73
        with(self.l)
        {
            self.direction = point_direction(self.x, self.y, global.monstermakex[0], global.monstermakey[0])
            self.speed = (point_distance(self.x, self.y, global.monstermakex[0], global.monstermakey[0]) / 10)
        }
        self.alarm[4] = 10
    }
    if (self.con == 70)
        _temp_local_var_23 = (d_ex() == 0)
    else
        _temp_local_var_23 = 0
    if _temp_local_var_23
    {
        snd_free_all()
        self.con = 71
        self.alarm[4] = 2
    }
    if (self.con == 74)
    {
        with(self.l)
        {
            self.speed = 0
        }
        if instance_exists(obj_battlecontroller)
        {
            with(self.l)
            {
                instance_destroy()
            }
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
        with(obj_mainchara)
        {
            self.visible = 0
        }
        with(global.cinstance[0])
        {
            instance_destroy()
        }
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
        with(self.r)
        {
            self.speed = 0
        }
        global.fc = 2
        global.fe = 1
        global.typer = 6
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_552_0"@5212)
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 82
    }
    if (self.con == 82)
        _temp_local_var_24 = (d_ex() == 0)
    else
        _temp_local_var_24 = 0
    if _temp_local_var_24
    {
        with(self.r)
        {
            self.vspeed = 6
        }
        with(self.r)
        {
            self.depth = 1000
        }
        self.con = 83
        self.alarm[4] = 10
    }
    if (self.con == 84)
    {
        with(self.r)
        {
            self.vspeed = 0
        }
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_569_0"@5213)
        scr_susface(1, 0)
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_571_0"@5214)
        global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_572_0"@5215)
        scr_ralface(4, 0)
        global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_574_0"@5216)
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 85
    }
    if (self.con == 85)
        _temp_local_var_25 = (d_ex() == 0)
    else
        _temp_local_var_25 = 0
    if _temp_local_var_25
    {
        snd_play(snd_noise)
        with(self.r)
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
        with(self.r)
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
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_611_0"@5217)
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_612_0"@5218)
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_613_0"@5219)
        scr_susface(3, 0)
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_615_0"@5220)
        scr_ralface(5, 0)
        global.msg[6] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_617_0"@5221)
        scr_susface(7, 0)
        global.msg[8] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_619_0"@5222)
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 90
    }
    if (self.con == 90)
        _temp_local_var_26 = (d_ex() == 0)
    else
        _temp_local_var_26 = 0
    if _temp_local_var_26
    {
        with(self.s)
        {
            self.sprite_index = spr_susier_dark
        }
        self.con = 91
        self.alarm[4] = 40
    }
    if (self.con == 92)
    {
        with(self.k)
        {
            self.sprite_index = spr_krisr_dark
        }
        global.fc = 1
        global.fe = 2
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_637_0"@5223)
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 93
    }
    if (self.con == 93)
        _temp_local_var_27 = (d_ex() == 0)
    else
        _temp_local_var_27 = 0
    if _temp_local_var_27
    {
        with(self.k)
        {
            self.sprite_index = spr_krisd_dark
        }
        with(self.s)
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
        with(self.k)
        {
            self.sprite_index = spr_krisu_dark
        }
        global.typer = 31
        global.fc = 2
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_663_0"@5224)
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_664_0"@5225)
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 96
    }
    if (self.con == 96)
        _temp_local_var_28 = (d_ex() == 0)
    else
        _temp_local_var_28 = 0
    if _temp_local_var_28
    {
        with(self.k)
        {
            self.sprite_index = spr_krisr_dark
        }
        with(self.r)
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
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_702_0"@5226)
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_703_0"@5227)
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_704_0"@5228)
        global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_705_0"@5229)
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_706_0"@5230)
        global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_707_0"@5231)
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 100
    }
    if (self.con == 100)
        _temp_local_var_29 = (d_ex() == 0)
    else
        _temp_local_var_29 = 0
    if _temp_local_var_29
    {
        with(self.r)
        {
            self.sprite_index = spr_ralseid
        }
        self.con = 101
        self.alarm[4] = 40
    }
    if (self.con == 102)
    {
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_723_0"@5232)
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 103
    }
    if (self.con == 103)
        _temp_local_var_30 = (d_ex() == 0)
    else
        _temp_local_var_30 = 0
    if _temp_local_var_30
    {
        with(self.r)
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
            with(self.r)
            {
                scr_halt()
            }
            with(self.r)
            {
                self.sprite_index = spr_ralseir
            }
            self.con = 105
            global.fe = 8
            global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_749_0"@5233)
            self.d = instance_create(0, 0, obj_dialoguer)
            self.d.side = 1
        }
    }
    if (self.con == 105)
        _temp_local_var_31 = (d_ex() == 0)
    else
        _temp_local_var_31 = 0
    if _temp_local_var_31
    {
        self.con = 107
        global.currentsong[0] = snd_init("castletown_empty.ogg"@5234)
        self.alarm[4] = 30
        scr_pan_to_obj(obj_mainchara, 25)
    }
    if (self.con == 109)
    {
        with(self.r)
        {
            instance_destroy()
        }
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
        with(self.k)
        {
            instance_destroy()
        }
        global.cinstance[0] = instance_create((self.r.x + 4), (self.r.y + 12), obj_caterpillarchara)
        with(global.cinstance[0])
        {
            scr_caterpillar_interpolate()
            self.usprite = 206
            self.dsprite = 204
            self.rsprite = 209
            self.lsprite = 207
            self.i = 0
            while(true)
            {
                if (self.i < 50)
                {
                    self.facing[self.i] = 1
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
            self.x = (self.x - 4)
            self.y = (self.y - 12)
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
        with(self.r)
        {
            self.image_angle = (self.image_angle + 2)
        }
    }
}
