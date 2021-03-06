if (self.con < 76)
{
    if (self.con == 0)
    {
        with (obj_npc_facing)
            instance_destroy()
        with (obj_npc_room)
            instance_destroy()
        snd_free_all()
        global.currentsong[0] = snd_init("wind.ogg")
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.5, 0.7)
        self.part = 1
        with (obj_mainchara)
        {
            self.visible = 0
            self.cutscene = 1
        }
        with (obj_caterpillarchara)
            self.visible = 0
        self.con = 1
        self.k = scr_dark_marker(-20, 200, spr_krisr_dark)
        self.s = scr_dark_marker(-75, 180, spr_susier_dark)
        self.r = scr_dark_marker(-130, 190, spr_ralseir)
        with (obj_marker)
        {
            self.hspeed = 4
            self.image_speed = 0.25
        }
        self.alarm[4] = 50
        if (global.tempflag[8] == 1)
        {
            with (obj_marker)
            {
                self.hspeed = 8
                self.image_speed = 0.25
            }
            self.alarm[4] = 25
        }
        self.l = scr_dark_marker(512, 194, spr_lancer_rt)
    }
    if (self.con == 1)
        global.interact = 1
    if (self.con == 2)
    {
        with (obj_marker)
            scr_halt()
        self.con = 3
        self.alarm[4] = 15
        if (global.tempflag[8] == 1)
            self.alarm[4] = 2
    }
    if (self.con == 4)
    {
        global.fc = 1
        global.typer = 30
        global.fe = 2
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_72_0")
        if (global.tempflag[8] == 0)
            instance_create(0, 0, obj_dialoguer)
        self.con = 5
    }
    if ((self.con == 5) && (!d_ex()))
    {
        self.king = scr_dark_marker((820 + global.xoff), 120, spr_kingu_shadow)
        with (self.l)
            self.hspeed = 5
        if (global.tempflag[8] == 0)
            scr_pan(8, 0, 90)
        self.con = 5.1
        self.alarm[4] = 90
        if (global.tempflag[8] == 1)
        {
            with (self.l)
                self.hspeed = 10
            scr_pan(16, 0, 45)
            self.con = 5.1
            self.alarm[4] = 45
        }
    }
    if (self.con == 6.1)
    {
        with (self.l)
            self.hspeed = 0
        self.con = 6
        self.alarm[4] = 20
    }
    if (self.con == 7)
    {
        with (self.l)
            self.hspeed = 0
        global.fc = 5
        global.typer = 32
        global.fe = 3
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_110_0")
        scr_kingface(1, 0)
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_112_0")
        global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_113_0")
        scr_lanface(4, 7)
        global.msg[5] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_115_0")
        global.msg[6] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_116_0")
        global.msg[7] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_117_0")
        global.msg[8] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_118_0")
        if (global.tempflag[8] == 0)
            instance_create(0, 0, obj_dialoguer)
        self.con = 8
        if (global.tempflag[8] == 1)
            self.con = 9
    }
    if ((self.con == 8) && (!d_ex()))
    {
        with (self.king)
        {
            self.sprite_index = spr_kingl_shadow
            snd_play(snd_impact)
            instance_create(0, 0, obj_shake)
            scr_shakeobj()
        }
        global.fc = 0
        global.typer = 36
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_137_0")
        scr_lanface(1, 3)
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_139_0")
        global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_140_0")
        scr_kingface(4, 0)
        global.msg[5] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_142_0")
        scr_lanface(6, 4)
        global.msg[7] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_144_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 9
    }
    if ((self.con == 9) && (!d_ex()))
    {
        with (self.king)
            self.sprite_index = spr_kingl_shadow
        with (self.k)
        {
            self.x = (440 + global.xoff)
            self.y = 50
            scr_depth()
        }
        with (self.s)
        {
            self.x = (440 + global.xoff)
            self.y = 130
            scr_depth()
        }
        with (self.r)
        {
            self.x = (440 + global.xoff)
            self.y = 210
            scr_depth()
        }
        with (self.l)
            self.sprite_index = spr_lancer_lt
        if (global.tempflag[8] == 0)
            scr_pan(-4, 0, 30)
        self.con = 10
        self.alarm[4] = 60
        if (global.tempflag[8] == 1)
        {
            scr_pan(-8, 0, 15)
            self.alarm[4] = 20
        }
    }
    if (self.con == 11)
    {
        global.typer = 30
        global.fc = 1
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_175_0")
        scr_ralface(1, 0)
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_177_0")
        if (global.tempflag[8] == 0)
            instance_create(0, 0, obj_dialoguer)
        self.con = 12
    }
    if ((self.con == 12) && (!d_ex()))
    {
        with (self.l)
            self.sprite_index = spr_lancer_rt
        global.typer = 36
        global.fc = 0
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_187_0")
        scr_lanface(1, 7)
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_189_0")
        if (global.tempflag[8] == 0)
            instance_create(0, 0, obj_dialoguer)
        self.con = 13
    }
    if ((self.con == 13) && (!d_ex()))
    {
        with (self.king)
        {
            self.hspeed = -2
            self.image_speed = 0.1
        }
        self.con = 14
        self.alarm[4] = 30
    }
    if (self.con == 15)
    {
        with (self.l)
            self.visible = 0
        with (self.king)
        {
            self.hspeed = 0
            self.sprite_index = spr_king_liftlancer
            self.image_index = 0
            self.image_speed = 0.2
        }
        self.con = 16
        self.alarm[4] = 15
    }
    if (self.con == 17)
    {
        with (self.s)
            self.sprite_index = spr_susier_dark_unhappy
        with (self.king)
        {
            self.image_index = 3
            self.image_speed = 0
        }
        global.typer = 36
        global.fe = 0
        global.fc = 0
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_223_0")
        scr_lanface(1, 5)
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_225_0")
        if (global.tempflag[8] == 0)
            instance_create(0, 0, obj_dialoguer)
        self.con = 17.1
    }
    if ((self.con == 17.1) && (!d_ex()))
    {
        with (self.king)
        {
            self.image_index = 3
            self.image_speed = 0.2
        }
        self.con = 17.2
    }
    if (self.con == 17.2)
    {
        if (self.king.image_index >= 5)
        {
            self.king.image_index = 5
            self.king.image_speed = 0
            self.con = 17.3
            self.alarm[4] = 15
        }
    }
    if ((self.con == 18.3) && (!d_ex()))
    {
        global.typer = 36
        global.fc = 0
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_251_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_252_0")
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_253_0")
        global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_254_0")
        global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_255_0")
        scr_lanface(5, "A")
        global.msg[6] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_257_0")
        self.con = 19
        if (global.tempflag[8] == 0)
            instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 19) && (!d_ex()))
    {
        snd_free_all()
        snd_play(snd_grab)
        with (self.s)
            self.sprite_index = spr_susie_shock_r
        with (self.r)
            self.sprite_index = spr_ralsei_shock_overworld
        with (self.king)
        {
            self.image_index = 5
            self.image_speed = 0.5
        }
        self.con = 20
        self.alarm[4] = 4
    }
    if (self.con == 21)
    {
        with (self.king)
        {
            self.image_speed = 0
            self.image_index = 7
        }
        self.con = 22
        self.alarm[4] = 20
    }
    if (self.con == 23)
    {
        with (self.king)
        {
            self.image_speed = 0
            self.image_index = 7
        }
        global.typer = 36
        global.fc = 0
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_285_0")
        global.msg[1] = "%"
        if (global.tempflag[8] == 0)
            instance_create(0, 0, obj_dialoguer)
        self.con = 24
    }
    if ((self.con == 24) && (!d_ex()))
    {
        snd_play(snd_weaponpull)
        with (self.r)
            self.sprite_index = spr_ralseir
        with (self.s)
        {
            self.sprite_index = spr_susieb_attackready_unhappy
            self.hspeed = 8
        }
        self.con = 25
        self.alarm[4] = 5
    }
    if (self.con == 26)
    {
        with (self.s)
            scr_halt()
        self.con = 27
        self.alarm[4] = 20
    }
    if (self.con == 28)
    {
        global.currentsong[0] = snd_init("GALLERY.ogg")
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.8, 1)
        global.fc = 1
        global.fe = 0
        global.typer = 30
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_316_0")
        scr_noface(1)
        scr_kingface(2, 0)
        global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_319_0")
        global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_320_0")
        global.msg[5] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_321_0")
        if (global.tempflag[8] == 0)
            instance_create(0, 0, obj_dialoguer)
        self.con = 30
    }
    if ((self.con == 30) && (!d_ex()))
    {
        snd_play(snd_noise)
        with (self.king)
            self.image_speed = 0.25
        self.con = 31
        self.alarm[4] = 8
    }
    if (self.con == 32)
    {
        with (self.king)
        {
            self.image_index = 9
            self.image_speed = 0
        }
        self.con = 33
        self.alarm[4] = 20
        if (global.tempflag[8] == 1)
            self.alarm[4] = 2
    }
    if (self.con == 34)
    {
        global.fc = 0
        global.typer = 36
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_348_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_349_0")
        global.msg[2] = "%"
        self.con = 34.1
        if (global.tempflag[8] == 0)
            instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 34.1) && (!d_ex()))
    {
        self.alarm[4] = 10
        self.con = 34.2
    }
    if (self.con == 35.2)
    {
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_363_0")
        global.msg[2] = "%"
        self.con = 35.3
        if (global.tempflag[8] == 0)
            instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 35.3) && (!d_ex()))
    {
        self.con = 36
        self.alarm[4] = 30
        if (global.tempflag[8] == 1)
            self.alarm[4] = 2
    }
    if ((self.con == 37) && (!d_ex()))
    {
        with (self.s)
        {
            self.sprite_index = spr_susier_dark_unhappy
            self.image_speed = 0.2
            self.hspeed = -2
        }
        self.con = 38
        self.alarm[4] = 20
    }
    if (self.con == 39)
    {
        with (self.s)
            scr_halt()
        self.con = 39.1
        self.alarm[4] = 30
        if (global.tempflag[8] == 1)
            self.alarm[4] = 2
    }
    if (self.con == 40.1)
    {
        global.fe = 12
        global.fc = 5
        global.typer = 32
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_396_0")
        global.msg[1] = "%"
        self.con = 41
        if (global.tempflag[8] == 0)
            instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 41) && (!d_ex()))
    {
        self.con = 40.2
        self.alarm[4] = 30
        if (global.tempflag[8] == 1)
            self.alarm[4] = 2
    }
    if ((self.con == 41.2) && (!d_ex()))
    {
        with (self.r)
            self.sprite_index = spr_ralseir_kneel
        with (self.s)
            self.sprite_index = spr_susier_kneel
        with (self.k)
            self.sprite_index = spr_krisr_kneel
        self.con = 42
        self.alarm[4] = 30
        if (global.tempflag[8] == 1)
            self.alarm[4] = 2
    }
    if (self.con == 43)
    {
        with (self.king)
            self.hspeed = -1
        self.con = 44
        self.alarm[4] = 15
    }
    if (self.con == 45)
    {
        with (self.king)
            self.hspeed = 0
        self.con = 46
        self.alarm[4] = 15
    }
    if (self.con == 47)
    {
        global.typer = 36
        global.fc = 0
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_437_0")
        global.msg[1] = "%"
        if (global.tempflag[8] == 0)
            instance_create(0, 0, obj_dialoguer)
        self.con = 48
    }
    if ((self.con == 48) && (!d_ex()))
    {
        snd_play(snd_spearappear)
        self.c[0] = self.k
        self.c[1] = self.s
        self.c[2] = self.r
        for (self.i = 0; self.i < 3; self.i += 1)
        {
            self.spadechunk[self.i] = scr_marker((self.c[self.i].x + 100), (self.c[self.i].y + 50), spr_spadebullet_chunk)
            self.spadechunk[self.i].image_angle = 180
            self.spadechunk[self.i].image_alpha = 0
            self.spadechunk[self.i].hspeed = 2
            self.spadechunk[self.i].friction = 0.1
        }
        self.con = 49
    }
    if (self.con == 49)
    {
        for (self.i = 0; self.i < 3; self.i += 1)
        {
            self.spadechunk[self.i].image_alpha += 0.1
            if (self.spadechunk[self.i].image_alpha >= 3)
                self.con = 50
        }
    }
    if (self.con == 50)
    {
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_471_0")
        global.msg[1] = "%"
        if (global.tempflag[8] == 0)
            instance_create(0, 0, obj_dialoguer)
        self.con = 51
    }
    if ((self.con == 51) && (!d_ex()))
    {
        snd_play(snd_spearrise)
        with (self.king)
        {
            self.image_speed = 0.25
            self.image_index = 10
        }
        self.alarm[4] = 16
        self.con = 52
    }
    if (self.con == 53)
    {
        with (self.king)
        {
            self.image_speed = 0
            self.image_index = 13
        }
        self.lspade = scr_marker((__view_get(0, 0) + 660), (self.king.y + 60), spr_spadebullet)
        self.lspade.image_angle = 180
        self.lspade.hspeed = -16
        self.con = 54
    }
    if (self.con == 54)
    {
        if (self.lspade.x <= (self.king.x + 70))
        {
            snd_play(snd_damage)
            snd_play(snd_dadblast)
            with (self.lspade)
                instance_destroy()
            with (self.king)
            {
                self.sprite_index = spr_king_droplancer
                self.image_index = 0
                scr_shakeobj()
            }
            with (self.l)
            {
                self.x += 24
                self.y -= 60
                self.sprite_index = spr_lancer_l_unhappy
                self.vspeed = 10
                self.hspeed = -4
                self.visible = 1
            }
            self.con = 55
            self.alarm[4] = 6
            self.spadechunk[0].image_alpha = 1
            self.spadechunk[1].image_alpha = 1
            self.spadechunk[2].image_alpha = 1
        }
    }
    if (self.con == 55)
    {
        for (self.i = 0; self.i < 3; self.i += 1)
            self.spadechunk[self.i].image_alpha -= 0.18
    }
    if (self.con == 56)
    {
        for (self.i = 0; self.i < 3; self.i += 1)
        {
            with (self.spadechunk[self.i])
                instance_destroy()
        }
        with (self.l)
            self.speed = 0
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_529_0")
        global.msg[1] = "%"
        if (global.tempflag[8] == 0)
            instance_create(0, 0, obj_dialoguer)
        self.con = 57
    }
    if ((self.con == 57) && (!d_ex()))
    {
        with (self.l)
        {
            self.hspeed = -16
            scr_depth()
        }
        with (self.r)
            self.sprite_index = spr_ralseir
        with (self.s)
            self.sprite_index = spr_susier_dark_unhappy
        with (self.k)
            self.sprite_index = spr_krisr_dark
        self.con = 58
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_543_0")
        global.msg[1] = "%"
        if (global.tempflag[8] == 0)
            instance_create(0, 0, obj_dialoguer)
        self.alarm[4] = 30
    }
    if ((self.con == 59) && (!d_ex()))
    {
        global.fc = 1
        global.typer = 30
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_554_0")
        global.msg[1] = "%"
        if (global.tempflag[8] == 0)
            instance_create(0, 0, obj_dialoguer)
        self.con = 60
    }
    if ((self.con == 60) && (!d_ex()))
    {
        snd_play(snd_laz_c)
        with (self.k)
            scr_anim(spr_krisb_attackready, 0.25)
        with (self.s)
            scr_anim(spr_susieb_attack_serious, 0.25)
        with (self.r)
            scr_anim(spr_ralseib_attackready, 0.25)
        self.con = 61
        self.alarm[4] = 30
    }
    if (self.con == 62)
    {
        global.fe = 3
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_573_0")
        global.msg[1] = "%"
        if (global.tempflag[8] == 0)
            instance_create(0, 0, obj_dialoguer)
        self.con = 64
    }
    if ((self.con == 64) && (!d_ex()))
    {
        with (self.king)
        {
            self.image_index = 1
            self.hspeed = 3
            self.friction = 0.1
        }
        self.con = 65
        self.alarm[4] = 20
    }
    if (self.con == 66)
    {
        with (self.king)
        {
            self.hspeed = 0
            scr_shakeobj()
        }
        global.typer = 36
        global.fc = 0
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_592_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_593_0")
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_594_0")
        global.msg[3] = "%"
        if (global.tempflag[8] == 0)
            instance_create(0, 0, obj_dialoguer)
        self.con = 67
    }
    if ((self.con == 67) && (!d_ex()))
    {
        with (self.king)
        {
            self.sprite_index = spr_king_pullweapon
            self.image_index = 0
            self.image_speed = 0.5
        }
        self.con = 66.1
        self.alarm[4] = 10
    }
    if (self.con == 67.1)
    {
        with (self.king)
        {
            self.image_index = 6
            self.image_speed = 0
        }
        self.shadowking = scr_dark_marker(self.king.x, self.king.y, spr_king_pullweapon)
        self.shadowking.image_speed = 0
        self.shadowking.image_index = 5
        self.shadowking.depth = (self.king.depth - 1)
        self.con = 68.2
        snd_free_all()
        snd_play(snd_shadowpendant)
        self.alarm[4] = 60
    }
    if (self.con == 68.2)
    {
        with (self.shadowking)
            self.image_alpha -= 0.03
    }
    if (self.con == 69.2)
    {
        global.plot = 235
        with (self.shadowking)
            instance_destroy()
        global.typer = 33
        global.fe = 4
        global.fc = 20
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_636_0")
        global.msg[1] = "%"
        if (global.tempflag[8] == 0)
            instance_create(0, 0, obj_dialoguer)
        self.con = 68.1
    }
    if ((self.con == 68.1) && (!d_ex()))
    {
        self.king.sprite_index = spr_king_laugh
        self.king.image_speed = 0.334
        self.con = 69
        snd_play(snd_dadlaugh)
        self.alarm[4] = 70
    }
    if ((self.con == 70) && (!d_ex()))
    {
        global.tempflag[8] = 1
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
        {
            self.visible = 1
            self.sprite_index = spr_krisb_idle
            self.fun = 1
        }
        with (global.cinstance[0])
        {
            self.visible = 1
            self.sprite_index = spr_susieb_idle_serious
            self.fun = 1
        }
        with (global.cinstance[1])
        {
            self.visible = 1
            self.sprite_index = spr_ralseib_idle
            self.fun = 1
        }
        with (self.k)
            self.visible = 0
        with (self.r)
            self.visible = 0
        with (self.s)
            self.visible = 0
        global.flag[9] = 1
        global.batmusic[0] = snd_init("kingboss.ogg")
        global.encounterno = 40
        scr_encountersetup(global.encounterno)
        global.specialbattle = 3
        self.remkingx = self.king.x
        self.remkingy = self.king.y
        instance_create(0, 0, obj_encounterbasic)
        self.con = 71
        self.king.sprite_index = spr_chainking_idle
        self.king.image_index = 0
        self.king.image_speed = 0
        with (self.king)
            scr_move_to_point_over_time(global.monstermakex[0], global.monstermakey[0], 10)
        with (self.king)
            self.depth = 1000
        self.alarm[4] = 25
        self.bultimer = 0
    }
    if (self.con == 72)
    {
        with (self.king)
            self.visible = 0
        self.con = 73
        self.alarm[4] = 15
    }
    if (self.con == 74)
    {
        if (!instance_exists(obj_battlecontroller))
        {
            with (self.king)
                self.visible = 1
            self.king.remkingx = self.remkingx
            self.king.remkingy = self.remkingy
            with (self.king)
                scr_move_to_point_over_time(self.remkingx, self.remkingy, 10)
            self.con = 75
            self.alarm[4] = 30
        }
    }
}
if ((self.con >= 76) && (self.con < 150))
{
    if ((self.con == 76) && (!d_ex()))
    {
        if (self.part == 0)
        {
            __view_set(0, 0, (360 + global.xoff))
            self.k = scr_dark_marker(0, 0, spr_krisb_idle)
            self.s = scr_dark_marker(0, 0, spr_susieb_idle_serious)
            self.r = scr_dark_marker(0, 0, spr_ralseib_idle)
            self.king = scr_dark_marker((784 + global.xoff), 120, spr_king_kneeldown)
            with (self.k)
            {
                self.x = (440 + global.xoff)
                self.y = 50
                scr_depth()
            }
            with (self.s)
            {
                self.x = (440 + global.xoff)
                self.y = 130
                scr_depth()
            }
            with (self.r)
            {
                self.x = (440 + global.xoff)
                self.y = 210
                scr_depth()
            }
            self.part = 1
        }
        else
        {
            with (self.k)
                self.visible = 1
            with (self.s)
                self.visible = 1
            with (self.r)
                self.visible = 1
            obj_mainchara.visible = 0
            with (obj_caterpillarchara)
                self.visible = 0
            self.k.sprite_index = spr_krisb_idle
            self.s.sprite_index = spr_susieb_idle_serious
            self.r.sprite_index = spr_ralseib_idle
            self.king.sprite_index = spr_king_kneeldown
        }
        self.con = 78
        self.alarm[4] = 20
    }
    if (self.con == 79)
    {
        global.fc = 20
        global.typer = 33
        global.fe = 3
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_762_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_763_0")
        if (global.flag[247] == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_766_0")
            global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_767_0")
            global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_768_0")
        }
        instance_create(0, 0, obj_dialoguer)
        self.con = 81
    }
    if ((self.con == 81) && (!d_ex()))
    {
        snd_play(snd_heavyswing)
        with (self.king)
            scr_anim(spr_king_kneeldown, 0.1)
        self.con = 82
        self.alarm[4] = 50
    }
    if (self.con == 83)
    {
        snd_play(snd_whistlebreath)
        self.king.sprite_index = spr_king_kneel
        self.king.image_index = 0
        self.king.image_speed = 0
        self.cape = scr_dark_marker(self.king.x, self.king.y, spr_kingcape)
        self.cape.image_speed = 0.25
        self.cape.hspeed = 6
        self.cape.vspeed = -1
        self.cape.friction = 0.2
        self.cape.gravity = -0.3
        self.cape.depth = (self.king.depth + 1)
        self.con = 84
        self.alarm[4] = 50
    }
    if (self.con == 85)
    {
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_802_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_803_0")
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_804_0")
        global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_805_0")
        global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_806_0")
        global.msg[5] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_807_0")
        global.msg[6] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_808_0")
        global.msg[7] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_809_0")
        global.msg[8] = "%"
        instance_create(0, 0, obj_dialoguer)
        self.con = 86
    }
    if ((self.con == 86) && (!d_ex()))
    {
        with (self.king)
        {
            scr_shakeobj()
            self.image_index = 2
        }
        snd_play(snd_break1)
        self.con = 87
        self.alarm[4] = 60
    }
    if (self.con == 88)
    {
        with (self.king)
            self.image_index = 2
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_826_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_827_0")
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_828_0")
        global.msg[3] = "%"
        instance_create(0, 0, obj_dialoguer)
        self.con = 88.1
    }
    if ((self.con == 88.1) && (!d_ex()))
    {
        self.con = 88.2
        self.alarm[4] = 30
    }
    if ((self.con == 89.2) && (!d_ex()))
    {
        snd_play(snd_smallswing)
        with (self.r)
            self.sprite_index = spr_ralseir
        self.con = 90
        self.alarm[4] = 30
    }
    if (self.con == 91)
    {
        snd_play(snd_smallswing)
        with (self.k)
            self.sprite_index = spr_krisr_dark
        self.con = 92
        self.alarm[4] = 45
    }
    if (self.con == 93)
    {
        global.fc = 1
        global.fe = 0
        global.typer = 30
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_861_0")
        scr_ralface(1, 8)
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_863_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 94
    }
    if ((self.con == 94) && (!d_ex()))
    {
        self.con = 95
        self.alarm[4] = 30
    }
    if (self.con == 96)
    {
        snd_play(snd_smallswing)
        with (self.s)
            self.sprite_index = spr_susier_dark_unhappy
        self.con = 97
        self.alarm[4] = 30
    }
    if (self.con == 98)
    {
        with (self.s)
        {
            self.hspeed = 3
            self.image_speed = 0.2
        }
        with (self.k)
        {
            self.hspeed = 3
            self.image_speed = 0.2
        }
        with (self.r)
        {
            self.hspeed = 4
            self.image_speed = 0.2
        }
        self.con = 99
        self.alarm[4] = 30
    }
    if (self.con == 100)
    {
        with (self.k)
            scr_halt()
        with (self.s)
            scr_halt()
        with (self.r)
            scr_halt()
        self.con = 101
        self.alarm[4] = 15
    }
    if (self.con == 102)
    {
        global.fc = 2
        global.fe = 8
        global.typer = 31
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_919_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_920_0")
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_921_0")
        global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_922_0")
        scr_kingface(4, 2)
        global.msg[5] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_924_0")
        global.msg[6] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_925_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 103
    }
    if ((self.con == 103) && (!d_ex()))
    {
        snd_play(snd_break1)
        with (self.king)
        {
            scr_shakeobj()
            self.image_index = 2
        }
        self.con = 104
        self.alarm[4] = 30
    }
    if (self.con == 105)
    {
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_941_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_942_0")
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_943_0")
        scr_ralface(3, 6)
        global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_945_0")
        global.msg[5] = "%"
        instance_create(0, 0, obj_dialoguer)
        self.con = 106
    }
    if ((self.con == 106) && (!d_ex()))
    {
        self.disto = (point_distance(self.r.x, self.r.y, (self.king.x - 90), (self.king.y + 50)) / 2)
        self.r.king = self.king
        with (self.r)
        {
            self.image_speed = 0.25
            move_towards_point((self.king.x - 90), (self.king.y + 50), 2)
        }
        self.con = 107
        self.alarm[4] = self.disto
    }
    if (self.con == 108)
    {
        with (self.r)
            scr_halt()
        self.con = 109
        self.alarm[4] = 10
    }
    if (self.con == 110)
    {
        with (self.r)
        {
            scr_anim(spr_ralseib_spell, 0.25)
            self.x -= 10
            self.y -= 10
        }
        snd_play(snd_spellcast)
        self.con = 111
        self.alarm[4] = 15
    }
    if (self.con == 112)
    {
        snd_play(snd_power)
        self.healanim = instance_create(self.king.x, self.king.y, obj_healanim)
        self.healanim.target = self.king
        self.con = 115
        self.alarm[4] = 60
    }
    if (self.con == 116)
    {
        with (self.r)
        {
            self.sprite_index = spr_ralseir
            self.x += 10
            self.y += 10
        }
        global.fe = 8
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_994_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_995_0")
        scr_kingface(2, 1)
        global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_997_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 125
    }
    if ((self.con == 125) && (!d_ex()))
    {
        snd_play(snd_bigcut)
        snd_play(snd_spearrise)
        with (self.king)
            self.image_index = 4
        self.deathhit0 = 0
        self.deathhit1 = 0
        self.deathhit2 = 0
        for (self.i = 0; self.i < 15; self.i += 1)
        {
            self.deathwave[self.i, 0] = scr_marker((self.k.x + 20), (500 + (self.i * 30)), spr_spadebullet_chunk)
            self.deathwave[self.i, 1] = scr_marker((self.r.x + 20), (500 + (self.i * 30)), spr_spadebullet_chunk)
            for (self.j = 0; self.j < 2; self.j += 1)
            {
                with (self.deathwave[self.i, self.j])
                {
                    self.vspeed = -40
                    self.image_angle = 90
                }
            }
        }
        self.con = 126
        self.alarm[4] = 80
    }
    if (self.con == 126)
    {
        if ((self.deathwave[0, 0].y <= (self.s.y + 20)) && (self.deathhit0 == 0))
        {
            with (self.s)
            {
                self.sprite_index = spr_susie_fell
                self.vspeed = 4
                self.hspeed = -1
                self.friction = 0.2
                scr_shakeobj()
            }
            self.deathhit0 = 1
            snd_play(snd_damage)
        }
        if ((self.deathwave[0, 0].y <= (self.k.y + 20)) && (self.deathhit1 == 0))
        {
            with (self.k)
            {
                self.sprite_index = spr_kris_fell
                self.hspeed = 2
                self.vspeed = 4
                self.friction = 0.2
                scr_shakeobj()
            }
            self.deathhit1 = 1
            instance_create(0, 0, obj_shake)
            snd_play(snd_hurt1)
        }
        if ((self.deathwave[0, 1].y <= (self.r.y + 20)) && (self.deathhit2 == 0))
        {
            with (self.r)
            {
                self.sprite_index = spr_ralsei_fell
                scr_shakeobj()
                self.hspeed = 2
                self.vspeed = -6
                self.friction = 0.2
            }
            self.deathhit2 = 1
            snd_play(snd_damage)
        }
    }
    if (self.con == 127)
    {
        snd_play(snd_smallswing)
        with (self.king)
            self.sprite_index = spr_kingl
        self.con = 128
        self.alarm[4] = 30
    }
    if (self.con == 129)
    {
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1067_0")
        global.msg[1] = "%"
        instance_create(0, 0, obj_dialoguer)
        self.con = 130
    }
    if ((self.con == 130) && (!d_ex()))
    {
        global.currentsong[0] = snd_init("GALLERY.ogg")
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.8, 1)
        snd_play(snd_break1)
        with (self.s)
        {
            self.sprite_index = spr_susier_kneel
            scr_shakeobj()
        }
        with (self.k)
        {
            self.sprite_index = spr_krisr_kneel
            scr_shakeobj()
        }
        self.con = 131
        self.alarm[4] = 30
    }
    if (self.con == 132)
    {
        global.fe = 9
        global.fc = 1
        global.typer = 30
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1090_0")
        global.msg[1] = "%"
        self.con = 133
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 133) && (!d_ex()))
    {
        snd_play(snd_spearappear)
        self.con = 134
        self.spadechunk2 = scr_marker((self.s.x + 200), (self.s.y + 50), spr_spadebullet_chunk)
        self.spadechunk2.image_angle = 180
        self.spadechunk2.image_alpha = 0
        self.spadechunk2.hspeed = 2
        self.spadechunk2.friction = 0.1
        for (self.i = 0; self.i < 15; self.i += 1)
        {
            for (self.j = 0; self.j < 2; self.j += 1)
            {
                with (self.deathwave[self.i, self.j])
                    instance_destroy()
            }
        }
    }
    if (self.con == 134)
    {
        self.spadechunk2.image_alpha += 0.1
        if (self.spadechunk2.image_alpha >= 2)
            self.con = 135
    }
    if (self.con == 135)
    {
        global.typer = 33
        global.fc = 20
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1137_0")
        global.msg[1] = "%"
        instance_create(0, 0, obj_dialoguer)
        self.con = 136
    }
    if ((self.con == 136) && (!d_ex()))
    {
        snd_play(snd_spearrise)
        self.hdisto = (((self.s.x + 90) - self.spadechunk2.x) / 10)
        self.spadechunk2.hspeed = (self.hdisto + 7)
        self.spadechunk2.friction = -1
        self.disto = (point_distance(self.k.x, self.k.y, (self.s.x + 60), (self.s.y + 10)) / 10)
        self.k.s = self.s
        self.k.disto = self.disto
        with (self.k)
        {
            scr_anim(spr_krisb_defend, 0.5)
            move_towards_point((self.s.x + 60), (self.s.y + 10), self.disto)
        }
        self.con = 137
        self.alarm[4] = self.disto
    }
    if (self.con == 138)
    {
        snd_play(snd_bell)
        with (self.k)
        {
            scr_halt()
            scr_shakeobj()
        }
        with (self.spadechunk2)
            instance_destroy()
        self.con = 139
        self.alarm[4] = 30
    }
    if (self.con == 140)
    {
        global.fe = 9
        global.fc = 1
        global.typer = 30
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1176_0")
        global.msg[1] = "%"
        instance_create(0, 0, obj_dialoguer)
        self.con = 141
    }
    if ((self.con == 141) && (!d_ex()))
    {
        snd_play(snd_bigcut)
        snd_play(snd_spearrise)
        self.deathhit0 = 0
        self.deathhit1 = 0
        for (self.i = 0; self.i < 15; self.i += 1)
        {
            self.deathwave[self.i, 0] = scr_marker(self.k.x, (-30 - (self.i * 30)), spr_spadebullet_chunk)
            with (self.deathwave[self.i, 0])
            {
                self.vspeed = 40
                self.image_angle = 270
            }
        }
        self.con = 142
        self.alarm[4] = 40
    }
    if (self.con == 142)
    {
        if ((self.deathwave[0, 0].y >= (self.s.y + 20)) && (self.deathhit0 == 0))
        {
            snd_play(snd_damage)
            with (self.s)
            {
                self.sprite_index = spr_susie_fell
                self.vspeed = 4
                self.hspeed = 2
                self.friction = 0.2
                scr_shakeobj()
            }
            self.deathhit0 = 1
        }
        if ((self.deathwave[0, 0].y >= (self.k.y + 20)) && (self.deathhit1 == 0))
        {
            instance_create(0, 0, obj_shake)
            snd_play(snd_damage)
            snd_play(snd_hurt1)
            with (self.k)
            {
                self.sprite_index = spr_krisr_kneel
                self.hspeed = 1
                self.vspeed = 2
                self.friction = 0.2
                scr_shakeobj()
            }
            self.deathhit1 = 1
        }
    }
    if (self.con == 143)
    {
        global.fe = 0
        global.typer = 33
        global.fc = 20
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1227_0")
        global.msg[1] = "%"
        self.con = 143.1
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 143.1) && (!d_ex()))
    {
        snd_play(snd_spearrise)
        self.spadechunk3 = scr_marker((self.k.x + 30), -30, spr_spadebullet_chunk)
        self.spadechunk3.vspeed = 30
        self.spadechunk3.image_angle = 270
        self.deathhit1 = 0
        self.con = 144
    }
    if (self.con == 144)
    {
        if ((self.spadechunk3.y >= (self.k.y + 20)) && (self.deathhit1 == 0))
        {
            snd_play(snd_hurt1)
            with (self.k)
            {
                self.sprite_index = spr_kris_fell
                self.hspeed = -16
                self.vspeed = 0
                self.friction = 0.2
                scr_shakeobj()
            }
            self.deathhit1 = 1
            self.con = 145
        }
    }
    if (self.con == 145)
    {
        if (__view_get(0, 0) > 0)
        {
            __view_set(0, 0, (__view_get(0, 0) + (self.k.hspeed * 2)))
            if (__view_get(0, 0) <= 0)
                __view_set(0, 0, 0)
        }
        if (abs(self.k.hspeed) < 0.2)
            self.con = 150
    }
}
if ((self.con >= 150) && (self.con < 250))
{
    if (self.con == 150)
    {
        if (self.part == 0)
        {
            self.k = scr_dark_marker(266, 180, spr_kris_fell)
            self.part = 1
        }
        else
        {
            with (self.king)
                instance_destroy()
            with (self.s)
                instance_destroy()
            with (self.r)
                instance_destroy()
            with (obj_marker)
                instance_destroy()
            self.k = scr_dark_marker(266, 180, spr_kris_fell)
        }
        self.con = 151
        self.alarm[4] = 1
    }
    if (self.con == 152)
    {
        self.king = scr_dark_marker(640, (self.k.y - 80), spr_kingl)
        self.siner = 0
        self.con = 153
    }
    if (self.con == 153)
    {
        self.siner += 1
        self.sinup = abs((sin((self.siner / 8)) * 3))
        if (self.sinup >= 1)
            self.king.image_index = 1
        else
            self.king.image_index = 0
        self.king.x -= self.sinup
        if (self.king.x <= (self.k.x + 47))
        {
            self.king.x = (self.k.x + 46)
            with (self.king)
                scr_halt()
            self.con = 154
            self.alarm[4] = 30
        }
    }
    if (self.con == 155)
    {
        global.fe = 5
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1324_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1325_0")
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1326_0")
        global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1327_0")
        global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1328_0")
        global.msg[5] = "%"
        instance_create(0, 0, obj_dialoguer)
        self.con = 156
    }
    if ((self.con == 156) && (!d_ex()))
    {
        self.k.visible = 0
        with (self.king)
        {
            self.sprite_index = spr_king_liftkris
            self.image_index = 1
        }
        self.con = 157
        self.alarm[4] = 30
    }
    if (self.con == 158)
    {
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1345_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1346_0")
        global.msg[2] = "%"
        instance_create(0, 0, obj_dialoguer)
        self.con = 159
        self.grabsounded = 0
    }
    if ((self.con == 159) && (!d_ex()))
    {
        if (self.grabsounded == 0)
        {
            snd_play(snd_grab)
            self.grabsounded = 1
        }
        self.king.image_index += 0.25
        if (self.king.image_index >= 4)
        {
            snd_play(snd_spearappear)
            self.spadechunk4 = scr_marker((self.k.x + 20), 100, spr_spadebullet_chunk)
            self.spadechunk4.image_alpha = 0
            self.spadechunk4.vspeed = -2
            self.spadechunk4.friction = 0.1
            self.spadechunk4.image_angle = 270
            self.con = 160
            self.alarm[4] = 30
        }
    }
    if (self.con == 160)
        self.spadechunk4.image_alpha += 0.1
    if (self.con == 161)
    {
        global.fe = 4
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1379_0")
        global.msg[1] = "%"
        instance_create(0, 0, obj_dialoguer)
        self.con = 162
    }
    if ((self.con == 162) && (!d_ex()))
    {
        snd_free_all()
        snd_play(snd_impact)
        snd_play(snd_damage)
        instance_create(0, 0, obj_shake)
        self.hitanim = instance_create((self.king.x + 52), (self.king.y + 80), obj_animation)
        self.hitanim.depth = -100
        self.hitanim.sprite_index = spr_attack_mash2
        self.hitanim.image_xscale = 2
        self.hitanim.image_yscale = 2
        self.hitanim.image_speed = 0.5
        self.spadechunk4.image_alpha = 1
        self.k2 = scr_dark_marker((self.king.x - 30), (self.king.y + 34), spr_kris_drop)
        self.k2.gravity = 1
        self.k2.hspeed = -2
        with (self.king)
        {
            scr_shakeobj()
            self.image_index = 5
        }
        self.con = 163
    }
    if (self.con == 163)
    {
        self.spadechunk4.image_alpha -= 0.2
        if (self.k2.y >= (self.king.y + 80))
        {
            self.k.x = self.k2.x
            with (self.k2)
                instance_destroy()
            self.k.visible = 1
            self.con = 164
            self.alarm[4] = 30
        }
    }
    if (self.con == 165)
    {
        self.s = scr_dark_marker(640, (self.king.y + 76), spr_susie_brave)
        scr_pan(4, 0, 50)
        self.con = 166
        self.alarm[4] = 50
    }
    if (self.con == 167)
    {
        self.con = 168
        self.alarm[4] = 10
    }
    if (self.con == 169)
    {
        global.currentsong[0] = snd_init("wind.ogg")
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.5, 0.7)
        global.flag[29] = 1
        global.fc = 1
        global.typer = 30
        global.fe = 2
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1442_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1443_0")
        global.msg[2] = "%"
        instance_create(0, 0, obj_dialoguer)
        self.con = 170
    }
    if ((self.con == 170) && (!d_ex()))
    {
        snd_play(snd_smallswing)
        with (self.king)
        {
            self.sprite_index = spr_kingr
            self.hspeed = 4
            self.friction = 0.5
            self.image_index = 0
        }
        self.con = 171
        self.alarm[4] = 30
    }
    if (self.con == 172)
    {
        global.fc = 20
        global.typer = 33
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1470_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1471_0")
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1472_0")
        global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1473_0")
        global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1474_0")
        global.msg[5] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1475_0")
        global.msg[6] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1476_0")
        global.msg[7] = "%"
        if (self.type == 1)
        {
            global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1480_0")
            global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1481_0")
            global.msg[3] = "%"
        }
        instance_create(0, 0, obj_dialoguer)
        self.con = 173
    }
    if ((self.con == 173) && (!d_ex()))
    {
        self.con = 174
        self.alarm[4] = 7
    }
    if (self.con == 175)
    {
        with (self.s)
            scr_halt()
        self.con = 176
        self.alarm[4] = 10
    }
    if (self.con == 177)
    {
        global.fc = 1
        global.typer = 30
        global.fe = 2
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1513_0")
        global.msg[1] = "%"
        instance_create(0, 0, obj_dialoguer)
        self.con = 178
        self.siner = 0
        self.kingxnow = self.king.x
    }
    if ((self.con == 178) && (!d_ex()))
    {
        self.siner += 1
        self.sinup = abs((sin((self.siner / 8)) * 3))
        self.king.x += self.sinup
        if (self.sinup >= 1.5)
            self.king.image_index = 1
        else
            self.king.image_index = 0
        if (self.king.x >= (self.s.x - 240))
        {
            self.king.x = (self.s.x - 240)
            with (self.king)
                scr_halt()
            self.con = 179
            self.alarm[4] = 30
        }
    }
    if (self.con == 180)
    {
        with (self.king)
            self.image_index = 0
        self.con = 181
        self.alarm[4] = 20
    }
    if (self.con == 182)
    {
        global.typer = 33
        global.fe = 5
        global.fc = 20
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1550_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1551_0")
        global.msg[2] = "%"
        if (self.type == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1555_0")
            global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1556_0")
            global.msg[2] = "%"
        }
        instance_create(0, 0, obj_dialoguer)
        self.con = 183
        self.siner = 0
        self.kx = self.king.x
    }
    if ((self.con == 183) && (!d_ex()))
    {
        self.siner += 1
        self.sinup = abs((sin((self.siner / 8)) * 2))
        self.king.x += self.sinup
        if (self.sinup >= 1)
            self.king.image_index = 1
        else
            self.king.image_index = 0
        if (self.king.x >= (self.kx + 80))
            self.con = 187
    }
    if (self.con == 187)
    {
        with (self.s)
            scr_halt()
        with (self.king)
            scr_halt()
        self.con = 188
        self.alarm[4] = 30
    }
    if (self.con == 189)
    {
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1590_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1591_0")
        if (self.type == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1594_0")
            global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1595_0")
            global.msg[2] = "%"
        }
        instance_create(0, 0, obj_dialoguer)
        self.con = 190
    }
    if ((self.con == 190) && (!d_ex()))
    {
        global.fe = 4
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1605_0")
        scr_susface(1, 4)
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1607_0")
        scr_kingface(3, 5)
        global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1609_0")
        global.msg[5] = "%"
        if (self.type == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1613_0")
            global.msg[1] = "%"
        }
        instance_create(0, 0, obj_dialoguer)
        self.con = 191
        snd_play(snd_spearappear)
        self.spadechunkf[0] = scr_marker((self.k.x + 30), (self.k.y - 100), spr_spadebullet_chunk)
        self.spadechunkf[1] = scr_marker((self.s.x + 70), (self.s.y - 100), spr_spadebullet_chunk)
        for (self.i = 0; self.i < 2; self.i += 1)
        {
            self.spadechunkf[self.i].image_angle = 270
            self.spadechunkf[self.i].image_alpha = 0
            self.spadechunkf[self.i].vspeed = -4
            self.spadechunkf[self.i].friction = 0.5
        }
    }
    if (self.con == 191)
    {
        for (self.i = 0; self.i < 2; self.i += 1)
        {
            self.spadechunkf[self.i].image_alpha += 0.1
            if (self.spadechunkf[self.i].image_alpha >= 3)
                self.con = 192
        }
        if ((self.con == 192) && (self.type == 1))
            self.con = 240
    }
    if ((self.con == 192) && (!d_ex()))
    {
        snd_free_all()
        with (self.king)
            self.sprite_index = spr_kingr_fallasleep
        with (self.king)
        {
            self.o = scr_oflash()
            self.o.flashcolor = 16711680
        }
        snd_play(snd_shadowpendant)
        self.king.image_index = 0
        self.con = 193
        self.spadetimer = 0
        self.spadechunkf[0].image_alpha = 1
        self.spadechunkf[1].image_alpha = 1
    }
    if (self.con == 193)
    {
        self.spadetimer += 1
        for (self.i = 0; self.i < 2; self.i += 1)
            self.spadechunkf[self.i].image_alpha -= 0.1
        if (self.spadetimer >= 60)
        {
            with (self.spadechunkf[0])
                instance_destroy()
            with (self.spadechunkf[1])
                instance_destroy()
            self.con = 194
        }
    }
    if (self.con == 194)
    {
        global.fe = 6
        global.typer = 33
        global.fc = 20
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1678_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1679_0")
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1680_0")
        global.msg[3] = "%"
        instance_create(0, 0, obj_dialoguer)
        self.con = 195
    }
    if ((self.con == 195) && (!d_ex()))
    {
        with (self.king)
        {
            self.image_index = 1
            scr_shakeobj()
            self.hspeed = -4
            self.friction = 0.5
        }
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1690_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1691_0")
        global.msg[2] = "%"
        instance_create(0, 0, obj_dialoguer)
        self.con = 196
    }
    if ((self.con == 196) && (!d_ex()))
    {
        with (self.king)
            self.image_index = 2
        global.typer = 36
        global.fe = 8
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1702_0")
        global.msg[1] = "%"
        instance_create(0, 0, obj_dialoguer)
        self.con = 197
    }
    if ((self.con == 197) && (!d_ex()))
    {
        self.con = 201
        with (self.king)
        {
            self.sprite_index = spr_kingr_asleep
            self.image_speed = 0.1
        }
        with (self.s)
        {
            self.x += 60
            self.y -= 10
            self.sprite_index = spr_susiel_eye_dark_unhappy
        }
    }
    if (self.con == 200)
    {
        self.king = scr_dark_marker(480, 100, spr_kingr_asleep)
        with (self.king)
            scr_depth()
        self.k = scr_dark_marker(262, 180, spr_kris_fell)
        with (self.k)
            scr_depth()
        self.s = scr_dark_marker(700, 166, spr_susiel_eye_dark_unhappy)
        with (self.s)
            scr_depth()
        __view_set(0, 0, 200)
        self.con = 201
    }
    if (self.con == 201)
    {
        with (self.s)
        {
            self.hspeed = -13
            self.image_speed = 0.25
            scr_depth()
        }
        with (self.k)
            scr_depth()
        with (self.king)
        {
            self.vspeed = -8
            self.friction = 0.8
            self.depth = 800000
        }
        scr_pan(-7, 0, 28)
        self.con = 202
        self.blend = 0
        self.alarm[4] = 28
    }
    if (self.con == 202)
    {
        self.blend += 0.02
        self.king.image_blend = merge_color(0x00FFFFFF, 0x00000000, self.blend)
    }
    if (self.con == 203)
    {
        with (self.r)
            instance_destroy()
        with (self.s)
            scr_halt()
        self.con = 204
        self.alarm[4] = 20
    }
    if (self.con == 205)
    {
        with (self.k)
            self.sprite_index = spr_krisr_kneel
        global.fe = 3
        global.fc = 1
        global.typer = 30
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1760_0")
        global.msg[1] = "%"
        instance_create(0, 0, obj_dialoguer)
        self.con = 206
    }
    if ((self.con == 206) && (!d_ex()))
    {
        self.r = scr_dark_marker((__view_get(0, 0) + 640), (self.s.y + 10), spr_ralseil)
        with (self.r)
        {
            self.hspeed = -6
            self.image_speed = 0.2
        }
        self.r.depth = (self.s.depth - 1000)
        self.con = 207
        self.alarm[4] = 36
    }
    if (self.con == 208)
    {
        with (self.r)
            scr_halt()
        with (self.s)
            self.sprite_index = spr_susier_eye_dark
        with (self.k)
            self.sprite_index = spr_krisr_dark
        global.fc = 2
        global.fe = 1
        global.typer = 31
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1785_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1786_0")
        scr_susface(2, 2)
        global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1788_0")
        global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1789_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 209
    }
    if ((self.con == 209) && (!d_ex()))
    {
        with (self.r)
            self.sprite_index = spr_ralseir
        self.con = 210
        self.alarm[4] = 30
    }
    if (self.con == 211)
    {
        global.fc = 2
        global.fe = 4
        global.typer = 31
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1806_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1807_0")
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1808_0")
        global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1809_0")
        global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1810_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 212
    }
    if ((self.con == 212) && (!d_ex()))
    {
        with (self.s)
        {
        }
        with (self.r)
            self.sprite_index = spr_ralseil
        self.con = 213
        self.alarm[4] = 4
    }
    if (self.con == 214)
    {
        with (self.s)
            scr_halt()
        global.fc = 1
        global.typer = 30
        global.fe = 3
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1828_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1829_0")
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1830_0")
        global.msg[3] = "%"
        instance_create(0, 0, obj_dialoguer)
        self.con = 215
    }
    if ((self.con == 215) && (!d_ex()))
    {
        with (self.s)
            self.sprite_index = spr_susiel_eye_dark
        self.con = 216
    }
    if ((self.con == 216) && (!d_ex()))
    {
        with (self.k)
            self.sprite_index = spr_krisl_dark
        with (self.l)
            instance_destroy()
        self.l = scr_dark_marker((__view_get(0, 0) - 80), self.k.y, spr_lancer_rt)
        with (self.l)
            self.hspeed = 8
        self.con = 217
        self.alarm[4] = 20
    }
    if (self.con == 218)
    {
        with (self.l)
            scr_halt()
        global.fe = 2
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1856_0")
        scr_lanface(1, 3)
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1858_0")
        scr_susface(3, 9)
        global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1860_0")
        global.msg[5] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1861_0")
        scr_lanface(6, 2)
        global.msg[7] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1863_0")
        global.msg[8] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1864_0")
        global.msg[9] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1865_0")
        scr_susface(10, 9)
        global.msg[11] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1867_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 219
    }
    if ((self.con == 219) && (!d_ex()))
    {
        self.screen_noise = snd_loop(snd_rumble)
        with (self.l)
            self.sprite_index = spr_lancer_l_unhappy
        with (self.s)
            self.sprite_index = spr_susie_shock
        with (self.r)
            self.sprite_index = spr_ralsei_shock_overworld
        self.shake = instance_create(0, 0, obj_shake)
        with (self.shake)
        {
            self.permashake = 1
            self.shakex = 2
            self.shakey = 2
        }
        self.con = 220
        self.alarm[4] = 60
    }
    if (self.con == 221)
    {
        with (self.shake)
            self.permashake = 0
        snd_stop(self.screen_noise)
        with (self.l)
            self.sprite_index = spr_lancer_r_unhappy
        with (self.s)
            self.sprite_index = spr_susiel_eye_dark_unhappy
        with (self.r)
            self.sprite_index = spr_ralseil
        global.typer = 31
        global.fc = 2
        global.fe = 3
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1896_0")
        scr_lanface(1, 4)
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1898_0")
        global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1899_0")
        global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1900_0")
        global.msg[5] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1901_0")
        global.msg[6] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1902_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 222
    }
    if ((self.con == 222) && (!d_ex()))
    {
        with (self.l)
            self.sprite_index = spr_lancer_l_unhappy
        global.fe = 4
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1911_0")
        scr_susface(1, 3)
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1913_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 223
    }
    if ((self.con == 223) && (!d_ex()))
    {
        with (self.l)
            self.sprite_index = spr_lancer_r_unhappy
        with (self.r)
        {
            self.sprite_index = spr_ralseid
            self.image_speed = 0.25
            self.vspeed = 3
        }
        self.con = 222.1
        self.alarm[4] = 10
    }
    if (self.con == 223.1)
    {
        with (self.r)
        {
            self.sprite_index = spr_ralseil
            self.vspeed = 0
            self.hspeed = -6
        }
        self.con = 222.2
        self.alarm[4] = 35
    }
    if (self.con == 223.2)
    {
        with (self.r)
        {
            self.sprite_index = spr_ralseiu
            self.vspeed = -3
            self.hspeed = 0
        }
        with (self.k)
        {
            self.hspeed = 3
            self.image_speed = 0.25
        }
        with (self.s)
        {
            self.hspeed = 3
            self.image_speed = 0.25
        }
        self.con = 224
        self.alarm[4] = 10
    }
    if (self.con == 225)
    {
        with (self.k)
            scr_halt()
        with (self.s)
            scr_halt()
        with (self.r)
            scr_halt()
        with (self.r)
            self.sprite_index = spr_ralseir
        self.con = 226
        self.alarm[4] = 30
    }
    if (self.con == 227)
    {
        global.fc = 2
        global.typer = 31
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1957_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1958_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 268
    }
    if ((self.con == 240) && (!d_ex()))
    {
        global.typer = 30
        global.fc = 1
        global.fe = 4
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1973_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_1974_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 241
    }
    if ((self.con == 241) && (!d_ex()))
    {
        snd_free_all()
        with (self.s)
        {
            self.x += 60
            self.y -= 10
            self.sprite_index = spr_susiel_eye_dark
        }
        with (self.king)
            self.sprite_index = spr_king_shock
        self.king.image_index = 0
        self.king.siner = 0
        self.shake = instance_create(0, 0, obj_shake)
        with (self.shake)
        {
            self.permashake = 1
            self.shakex = 2
            self.shakey = 2
        }
        self.rumble = snd_loop(snd_rumble)
        self.con = 242
        self.alarm[4] = 30
    }
    if (self.con == 242)
    {
        with (self.spadechunkf[0])
            self.image_alpha -= 0.1
        with (self.spadechunkf[1])
            self.image_alpha -= 0.1
    }
    if (self.con == 243)
        self.con = 250
}
if ((self.con >= 250) && (self.con <= 265))
{
    if (self.con == 250)
    {
        if (self.part == 0)
        {
            self.k = scr_dark_marker(266, 180, spr_kris_fell)
            with (self.k)
                self.depth = 800000
            __view_set(0, 0, 200)
            self.king = scr_dark_marker(439, 100, spr_king_kneel)
            self.king.siner = 0
            self.part = 1
        }
        with (self.k)
            self.depth = 800000
        self.xmake = 8
        self.ymake = 4
        for (self.i = 0; self.i < self.xmake; self.i += 1)
        {
            for (self.j = 0; self.j < self.ymake; self.j += 1)
            {
                self.cwp[self.i, self.j] = scr_dark_marker(((__view_get(0, 0) - 180) - (self.i * 90)), (230 + (self.j * 30)), spr_crowdpiece)
                with (self.cwp[self.i, self.j])
                {
                    self.siner = 0
                    self.hspeed = 12
                    scr_depth()
                }
                self.cwp[self.i, self.j].siner = (self.i + (self.j * 2))
            }
        }
        self.l = scr_dark_marker(((__view_get(0, 0) - 180) - 280), 60, spr_lancer_rt)
        with (self.l)
        {
            self.hspeed = 12
            self.siner = 0
        }
        self.crowdshift = 1
        self.con = 251
        self.alarm[4] = 45
        self.lifttimer = 0
        self.liftking = 0
    }
    if (self.crowdshift == 1)
    {
        for (self.i = 0; self.i < self.xmake; self.i += 1)
        {
            for (self.j = 0; self.j < self.ymake; self.j += 1)
            {
                with (self.cwp[self.i, self.j])
                {
                    self.siner += 1
                    self.image_xscale = (2 + (sin((self.siner / 12)) * 0.05))
                    self.image_yscale = (2 + (sin((self.siner / 6)) * 0.1))
                }
            }
        }
        with (self.l)
        {
            self.siner += 1
            self.y += sin((self.siner / 6))
        }
    }
    if (self.liftking == 1)
    {
        with (self.king)
        {
            self.siner += 1
            self.y += sin((self.siner / 6))
        }
    }
    if (self.con == 251)
    {
        self.lifttimer += 1
        if ((self.lifttimer == 18) || (self.lifttimer == 35))
            snd_play(snd_wing)
        if (self.lifttimer >= 18)
        {
            with (self.k)
            {
                self.sprite_index = spr_krisr_kneel
                self.x += 12
            }
        }
        if (self.lifttimer >= 35)
        {
            with (self.king)
            {
                self.vspeed = -8
                self.friction = 1
                self.sprite_index = spr_king_fall
                self.image_speed = 0.2
            }
            self.liftking = 1
        }
    }
    if (self.con == 252)
    {
        global.currentsong[0] = snd_init("lancer.ogg")
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.8, 1)
        with (obj_shake)
            self.permashake = 0
        snd_stop(snd_rumble)
        with (self.l)
            scr_halt()
        for (self.i = 0; self.i < self.xmake; self.i += 1)
        {
            for (self.j = 0; self.j < self.ymake; self.j += 1)
            {
                with (self.cwp[self.i, self.j])
                    scr_halt()
            }
        }
        self.con = 253
        self.alarm[4] = 30
    }
    if (self.con == 254)
    {
        global.typer = 33
        global.fc = 20
        global.fe = 6
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2116_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2117_0")
        scr_lanface(2, 2)
        global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2119_0")
        global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2120_0")
        global.msg[5] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2121_0")
        global.msg[6] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2122_0")
        global.msg[7] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2123_0")
        global.msg[8] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2124_0")
        global.msg[9] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2125_0")
        scr_kingface(10, 6)
        global.msg[11] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2127_0")
        global.msg[12] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2128_0")
        scr_lanface(13, 2)
        global.msg[14] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2130_0")
        global.msg[15] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2131_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 255
    }
    if ((self.con == 255) && (!d_ex()))
    {
        mus_volume(global.currentsong[1], 0, 60)
        with (self.king)
        {
            self.hspeed = -12
            self.friction = 0
        }
        with (self.l)
            self.hspeed = -12
        for (self.i = 0; self.i < self.xmake; self.i += 1)
        {
            for (self.j = 0; self.j < self.ymake; self.j += 1)
            {
                with (self.cwp[self.i, self.j])
                    self.hspeed = -12
            }
        }
        self.con = 256
        self.alarm[4] = 60
        global.fc = 20
        global.fe = 6
        global.typer = 33
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2155_0")
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 257) && (!d_ex()))
    {
        snd_free_all()
        self.con = 350
    }
}
if ((self.con >= 265) && (self.con < 320))
{
    if ((self.con == 268) && (!d_ex()))
    {
        with (self.s)
            self.sprite_index = spr_susier_eye_dark_lookup
        self.con = 269
        self.alarm[4] = 15
    }
    if (self.con == 270)
    {
        global.fe = 0
        global.typer = 30
        global.fc = 1
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2182_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 275
    }
    if ((self.con == 275) && (!d_ex()))
    {
        with (self.s)
            self.sprite_index = spr_susiel_eye_dark
        with (self.l)
        {
            self.hspeed = 8
            self.sprite_index = spr_lancer_rt
        }
        with (self.r)
            self.sprite_index = spr_ralseil
        with (self.k)
            self.sprite_index = spr_krisl_dark
        self.con = 276
        self.alarm[4] = 3
    }
    if ((self.con == 277) && (!d_ex()))
    {
        with (self.l)
            scr_halt()
        global.typer = 32
        global.fc = 5
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2205_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2206_0")
        scr_susface(2, 2)
        global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2208_0")
        scr_lanface(4, 3)
        global.msg[5] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2210_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 280
    }
    if ((self.con == 280) && (!d_ex()))
    {
        with (self.s)
        {
            self.sprite_index = spr_susiel_dark_laugh
            self.image_speed = 0.334
        }
        with (self.l)
        {
            self.sprite_index = spr_lancer_rt_laugh
            self.image_speed = 0.334
        }
        self.ll = snd_play(snd_lancerlaugh)
        self.sl = snd_play(snd_suslaugh)
        snd_volume(self.ll, 0.8, 0)
        snd_volume(self.sl, 0.8, 0)
        self.con = 281
        self.alarm[4] = 70
    }
    if (self.con == 282)
    {
        with (self.s)
        {
            scr_halt()
            self.sprite_index = spr_susiel_dark_eyes
        }
        with (self.l)
        {
            scr_halt()
            self.sprite_index = spr_lancer_lt
        }
        global.typer = 32
        global.fc = 5
        global.fe = 3
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2235_0")
        scr_susface(1, 2)
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2237_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 283
    }
    if ((self.con == 283) && (!d_ex()))
    {
        with (self.l)
            self.hspeed = -8
        with (self.k)
        {
            self.hspeed = 6
            self.sprite_index = spr_krisr_dark
            self.image_speed = 0.2
        }
        with (self.s)
        {
            self.hspeed = 6
            self.sprite_index = spr_susier_eye_dark
            self.image_speed = 0.2
        }
        with (self.r)
        {
            self.hspeed = 5.5
            self.sprite_index = spr_ralseir
            self.image_speed = 0.2
        }
        scr_pan(6, 0, 160)
        self.con = 284
        self.alarm[4] = 160
    }
    if (self.con == 285)
    {
        with (self.r)
            scr_halt()
        with (self.s)
        {
            scr_halt()
            self.sprite_index = spr_susiel_eye_dark_unhappy
        }
        with (self.k)
        {
            scr_halt()
            self.sprite_index = spr_krisl_dark
        }
        global.fc = 2
        global.fe = 4
        global.typer = 31
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2262_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2263_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 286
    }
    if ((self.con == 286) && (!d_ex()))
    {
        with (self.r)
        {
            self.sprite_index = spr_ralsei_pullhat
            self.image_speed = 0.1
        }
        global.fc = 0
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2272_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2273_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 287
        self.rtimer = 0
    }
    if ((self.con == 287) && (!d_ex()))
    {
        with (self.r)
        {
            self.sprite_index = spr_ralsei_reveal
            self.image_index = 0
            self.image_speed = 0
        }
        self.con = 288
    }
    if (self.con == 288)
    {
        self.rtimer += 0.1
        with (self.r)
            self.image_index += 0.1
        if (self.rtimer >= 2)
        {
            self.con = 289
            self.alarm[4] = 10
        }
    }
    if (self.con == 290)
    {
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2294_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2295_0")
        scr_susface(2, 4)
        global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2297_0")
        global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2298_0")
        global.msg[5] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2299_0")
        global.msg[6] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2300_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 291
        self.hatsounded = 0
    }
    if ((self.con == 291) && (!d_ex()))
    {
        if (self.hatsounded == 0)
        {
            snd_play(snd_wing)
            self.hatsounded = 1
        }
        with (self.r)
            self.image_index += 0.1
        self.rtimer += 0.1
        if (self.rtimer >= 6)
        {
            self.con = 292
            self.alarm[4] = 30
            with (self.s)
            {
                self.sprite_index = spr_susie_shock
                scr_shakeobj()
            }
        }
    }
    if (self.con == 293)
    {
        global.flag[30] = 2
        global.fc = 2
        global.typer = 31
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2320_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 294
    }
    if ((self.con == 294) && (!d_ex()))
    {
        with (self.r)
            self.image_index += 0.1
        self.rtimer += 0.1
        if (self.rtimer >= 11)
        {
            self.con = 295
            self.alarm[4] = 30
        }
    }
    if (self.con == 296)
    {
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2335_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2336_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 297
    }
    if ((self.con == 297) && (!d_ex()))
    {
        global.typer = 30
        global.fc = 1
        global.fe = 6
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2347_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2348_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 298
    }
    if ((self.con == 298) && (!d_ex()))
    {
        with (self.k)
            self.sprite_index = spr_krisr_dark
        with (self.s)
        {
            self.sprite_index = spr_susier_eye_dark
            self.image_index = 1
            self.hspeed = 6
        }
        if (global.plot >= 240)
        {
            with (self.s)
                self.hspeed = 0
        }
        self.con = 299
        self.alarm[4] = 4
    }
    if (self.con == 300)
    {
        with (self.s)
            scr_halt()
        self.con = 301
        self.alarm[4] = 30
    }
    if (self.con == 302)
    {
        global.fe = 2
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2372_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 303
    }
    if ((self.con == 303) && (!d_ex()))
    {
        with (self.s)
        {
            self.image_speed = 0.2
            self.hspeed = 4
        }
        with (self.k)
        {
            self.image_speed = 0.2
            self.hspeed = 4
        }
        self.con = 304
        self.alarm[4] = 110
        self.fade = instance_create(0, 0, obj_fadeout)
        with (self.fade)
            self.fadespeed = 0.01
        if (global.plot < 240)
            scr_pan(3, 0, 999)
    }
    if (self.con == 305)
    {
        scr_losechar()
        scr_getchar(2)
        global.interact = 3
        global.entrance = 1
        if (global.plot < 240)
        {
            global.plot = 240
            global.flag[248] = 1
        }
        instance_create(0, 0, obj_persistentfadein)
        room_goto_next()
    }
}
if ((self.con >= 350) && (self.con < 700))
{
    if ((self.con == 350) && (!d_ex()))
    {
        if (self.part == 0)
        {
            __view_set(0, 0, 200)
            self.k = scr_dark_marker(598, 180, spr_krisr_kneel)
            self.s = scr_dark_marker(700, 166, spr_susiel_eye_dark_unhappy)
            with (self.k)
                self.depth = 800000
            with (self.s)
                scr_depth()
        }
        with (self.k)
            scr_depth()
        with (self.s)
            scr_depth()
        with (self.r)
            instance_destroy()
        with (self.s)
        {
            self.hspeed = -6
            self.image_speed = 0.25
        }
        self.con = 351
        self.alarm[4] = 6
    }
    if (self.con == 352)
    {
        with (self.s)
            scr_halt()
        global.fe = 3
        global.typer = 30
        global.fc = 1
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2435_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 353
    }
    if ((self.con == 353) && (!d_ex()))
    {
        with (self.k)
            self.sprite_index = spr_krisr_dark
        with (self.s)
            self.sprite_index = spr_susier_eye_dark
        scr_pan(3, 0, 60)
        self.r = scr_dark_marker((__view_get(0, 0) + 800), (self.s.y + 10), spr_ralseil)
        with (self.r)
        {
            self.hspeed = -4
            self.image_speed = 0.2
        }
        self.con = 354
        self.alarm[4] = 60
    }
    if (self.con == 355)
    {
        with (self.r)
            scr_halt()
        self.con = 356
        self.alarm[4] = 30
    }
    if (self.con == 357)
    {
        global.fc = 2
        global.fe = 3
        global.typer = 31
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2463_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2464_0")
        scr_susface(2, 2)
        global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2466_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 358
    }
    if ((self.con == 358) && (!d_ex()))
    {
        with (self.r)
            self.sprite_index = spr_ralseir
        self.con = 359
        self.alarm[4] = 30
    }
    if (self.con == 360)
    {
        global.fe = 4
        global.typer = 31
        global.fc = 2
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2484_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2485_0")
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2486_0")
        global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2487_0")
        global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2488_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 361
    }
    if ((self.con == 361) && (!d_ex()))
    {
        with (self.s)
        {
        }
        with (self.r)
            self.sprite_index = spr_ralseil
        self.con = 362
        self.alarm[4] = 4
    }
    if (self.con == 363)
    {
        with (self.s)
            scr_halt()
        global.typer = 30
        global.fc = 1
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2506_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2507_0")
        global.msg[2] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2508_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 364
    }
    if ((self.con == 364) && (!d_ex()))
    {
        with (self.s)
            self.sprite_index = spr_susier_eye_dark_lookup
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2516_0")
        self.con = 365
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 365) && (!d_ex()))
    {
        with (self.s)
            self.sprite_index = spr_susier_eye_dark_unhappy
        with (self.r)
            self.sprite_index = spr_ralseid_pleased
        global.typer = 31
        global.fc = 2
        global.fe = 8
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2528_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2529_0")
        scr_susface(2, 2)
        global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2531_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 366
    }
    if ((self.con == 366) && (!d_ex()))
    {
        with (self.r)
            self.sprite_index = spr_ralseid
        self.con = 367
        self.alarm[4] = 30
    }
    if (self.con == 368)
    {
        with (self.r)
            self.sprite_index = spr_ralseil
        global.typer = 31
        global.fc = 2
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2549_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2550_0")
        scr_susface(2, 1)
        global.msg[3] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2552_0")
        global.msg[4] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2553_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 369
    }
    if ((self.con == 369) && (!d_ex()))
    {
        with (self.r)
        {
            self.vspeed = -1
            self.image_speed = 0.2
            self.sprite_index = spr_ralseid
        }
        with (self.s)
        {
            self.hspeed = 5
            self.image_speed = 0.2
        }
        with (self.k)
        {
            self.hspeed = 5
            self.image_speed = 0.2
        }
        with (self.r)
            self.depth = 900000
        scr_pan(4, 0, 50)
        self.con = 370
        self.alarm[4] = 50
    }
    if (self.con == 371)
    {
        with (self.r)
            scr_halt()
        with (self.s)
            scr_halt()
        with (self.k)
            scr_halt()
        with (self.r)
            self.sprite_index = spr_ralseir
        self.con = 372
        self.alarm[4] = 45
    }
    if (self.con == 373)
    {
        with (self.s)
            self.sprite_index = spr_susiel_eye_dark_unhappy
        with (self.k)
            self.sprite_index = spr_krisl_dark
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2584_0")
        global.msg[1] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2585_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 374
    }
    if ((self.con == 374) && (!d_ex()))
    {
        with (self.k)
        {
            self.sprite_index = spr_krisr_dark
            self.image_speed = 0.2
            self.hspeed = 6
        }
        with (self.s)
        {
            self.sprite_index = spr_susier_eye_dark_unhappy
            self.image_speed = 0.2
            self.hspeed = 6
        }
        scr_pan(5, 0, 999)
        self.con = 375
        self.alarm[4] = 60
    }
    if (self.con == 376)
    {
        self.fade = instance_create(0, 0, obj_fadeout)
        with (self.fade)
            self.fadespeed = 0.02
        self.con = 377
        self.alarm[4] = 60
    }
    if (self.con == 378)
    {
        scr_losechar()
        scr_getchar(2)
        global.plot = 240
        global.entrance = 1
        global.interact = 3
        instance_create(0, 0, obj_persistentfadein)
        room_goto_next()
    }
}
if (self.con >= 700)
{
    if ((self.con == 700) && ((global.plot >= 243) && ((global.interact == 0) && (obj_mainchara.x >= 1900))))
    {
        global.interact = 1
        self.con = 701
        with (obj_caterpillarchara)
            self.visible = 0
        with (obj_mainchara)
            self.visible = 0
        with (obj_npc_facing)
            self.visible = 0
        self.s = scr_dark_marker(obj_caterpillarchara.x, obj_caterpillarchara.y, spr_susiel_dark_eyes)
        with (self.s)
            scr_depth()
        self.k = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, spr_krisl_dark)
        with (self.k)
            scr_depth()
        self.r = scr_dark_marker(obj_npc_facing.x, obj_npc_facing.y, spr_ralseir)
        with (self.r)
            scr_depth()
        global.typer = 31
        global.fc = 2
        global.fe = 6
        global.msg[0] = scr_84_get_lang_string("obj_kingcutscene_slash_Step_0_gml_2648_0")
        mus_volume(global.currentsong[1], 0, 80)
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 701) && (!d_ex()))
    {
        with (self.r)
        {
            self.sprite_index = spr_ralseid
            self.image_speed = 0.1
            self.vspeed = 1
        }
        self.con = 702
        self.alarm[4] = 60
    }
    if (self.con == 703)
    {
        with (self.r)
            scr_halt()
        self.con = 704
        self.alarm[4] = 20
    }
    if (self.con == 705)
    {
        global.plot = 244
        snd_free_all()
        self.con = 286
    }
}
