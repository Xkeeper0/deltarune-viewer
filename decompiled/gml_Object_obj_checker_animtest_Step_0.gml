if (self.type == 0)
{
    if (self.con == 1)
    {
        self.x = (__view_get(0, 0) + 800)
        self.image_speed = 0.2
        self.sprite_index = spr_smallchecker_front
        global.interact = 1
        self.s = scr_dark_marker(-100, global.cinstance[1].y, spr_susier_dark)
        self.r = scr_dark_marker(-50, global.cinstance[0].y, spr_ralseir)
        self.k = scr_dark_marker(0, obj_mainchara.y, spr_krisr_dark)
        with (obj_caterpillarchara)
            self.visible = 0
        with (obj_mainchara)
            self.visible = 0
        with (obj_marker)
        {
            self.hspeed = 5
            self.image_speed = 0.2
        }
        self.l = scr_dark_marker(500, obj_mainchara.y, spr_lancer_rt)
        self.con = -50
        self.alarm[4] = 28
    }
    if (self.con == -49)
    {
        snd_free_all()
        with (obj_marker)
            scr_halt()
        self.con = -48
        self.alarm[4] = 15
    }
    if (self.con == -47)
    {
        global.typer = 32
        global.fc = 5
        global.fe = 0
        self.name = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_42_0")
        if (global.flag[214] == 1)
            self.name = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_43_0")
        if (global.flag[214] == 2)
            self.name = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_44_0")
        if (global.flag[214] == 3)
            self.name = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_45_0")
        global.msg[0] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_47_0")
        global.msg[1] = ((scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_48_0") + self.name) + "/")
        global.msg[2] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_49_0")
        scr_ralface(3, 3)
        global.msg[4] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_51_0")
        scr_lanface(5, 1)
        global.msg[6] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_53_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = -46
        self.warnpitch = 0
    }
    if ((self.con == -46) && (!d_ex()))
    {
        self.hitnoise = snd_play(snd_orchhit)
        snd_pitch(self.hitnoise, (1 + (self.warnpitch / 16)))
        with (self.l)
        {
            self.sprite_index = spr_lancer_lt
            self.hspeed = -10
        }
        self.con = -45
        self.alarm[4] = 3
    }
    if (self.con == -44)
    {
        with (self.l)
            scr_halt()
        self.con = -43
        self.alarm[4] = 15
    }
    if (self.con == -42)
    {
        global.fe = 2
        global.msg[0] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_82_0")
        if (self.warnpitch == 1)
        {
            global.fe = 1
            global.msg[0] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_87_0")
        }
        if (self.warnpitch == 2)
        {
            global.fe = 3
            global.msg[0] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_92_0")
            scr_susface(1, 9)
            global.msg[2] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_94_0")
        }
        instance_create(0, 0, obj_dialoguer)
        if (self.warnpitch < 2)
        {
            self.con = -46
            self.warnpitch += 1
        }
        else
            self.con = -40
    }
    if ((self.con == -40) && (!d_ex()))
    {
        self.ltimer = 0
        with (obj_marker)
        {
            if (self.sprite_index != spr_lancer_lt)
            {
                self.hspeed = 5
                self.image_speed = 0.25
            }
            else
            {
                self.sprite_index = spr_lancer_dt
                self.vspeed = -2
                self.depth = 100000
            }
        }
        self.con = -10
        self.alarm[4] = 96
    }
    if (self.con == -10)
    {
        self.ltimer += 1
        if (self.ltimer >= 20)
        {
            with (self.l)
                scr_halt()
        }
        if (self.k.x >= 140)
            obj_mainchara.x = self.k.x
        global.interact = 1
    }
    if (self.con == -9)
    {
        snd_free_all()
        global.facing = 1
        self.con = -8
        with (obj_marker)
            scr_halt()
        obj_mainchara.x = self.k.x
        obj_mainchara.visible = 1
        obj_mainchara.cutscene = 1
        with (self.l)
            self.sprite_index = spr_lancer_rt
        with (self.k)
            instance_destroy()
        self.alarm[4] = 16
        scr_pan(5, 0, 16)
    }
    if (self.con == -7)
    {
        global.fc = 2
        global.fe = 8
        global.typer = 31
        global.msg[0] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_178_0")
        scr_susface(1, 6)
        global.msg[2] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_180_0")
        scr_lanface(3, 3)
        global.msg[4] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_182_0")
        scr_susface(5, 2)
        global.msg[6] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_184_0")
        scr_lanface(7, 6)
        global.msg[8] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_186_0")
        self.con = -5.2
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == -5.2) && (d_ex() == 0))
    {
        self.sprite_index = spr_smallchecker_idle
        self.image_index = 0
        self.x += 40
        self.image_xscale = -2
        self.hspeed = 2
        self.con = 2
    }
    if (self.con == 2)
    {
        if (self.x > (__view_get(0, 0) + 520))
        {
            self.image_index = 0
            self.image_xscale = 2
            self.sprite_index = spr_smallchecker_front
            self.hspeed = 0
            self.x = (__view_get(0, 0) + 480)
            self.con = 1.1
            self.alarm[4] = 30
        }
    }
    if (self.con == 2.1)
    {
        snd_play(snd_boost)
        for (self.j = 0; self.j < 3; self.j += 1)
        {
            self.tile[self.j] = scr_marker(((480 - (self.j * 40)) + 400), (240 + (self.j * 40)), spr_checkertile_bullet)
            self.tile[self.j].image_alpha = 0
            self.tile[self.j].depth = 700000
        }
        self.ttimer = 0
        self.con = 2.2
    }
    if (self.con == 2.2)
    {
        for (self.j = 0; self.j < 3; self.j += 1)
            self.tile[self.j].image_alpha += 0.1
        self.ttimer += 1
        if (self.ttimer >= 10)
            self.con = 2.3
    }
    if (self.con == 2.3)
    {
        for (self.j = 0; self.j < 3; self.j += 1)
            self.tile[self.j].image_alpha -= 0.1
        self.ttimer += 1
        if (self.ttimer >= 30)
            self.con = 3.1
    }
    if (self.con == 3.1)
        self.con = 4
    if (self.con == 4)
    {
        self.sprite_index = spr_smallchecker_front
        self.image_speed = 0
        self.image_index = 0
        self.crown = instance_create((self.x + 8), (__view_get(1, 0) - 40), obj_marker)
        self.crown.image_xscale = 2
        self.crown.image_yscale = 2
        self.crown.sprite_index = spr_smallchecker_crown
        self.crown.vspeed = 4
        self.crown.depth = (self.depth - 1)
        self.con = 5
    }
    if (self.con == 5)
    {
        if (self.crown.y >= (self.y - 10))
        {
            self.sprite_index = spr_smallchecker_transform
            self.y += 2
            snd_play(snd_shineselect)
            with (self.crown)
                instance_destroy()
            self.con = 6
            self.alarm[4] = 50
        }
    }
    if (self.con == 7)
    {
        snd_play(snd_crowngrowth)
        self.image_speed = 0.25
        self.con = 8
    }
    if (self.con == 8)
    {
        self.image_speed += 0.01
        if (self.image_speed >= 0.5)
        {
            self.image_index = 1
            self.image_speed = 0
            self.con = 9
            self.alarm[4] = 60
        }
    }
    if (self.con == 10)
    {
        self.image_index = 0
        self.sprite_index = spr_smallchecker_transform2
        self.image_speed = 0.334
        self.con = 11
    }
    if (self.con == 11)
    {
        if (self.image_index >= 4)
        {
            self.image_index = 4
            self.image_speed = 0
            self.con = 12
            self.alarm[4] = 40
        }
    }
    if (self.con == 13)
    {
        self.x -= 18
        self.y -= 90
        snd_play(snd_impact)
        with (self.s)
            self.sprite_index = spr_susie_shock_r
        with (self.r)
            self.sprite_index = spr_ralsei_shock_overworld
        instance_create(0, 0, obj_shake)
        self.sprite_index = spr_checkers_idle
        self.image_speed = 0
        self.image_index = 0
        self.con = 16
        self.alarm[4] = 30
    }
    if (self.con == 17)
    {
        with (self.r)
            self.sprite_index = spr_ralseir
        with (self.s)
            self.sprite_index = spr_susier_dark
        global.fe = 6
        global.msg[0] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_356_0")
        self.con = 18
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 18) && (!d_ex()))
    {
        scr_unmarkify_caterpillar()
        global.facing = 1
        scr_caterpillar_facing(global.facing)
        global.encounterno = 12
        scr_encountersetup(global.encounterno)
        global.flag[9] = 1
        global.batmusic[0] = snd_init("checkers.ogg")
        global.specialbattle = 3
        instance_create(0, 0, obj_encounterbasic)
        instance_create(0, 0, obj_battleback)
        self.depth = 4000
        scr_move_to_point_over_time(global.monstermakex[0], global.monstermakey[0], 20)
        self.con = 19
        self.alarm[4] = 20
    }
    if (self.con == 20)
    {
        self.speed = 0
        self.con = 21
        self.alarm[4] = 10
    }
    if (self.con == 22)
    {
        self.visible = 0
        self.type = 2
        self.con = 0
        self.victimer = 0
    }
}
if (self.type == 1)
{
    if (self.con == 1)
    {
        self.image_speed = 0
        self.image_index = 0
        self.crown = instance_create((self.x + 24), (self.y + 10), obj_marker)
        self.crown.image_xscale = 2
        self.crown.image_yscale = 2
        self.crown.sprite_index = spr_smallchecker_crown
        self.crown.depth = (self.depth - 1)
        self.sprite_index = spr_smallchecker_transform3
        self.con = 0.4
        self.windsound = 0
        self.alarm[4] = 30
    }
    if (self.con == 1.4)
    {
        if (self.windsound == 0)
        {
            snd_play(snd_whistlebreath)
            self.windsound = 1
        }
        if (self.secondtime == 0)
            self.crown.hspeed += 0.2
        else
            self.crown.hspeed += 0.4
        if (self.crown.hspeed >= 3)
            self.con = 1.5
    }
    if (self.con == 1.5)
    {
        with (self.crown)
        {
            self.maxy = (obj_checker_animtest.y + obj_checker_animtest.sprite_height)
            self.image_angle = -45
            self.y -= 10
            self.gravity = 0.5
            self.hspeed = 5
            self.friction = 0.2
        }
        self.con = 1.6
    }
    if (self.con == 1.6)
    {
        if (self.crown.y >= ((self.crown.maxy - self.crown.sprite_height) - 10))
        {
            self.crown.y += 10
            self.crown.image_angle = 0
            self.crown.gravity = 0
            self.crown.vspeed = 0
            self.crown.friction = 0
            self.crown.hspeed = 1
            self.con = 0.9
            self.alarm[4] = 30
            if (self.secondtime == 1)
            {
                self.alarm[4] = 10
                self.interactcrown = instance_create(self.crown.x, self.crown.y, obj_readable_room1)
                self.interactcrown.hspeed = 1
                self.interactcrown.image_xscale = 1.6
                self.interactcrown.image_yscale = 1
            }
        }
    }
    if (self.con == 1.9)
    {
        self.image_speed = 0.25
        snd_play(snd_crownshrink)
        self.con = 2.1
    }
    if (self.con == 2.1)
    {
        self.image_speed += 0.01
        if (self.secondtime == 1)
            self.image_speed += 0.01
        if (self.image_speed >= 0.5)
        {
            self.image_index = 1
            self.image_speed = 0
            self.con = 3
            self.maxy = ((self.y + self.sprite_height) - 30)
            self.alarm[4] = 30
            if (self.secondtime == 1)
                self.alarm[4] = 10
        }
    }
    if (self.con == 4)
    {
        self.x += 40
        self.y += 46
        self.sprite_index = spr_smallchecker_legtuck
        self.image_index = 0
        self.image_speed = 0.25
        self.vspeed = -3
        self.gravity = 1
        if (self.secondtime == 1)
        {
            self.vspeed = -6
            self.gravity = 2
            self.image_speed = 0.5
        }
        self.con = 5
    }
    if (self.con == 5)
    {
        if (self.image_index >= 2)
            self.image_speed = 0
        if (self.y >= (self.maxy - 4))
        {
            self.y = self.maxy
            self.gravity = 0
            self.vspeed = 0
            self.con = 6
            self.alarm[4] = 30
            if (self.secondtime == 1)
                self.alarm[4] = 10
        }
    }
    if (self.con == 7)
    {
        self.image_angle -= 5
        self.hspeed = 3
        if (self.secondtime == 1)
        {
            self.hspeed = 6
            self.image_angle -= 5
        }
        if (self.x >= (__view_get(0, 0) + 720))
        {
            self.con = 8
            global.monster[0] = 0
            global.monster[1] = 0
            global.monster[2] = 0
            scr_attackphase()
            with (obj_monsterparent)
                instance_destroy()
            instance_destroy()
        }
    }
}
if (self.type == 2)
{
    if (self.con == 0)
    {
        self.victimer += 1
        if (self.victimer >= 60)
            self.con = 1
    }
    if (self.con == 1)
    {
        if (global.fighting == 0)
        {
            self.victimer = 0
            self.con = 2
        }
    }
    if (self.con == 2)
    {
        self.victimer += 1
        if (self.victimer >= 15)
        {
            global.typer = 30
            global.fe = 6
            global.fc = 1
            global.msg[0] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_589_0")
            instance_create(0, 0, obj_dialoguer)
            self.con = 3
        }
    }
    if ((self.con == 3) && (!d_ex()))
    {
        with (self.l)
            self.hspeed = 18
        self.con = 4
        self.alarm[4] = 20
    }
    if (self.con == 5)
    {
        with (self.l)
        {
            scr_halt()
            self.sprite_index = spr_lancer_lt
        }
        self.con = 6
        self.alarm[4] = 15
    }
    if (self.con == 7)
    {
        global.typer = 32
        global.fc = 5
        global.fe = 3
        global.msg[0] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_624_0")
        global.msg[1] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_625_0")
        scr_susface(2, 2)
        global.msg[3] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_627_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 7.2
    }
    if ((self.con == 7.1) && (!d_ex()))
    {
        snd_play(snd_suslaugh)
        with (self.s)
            self.image_speed = 0.2
        self.con = 6.2
        self.alarm[4] = 60
    }
    if ((self.con == 7.2) && (!d_ex()))
    {
        with (global.cinstance[0])
            self.visible = 0
        with (global.cinstance[1])
            self.visible = 0
        with (obj_mainchara)
            self.visible = 0
        self.r = scr_dark_marker(global.cinstance[0].x, global.cinstance[0].y, spr_ralseil)
        self.s = scr_dark_marker(global.cinstance[1].x, global.cinstance[1].y, spr_susier_dark)
        self.k = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, spr_krisl_dark)
        global.typer = 31
        global.fc = 2
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_657_0")
        global.msg[1] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_658_0")
        global.msg[2] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_659_0")
        global.msg[3] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_660_0")
        global.msg[4] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_661_0")
        global.msg[5] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_662_0")
        scr_susface(6, 6)
        global.msg[7] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_664_0")
        global.msg[8] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_665_0")
        global.msg[9] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_666_0")
        self.con = 50
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 50) && (!d_ex()))
    {
        with (self.r)
            self.sprite_index = spr_ralseid
        self.con = 51
        self.alarm[4] = 30
    }
    if (self.con == 52)
    {
        with (self.r)
            self.sprite_index = spr_ralseil
        global.fc = 2
        global.fe = 6
        global.typer = 31
        global.msg[0] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_685_0")
        scr_susface(1, 0)
        global.msg[2] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_687_0")
        scr_lanface(3, 3)
        global.msg[4] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_689_0")
        scr_ralface(5, 1)
        global.msg[6] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_691_0")
        self.con = 53
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 53) && (!d_ex()))
    {
        with (self.s)
            self.sprite_index = spr_susied_dark
        self.con = 54
        self.alarm[4] = 30
    }
    if (self.con == 55)
    {
        with (self.s)
            self.sprite_index = spr_susier_dark
        global.fc = 1
        global.fe = 2
        global.typer = 30
        global.msg[0] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_709_0")
        scr_ralface(1, "C")
        global.msg[2] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_711_0")
        global.msg[3] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_712_0")
        global.msg[4] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_713_0")
        global.msg[5] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_714_0")
        global.msg[6] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_715_0")
        self.con = 56
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 56) && (!d_ex()))
    {
        with (self.s)
            self.sprite_index = spr_susiel_dark_unhappy
        self.con = 57
        self.alarm[4] = 60
    }
    if (self.con == 58)
    {
        global.fc = 1
        global.fe = 0
        global.typer = 30
        global.msg[0] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_732_0")
        global.msg[1] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_733_0")
        global.msg[2] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_734_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 59
    }
    if ((self.con == 59) && (!d_ex()))
    {
        with (self.s)
        {
            self.vspeed = 2
            self.image_speed = 0.2
            self.sprite_index = spr_susied_dark_unhappy
        }
        self.con = 60
        self.alarm[4] = 10
    }
    if (self.con == 61)
    {
        with (self.k)
            scr_depth()
        with (self.r)
            scr_depth()
        with (self.s)
        {
            scr_halt()
            scr_depth()
        }
        self.con = 62
        self.alarm[4] = 30
    }
    if (self.con == 63)
    {
        global.msg[0] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_762_0")
        global.msg[1] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_763_0")
        self.con = 64
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 64) && (!d_ex()))
    {
        with (self.s)
        {
            self.hspeed = 12
            self.sprite_index = spr_susier_dark
            self.image_speed = 0.5
        }
        self.con = 65
    }
    if (self.con == 65)
    {
        if (self.s.x >= (__view_get(0, 0) + 460))
        {
            with (self.s)
                scr_halt()
            with (self.s)
                self.sprite_index = spr_susiel_dark
            with (self.k)
                self.sprite_index = spr_krisr_dark
            with (self.r)
                self.sprite_index = spr_ralseir
            self.con = 66
        }
    }
    if (self.con == 66)
    {
        self.con = 67
        global.fc = 1
        global.fe = 3
        global.typer = 30
        global.msg[0] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_799_0")
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 67) && (!d_ex()))
    {
        with (self.r)
            self.sprite_index = spr_ralsei_shock_overworld
        self.con = 68
        self.alarm[4] = 20
    }
    if (self.con == 69)
    {
        global.currentsong[0] = snd_init("lancer.ogg")
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.6, 1)
        with (self.r)
            self.sprite_index = spr_ralseir
        global.fc = 5
        global.typer = 32
        global.fe = 2
        global.msg[0] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_820_0")
        global.msg[1] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_821_0")
        scr_susface(2, 2)
        global.msg[3] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_823_0")
        scr_ralface(4, 3)
        global.msg[5] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_825_0")
        scr_lanface(6, 1)
        global.msg[7] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_827_0")
        scr_susface(8, 2)
        global.msg[9] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_829_0")
        scr_lanface(10, 3)
        global.msg[11] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_831_0")
        scr_susface(12, 2)
        global.msg[13] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_833_0")
        scr_lanface(14, 1)
        global.msg[15] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_835_0")
        scr_susface(16, 6)
        global.msg[17] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_837_0")
        global.msg[18] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_838_0")
        scr_lanface(19, 3)
        global.msg[20] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_840_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 70
    }
    if ((self.con == 70) && (!d_ex()))
    {
        snd_volume(global.currentsong[1], 0, 50)
        snd_play(snd_lancerlaugh)
        with (self.l)
        {
            self.sprite_index = spr_lancer_lt_laugh
            self.image_speed = 0.2
            self.hspeed = 12
        }
        with (self.s)
        {
            self.sprite_index = spr_susier_dark
            self.image_speed = 0.5
            self.hspeed = 12
        }
        self.con = 71
        self.alarm[4] = 70
    }
    if (self.con == 72)
        self.con = 22
    if ((self.con == 22) && (!d_ex()))
    {
        with (self.r)
        {
            self.hspeed = 6
            self.image_speed = 0.25
        }
        self.con = 23
        self.alarm[4] = 20
    }
    if (self.con == 24)
    {
        snd_free_all()
        global.facing = 2
        with (self.r)
            scr_halt()
        global.fc = 2
        global.typer = 31
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_893_0")
        global.msg[1] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_894_0")
        global.msg[2] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_895_0")
        global.msg[3] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_896_0")
        global.msg[4] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_897_0")
        global.msg[5] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_898_0")
        global.msg[6] = scr_84_get_lang_string("obj_checker_animtest_slash_Step_0_gml_899_0")
        self.con = 28
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 28) && (!d_ex()))
    {
        with (self.k)
        {
            self.hspeed = 8
            self.image_speed = 0.25
        }
        with (self.r)
        {
            self.hspeed = 8
            self.image_speed = 0.25
            self.sprite_index = spr_ralseir
        }
        self.con = 29
        self.alarm[4] = 10
    }
    if (self.con == 30)
    {
        instance_create(0, 0, obj_fadeout)
        self.con = 31
        self.alarm[4] = 30
    }
    if (self.con == 32)
    {
        if (global.plot < 60)
        {
            global.plot = 60
            if (global.flag[215] == 1)
                global.flag[251] = 1
        }
        scr_losechar()
        scr_getchar(3)
        instance_create(0, 0, obj_persistentfadein)
        global.interact = 3
        global.entrance = 1
        room_goto_next()
    }
}
