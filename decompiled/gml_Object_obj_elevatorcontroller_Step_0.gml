if scr_debug()
{
    if keyboard_check_pressed(ord("2"))
    {
        if ((self.mergecon == 0) && (self.cno < self.cmax))
        {
            self.mergecon = 1
            self.newcno = (self.cno + 1)
        }
    }
    if keyboard_check_pressed(ord("0"))
    {
        if (global.interact == 0)
        {
            global.interact = 1
            if (self.movecon == 0)
                self.movecon = 1
            if ((self.mergecon == 0) && (self.cno > 0))
                self.newcno = (self.cno - 1)
        }
    }
    if keyboard_check_pressed(ord("1"))
    {
        if (self.movecon == 4)
            self.movecon = 2
        if (self.movecon == 0)
        {
            self.movecon = 3
            if (self.cno > 0)
                self.newcno = (self.cno - 1)
        }
    }
}
if (self.movecon == 1)
{
    with (obj_mainchara)
        self.cutscene = 1
    self.maxrectspeed = 14
    self.movetimer = 0
    self.movecon = 2
    self.doorcon = 2
    self.charadjustcon = 1
    self.rectspacing = 120
    self.shakecon = 1
    self.rectcon = 1
}
if (self.movecon == 2)
{
    self.movetimer += 1
    if (self.movetimer == 10)
    {
        self.mergecon = 1
        self.mergespeed = 0.05
    }
    if (self.movetimer == 30)
    {
        if (self.charadjustcon >= 2)
            self.charadjustcon = 3
        self.cno = self.newcno
        self.doorcon = 1
        self.shakecon = 3
        self.rectcon = 3
    }
    if (self.movetimer >= 40)
    {
        self.movecon = 0
        if (global.interact == 1)
            global.interact = 0
        self.charadjustcon = 0
    }
}
if (self.movecon == 3)
{
    with (obj_mainchara)
        self.cutscene = 1
    self.doorcon = 2
    self.maxrectspeed = 10
    self.movetimer = 0
    self.movecon = 4
    self.rectspacing = 240
    self.shakecon = 1
    self.rectcon = 1
}
if (self.mergecon == 1)
{
    self.prev_bg_c = self.bg_c[self.cno]
    self.ideal_bg_c = self.bg_c[self.newcno]
    if (self.movecon == 0)
        self.cno = self.newcno
    self.mergecon = 2
    self.mergetimer = 0
    self.merge_amt = 0
}
if (self.mergecon == 2)
{
    self.merge_amt += self.mergespeed
    if (self.merge_amt >= 1)
    {
        self.merge_amt = 1
        self.mergecon = 3
    }
    self.cur_bg_c = merge_color(self.prev_bg_c, self.ideal_bg_c, self.merge_amt)
}
if (self.mergecon == 3)
    self.mergecon = 0
if (self.shakecon == 1)
{
    self.shakeamt = 0
    self.shaketimer = 0
    self.shakecon = 2
}
if (self.shakecon == 2)
{
    if (abs(__view_get(1, 0)) < 4)
        __view_set(1, 0, (__view_get(1, 0) - (self.dir * 0.5)))
}
if (self.shakecon == 3)
{
    snd_play(snd_screenshake)
    self.shakeamt = 4
    self.shakecon = 4
}
if (self.shakecon == 4)
{
    if (self.shakeamt >= 0)
    {
        __view_set(0, 0, ((0 - random(self.shakeamt)) + random(self.shakeamt)))
        __view_set(1, 0, ((0 - random(self.shakeamt)) + random(self.shakeamt)))
        self.shakeamt -= 0.5
    }
    else
    {
        __view_set(0, 0, 0)
        __view_set(1, 0, 0)
        self.shakecon = 0
    }
}
if (self.rectcon == 1)
{
    self.rectcon = 0
    self.rectspeed = 0
    self.rect_alpha = 0
    self.recty = 0
    self.rectcon = 2
}
if (self.rectcon == 2)
{
    if (self.dir == 1)
    {
        if (self.rectspeed < self.maxrectspeed)
            self.rectspeed += 1
    }
    if (self.dir == -1)
    {
        if (self.rectspeed > (-self.maxrectspeed))
            self.rectspeed -= 1
    }
    if (self.rect_alpha < 0.2)
        self.rect_alpha += 0.02
    self.recty += self.rectspeed
    if (self.recty >= self.rectspacing)
        self.recty -= self.rectspacing
    if (self.recty <= (-self.rectspacing))
        self.recty += self.rectspacing
}
if (self.rectcon == 3)
{
    if (self.rectspeed >= 6)
        self.rectspeed = 6
    if (self.rectspeed <= -6)
        self.rectspeed = -6
    if (self.rectspeed > 0)
        self.rectspeed -= 0.5
    if (self.rectspeed < 0)
        self.rectspeed += 0.5
    if (self.rect_alpha > 0)
        self.rect_alpha -= 0.02
    self.recty += self.rectspeed
    if (self.recty >= self.rectspacing)
        self.recty -= self.rectspacing
    if (self.recty <= (-self.rectspacing))
        self.recty += self.rectspacing
    if ((self.rectspeed == 0) && (self.rect_alpha == 0))
        self.rectcon = 0
}
if (self.doorcon == 1)
{
    if (self.doorx <= 40)
        self.doorx += 5
}
if (self.doorcon == 2)
{
    if (self.doorx >= 0)
        self.doorx -= 5
    if (self.doorx <= 0)
    {
        self.doorx = 0
        self.doorcon = 0
    }
}
if (self.charadjustcon == 1)
{
    self.ccount = 0
    self.exist[0] = 0
    self.exist[1] = 0
    self.charremy[0] = 0
    self.charremy[1] = 0
    if instance_exists(global.cinstance[0])
    {
        self.exist[0] = 1
        self.charremy[0] = global.cinstance[0].y
    }
    if instance_exists(global.cinstance[1])
    {
        self.exist[1] = 1
        self.charremy[1] = global.cinstance[1].y
    }
    self.charadjustcon = 2
}
if (self.charadjustcon == 2)
{
    for (self.i = 0; self.i < 2; self.i += 1)
    {
        if (self.exist[self.i] == 1)
        {
            with (global.cinstance[self.i])
            {
                if (self.y >= 260)
                    self.y -= 10
            }
        }
    }
}
if (self.charadjustcon == 3)
{
    self.ok[0] = 0
    self.ok[1] = 0
    for (self.i = 0; self.i < 2; self.i += 1)
    {
        if (self.exist[self.i] == 1)
        {
            if (global.cinstance[self.i].y < self.charremy[self.i])
            {
                with (global.cinstance[self.i])
                    self.y += 10
            }
            if (global.cinstance[self.i].y >= self.charremy[self.i])
                self.ok[self.i] = 1
        }
        else
            self.ok[self.i] = 1
    }
    if ((self.ok[0] == 1) && (self.ok[1] == 1))
        self.charadjustcon = 0
}
if (self.con >= 1)
{
    if (self.con == 1)
    {
        with (obj_caterpillarchara)
            instance_destroy()
        with (obj_mainchara)
            self.visible = 0
        global.interact = 1
        self.k = scr_dark_marker(300, 420, spr_krisu_dark)
        self.s = scr_dark_marker(300, 460, spr_susieu_dark)
        self.r = scr_dark_marker(300, 500, spr_ralseiu)
        self.cc[0] = self.k
        self.cc[1] = self.s
        self.cc[2] = self.r
        for (self.i = 0; self.i < 3; self.i += 1)
        {
            with (self.cc[self.i])
            {
                scr_depth()
                self.vspeed = -4
                self.image_speed = 0.25
            }
        }
        self.con = 2
    }
    if (self.con == 2)
    {
        global.interact = 1
        if (self.k.y <= 200)
        {
            with (self.k)
            {
                scr_halt()
                self.sprite_index = spr_krisd_dark
            }
        }
        if ((self.s.y <= 200) && (self.s.x == self.s.xstart))
        {
            with (self.s)
            {
                scr_halt()
                self.x -= 1
                self.hspeed = -4
                self.image_speed = 0.25
                self.sprite_index = spr_susiel_dark
            }
        }
        if (self.s.x <= 240)
        {
            with (self.s)
            {
                scr_halt()
                self.x = 240
                self.sprite_index = spr_susier_dark
            }
        }
        if ((self.r.y <= 275) && (self.r.x == self.r.xstart))
        {
            self.jup = 1
            with (self.r)
            {
                self.hspeed = 1.25
                self.vspeed = -2.25
            }
        }
        if (self.jup == 1)
            self.a_timer += 1
        if (self.a_timer >= 48)
        {
            with (self.r)
                scr_halt()
            self.con = 3
        }
    }
    if (self.con == 3)
    {
        with (self.k)
            scr_halt()
        with (self.r)
            scr_halt()
        with (self.s)
            scr_halt()
        self.con = 4
        self.alarm[4] = 30
    }
    if (self.con == 5)
    {
        with (self.r)
            self.sprite_index = spr_ralseid
        global.fc = 2
        global.typer = 31
        global.fe = 11
        global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_353_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 6
    }
    if ((self.con == 6) && (!d_ex()))
    {
        self.ele_noise = snd_init("elevator.ogg")
        self.ele_noise_ind = mus_loop_ext(self.ele_noise, 0.6, 0.1)
        with (self.r)
            self.sprite_index = spr_ralseiu
        snd_play(snd_item)
        self.movecon = 3
        self.newcno = 2
        self.con = 7
        self.pitchcount = 0.1
        self.alarm[4] = 45
    }
    if (self.con == 7)
    {
        self.pitchcount += 0.015
        snd_pitch(self.ele_noise_ind, self.pitchcount)
    }
    if (self.con == 8)
    {
        with (self.r)
            self.sprite_index = spr_ralseid
        global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_384_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 9
    }
    if ((self.con == 9) && (!d_ex()))
    {
        with (self.r)
        {
            self.vspeed = 2
            self.image_speed = 0.2
        }
        self.con = 10
        self.alarm[4] = 15
    }
    if (self.con == 11)
    {
        with (self.r)
            scr_halt()
        with (self.r)
        {
            self.sprite_index = spr_ralsei_sit
            self.image_speed = 0.25
        }
        self.con = 12
        snd_play(snd_wing)
        self.alarm[4] = 12
    }
    if (self.con == 13)
    {
        with (self.r)
        {
            self.image_speed = 0
            self.image_index = 2
        }
        self.con = 15
        self.alarm[4] = 20
    }
    if (self.con == 16)
    {
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_419_0")
        self.con = 17
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 17) && (!d_ex()))
    {
        with (self.s)
        {
            self.hspeed = -4
            self.image_speed = 0.2
        }
        with (self.k)
            self.sprite_index = spr_kris_fallen_dark
        snd_play(snd_wing)
        self.con = 18
        self.alarm[4] = 10
    }
    if (self.con == 19)
    {
        with (self.s)
        {
            scr_halt()
            self.sprite_index = spr_susier_wall
        }
        self.con = 20
        self.alarm[4] = 120
    }
    if (self.con == 21)
    {
        global.fc = 1
        global.typer = 30
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_448_0")
        global.msg[1] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_449_0")
        scr_ralface(2, "B")
        global.msg[3] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_451_0")
        scr_susface(4, 0)
        global.msg[5] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_453_0")
        global.msg[6] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_454_0")
        scr_ralface(7, "B")
        global.msg[8] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_456_0")
        scr_susface(9, 7)
        global.msg[10] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_458_0")
        global.msg[11] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_459_0")
        global.msg[12] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_460_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 22
    }
    if ((self.con == 22) && (!d_ex()))
    {
        self.con = 23
        self.alarm[4] = 90
    }
    if (self.con == 24)
    {
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_476_0")
        global.msg[1] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_477_0")
        scr_ralface(2, 3)
        global.msg[3] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_479_0")
        scr_susface(4, 6)
        global.msg[5] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_481_0")
        scr_ralface(6, 6)
        global.msg[7] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_483_0")
        global.msg[8] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_484_0")
        global.msg[9] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_485_0")
        scr_susface(10, 0)
        global.msg[11] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_487_0")
        global.msg[12] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_488_0")
        self.con = 25
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 25) && (!d_ex()))
    {
        self.con = 26
        self.alarm[4] = 90
    }
    if (self.con == 27)
    {
        global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_503_0")
        global.msg[1] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_504_0")
        scr_ralface(2, 0)
        global.msg[3] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_506_0")
        scr_susface(4, 0)
        global.msg[5] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_508_0")
        global.msg[6] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_509_0")
        scr_ralface(7, 6)
        global.msg[8] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_511_0")
        scr_susface(9, 0)
        global.msg[10] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_513_0")
        global.msg[11] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_514_0")
        scr_ralface(12, 8)
        global.msg[13] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_516_0")
        scr_susface(14, 2)
        global.msg[15] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_518_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 28
    }
    if ((self.con == 28) && (!d_ex()))
    {
        self.con = 29
        self.alarm[4] = 45
    }
    if (self.con == 30)
    {
        self.movecon = 2
        self.con = 31
        snd_volume(self.ele_noise_ind, 0, 60)
        self.alarm[4] = 60
    }
    if (self.con == 31)
    {
        if (self.pitchcount > 0.1)
            self.pitchcount -= 0.015
        snd_pitch(self.ele_noise_ind, self.pitchcount)
        global.interact = 1
    }
    if (self.con == 32)
    {
        snd_free(self.ele_noise)
        with (self.r)
            self.image_speed = -0.25
        self.con = 33
        self.alarm[4] = 7
    }
    if (self.con == 34)
    {
        with (self.r)
        {
            self.sprite_index = spr_ralseid
            self.image_index = 0
            self.vspeed = 4
            self.image_speed = 0.25
        }
        self.con = 35
    }
    if (self.con == 35)
    {
        if (self.r.y >= 270)
        {
            with (self.r)
            {
                self.vspeed = 0
                self.hspeed = -6
                self.sprite_index = spr_ralseil
            }
            self.con = 36
        }
    }
    if (self.con == 36)
    {
        if (self.r.x <= 300)
        {
            with (self.r)
            {
                scr_halt()
                self.sprite_index = spr_ralseiu
            }
            self.con = 37
            self.alarm[4] = 20
        }
    }
    if (self.con == 38)
    {
        global.fc = 2
        global.typer = 31
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_605_0")
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 0
        self.con = 39
    }
    if ((self.con == 39) && (!d_ex()))
    {
        with (self.r)
        {
            self.sprite_index = spr_ralseid
            self.vspeed = 4
            self.image_speed = 0.25
        }
        global.interact = 0
        self.con = 40
        self.kremx = self.k.x
        self.kremy = self.k.y
        snd_play(snd_wing)
        with (self.k)
            instance_destroy()
        obj_mainchara.x = self.kremx
        obj_mainchara.y = self.kremy
        global.facing = 0
        with (obj_mainchara)
            self.visible = 1
        self.movecounter = 0
    }
    if (self.con == 40)
    {
        if ((obj_mainchara.x != self.kremx) || (obj_mainchara.y != self.kremy))
            self.movecounter += 1
        if (self.movecounter >= 3)
        {
            self.con = 41
            global.interact = 1
            global.fc = 1
            global.typer = 30
            global.fe = 0
            global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_644_0")
            instance_create(0, 0, obj_dialoguer)
        }
    }
    if ((self.con == 41) && (!d_ex()))
    {
        with (self.s)
        {
            self.sprite_index = spr_susier_dark_unhappy
            self.image_speed = 0.1
            self.hspeed = 2
        }
        global.facing = 3
        self.con = 43
        self.alarm[4] = 15
    }
    if (self.con == 44)
    {
        with (self.s)
            scr_halt()
        self.con = 45
        self.alarm[4] = 30
    }
    if (self.con == 46)
    {
        global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_674_0")
        global.msg[1] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_675_0")
        global.msg[2] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_676_0")
        global.msg[3] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_677_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 47
    }
    if ((self.con == 47) && (!d_ex()))
    {
        with (self.s)
            self.sprite_index = spr_susieu_dark
        self.con = 48
        self.alarm[4] = 30
    }
    if (self.con == 49)
    {
        global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_691_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 50
    }
    if ((self.con == 50) && (!d_ex()))
    {
        with (self.s)
            self.sprite_index = spr_susiel_dark_unhappy
        self.con = 51
        self.alarm[4] = 60
    }
    if (self.con == 52)
    {
        with (self.s)
            self.sprite_index = spr_susier_dark
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_709_0")
        global.msg[1] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_710_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 53
    }
    if ((self.con == 53) && (!d_ex()))
    {
        with (self.s)
        {
            self.sprite_index = spr_susied_dark
            self.vspeed = 4
            self.image_speed = 0.25
        }
        self.con = 54
    }
    if (self.con == 54)
    {
        if (self.s.y >= 260)
        {
            global.facing = 0
            with (self.s)
            {
                scr_halt()
                self.hspeed = 4
                self.sprite_index = spr_susier_dark
                self.image_speed = 0.25
            }
            self.con = 55
        }
    }
    if (self.con == 55)
    {
        if (self.s.x >= 300)
        {
            with (self.s)
            {
                scr_halt()
                self.vspeed = 3
                self.sprite_index = spr_susied_dark_unhappy
                self.image_speed = 0.125
            }
            self.con = 56
        }
    }
    if (self.con == 56)
    {
        snd_free_all()
        if (self.s.y >= 320)
        {
            with (self.s)
                scr_halt()
            self.con = 57
            self.alarm[4] = 30
        }
    }
    if (self.con == 58)
    {
        global.currentsong[0] = snd_init("charjoined.ogg")
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_774_0")
        global.msg[1] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_775_0")
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 0
        self.con = 59
    }
    if ((self.con == 59) && (!d_ex()))
    {
        with (self.s)
        {
            self.vspeed = 6
            self.image_speed = 0.25
        }
        self.con = 60
        self.alarm[4] = 50
    }
    if (self.con == 61)
    {
        global.currentsong[1] = mus_play(global.currentsong[0])
        snd_volume(global.currentsong[1], 0.8, 0)
        global.typer = 6
        global.fc = 0
        global.msg[0] = scr_84_get_lang_string("obj_elevatorcontroller_slash_Step_0_gml_798_0")
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 0
        self.con = 62
        self.alarm[4] = 110
    }
    if (self.con == 63)
    {
        if (global.plot < 165)
            global.plot = 165
        with (obj_dialoguer)
            instance_destroy()
        with (obj_writer)
            instance_destroy()
        snd_free_all()
        global.interact = 0
        global.flag[239] = 1
        self.con = 64
    }
    if (self.con == 100)
    {
        global.interact = 1
        if (self.movecon == 0)
            self.movecon = 1
        self.con = 101
        snd_play(snd_spearappear)
        self.ele_noise = snd_init("elevator.ogg")
        self.ele_noise_ind = mus_loop_ext(self.ele_noise, 0.7, 0.5)
        self.pitchcount = 0.5
        self.volcount = 0.7
        self.pitchtimer = 0
        self.alarm[4] = 40
    }
    if (self.con == 101)
    {
        global.interact = 1
        self.pitchtimer += 1
        if (self.pitchtimer < 10)
            self.pitchcount += 0.04
        if (self.pitchtimer >= 30)
        {
            if (self.pitchcount > 0)
                self.pitchcount -= 0.08
            self.volcount -= 0.05
        }
        snd_pitch(self.ele_noise_ind, self.pitchcount)
        snd_volume(self.ele_noise_ind, self.volcount, 0)
    }
    if (self.con == 102)
    {
        snd_free(self.ele_noise)
        self.con = 0
        global.flag[239] = self.cno
        global.interact = 0
        global.facing = 0
    }
}
