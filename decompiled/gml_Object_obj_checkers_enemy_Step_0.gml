if (global.monstertype[self.myself] == 21)
    self.secondtime = 1
if (global.monster[self.myself] == 1)
{
    global.flag[(51 + self.myself)] = 4
    if (self.secondtime == 1)
        self.milk_counter = 99
    if (self.secondtime == 1)
        self.ralsei_lecture = 99
    if ((global.mnfight == 1) && (self.talked == 0))
    {
        scr_randomtarget()
        if (!instance_exists(obj_darkener))
            instance_create(0, 0, obj_darkener)
        self.milkmax = 1000
        if (self.milk_counter > 0)
            self.milkmax = 600
        if (global.monsterhp[self.myself] > self.milkmax)
        {
            if ((!instance_exists(obj_moveheart)) && (!instance_exists(obj_heart)))
                scr_moveheart()
            if (!instance_exists(obj_growtangle))
                instance_create((__view_get(0, 0) + 320), (__view_get(1, 0) + 170), obj_growtangle)
        }
        global.mnfight = 2
        self.rtimer = 0
        global.typer = 50
        self.talked = 2
        self.attacked = 0
        self.talktimer = 0
    }
    if (self.talked == 2)
        global.mnfight = 2
    if ((global.mnfight == 2) && (self.attacked == 0))
    {
        self.rtimer += 1
        if (self.rtimer == 12)
        {
            self.talked = 0
            self.milkmax = 1000
            if (self.milk_counter > 0)
                self.milkmax = 600
            if (global.monsterhp[self.myself] <= self.milkmax)
            {
                if (self.scon == 0)
                    self.scon = 1
            }
            else
            {
                if (!instance_exists(obj_checkers_leap))
                {
                    if (self.attacktype == 0)
                        self.rr = 0
                    if (self.attacktype == 1)
                        self.rr = 3
                    if (self.attacktype == 2)
                        self.rr = 1
                    if (self.attacktype == 3)
                        self.rr = 2
                    self.dc = instance_create(self.x, self.y, obj_checkers_leap)
                    self.dc.leapmode = self.rr
                    self.dc.target = self.mytarget
                    self.dc.damage = (global.monsterat[self.myself] * 5)
                    self.attacktype += 1
                    if (self.attacktype > 3)
                        self.attacktype = 0
                }
                self.siner = 0
                self.visible = 0
                self.turns += 1
            }
            global.turntimer = 999
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0)
            global.battlemsg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_77_0")
            if (global.monsterstatus[self.myself] == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_79_0")
            if (global.monsterhp[self.myself] <= (global.monstermaxhp[self.myself] / 3))
                global.battlemsg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_80_0")
            if (self.crown > 0)
                global.battlemsg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_82_0"), string(self.crown))
        }
        else
            global.turntimer = 120
    }
    if (global.mnfight == 2)
    {
        if (global.turntimer <= 1)
        {
            if (self.battlecancel == 1)
                global.mercymod[self.myself] = 999
            if (self.battlecancel == 2)
            {
                with (obj_battlecontroller)
                    self.noreturn = 1
                self.con = 1
                self.battlecancel = 3
            }
        }
    }
}
if (self.scon == 1)
{
    if (self.milk_counter > 0)
        self.scon = 1.5
    else
    {
        with (obj_writer)
            instance_destroy()
        global.msg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_119_0")
        scr_battletext_default()
        self.scon = 1.5
    }
}
if ((self.scon == 1.5) && (!instance_exists(obj_writer)))
{
    snd_play(snd_magicsprinkle)
    with (obj_writer)
        instance_destroy()
    global.msg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_129_0")
    global.turntimer = 999
    scr_battletext_default()
    self.milk = scr_dark_marker((self.x - 100), (self.y + 60), spr_checkers_milk)
    with (self.milk)
    {
        self.image_speed = 0
        self.image_xscale = 4
        self.image_yscale = 4
        self.image_alpha = 0
    }
    self.milk.depth = (self.depth - 1)
    self.scon = 2
    self.milktimer = 0
}
if (self.scon == 2)
{
    with (self.milk)
    {
        self.image_xscale -= 0.2
        self.image_yscale -= 0.2
        self.image_alpha += 0.1
    }
    self.milktimer += 1
    if (self.milktimer >= 10)
    {
        self.scon = 3
        self.milktimer = 0
        with (self.milk)
            self.image_alpha = 1.4
    }
}
if (self.scon == 3)
{
    self.milktimer += 1
    if (self.milktimer >= 25)
    {
        self.scon = 4
        self.milktimer = 0
    }
}
if (self.scon == 4)
{
    with (self.milk)
    {
        self.hspeed += 2
        self.image_alpha -= 0.1
    }
    self.milktimer += 1
    if (self.milktimer == 10)
    {
        if (global.monsterat[self.myself] < 10)
            global.monsterat[self.myself] += 0.5
        snd_play(snd_power)
        self.milkheal = 700
        if (self.milk_counter == 0)
            self.milkheal = 300
        global.monsterhp[self.myself] += self.milkheal
        self.healamt = instance_create(global.monsterx[self.myself], global.monstery[self.myself], obj_dmgwriter)
        with (self.healamt)
        {
            self.delay = 8
            self.type = 3
            self.damage = 700
        }
        self.healamt.damage = self.milkheal
        self.hanim = instance_create(self.x, self.y, obj_healanim)
        self.hanim.target = self.id
    }
    if (self.milktimer >= 15)
    {
        with (self.milk)
            instance_destroy()
        self.scon = 5
        self.milktimer = 0
    }
}
if (self.scon == 5)
{
    self.milktimer += 1
    if (self.milktimer >= 30)
    {
        if (self.milk_counter > 0)
        {
            with (obj_writer)
                instance_destroy()
            self.scon = 0
            self.milktimer = 0
            global.turntimer = 0
        }
        else
        {
            with (obj_writer)
                instance_destroy()
            self.scon = 6
            global.msg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_226_0")
            scr_ralface(1, 3)
            global.msg[2] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_228_0")
            scr_susface(3, 3)
            global.msg[4] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_230_0")
            scr_battletext_default()
        }
        self.milk_counter += 1
    }
}
if (self.scon == 6)
{
    if (!instance_exists(obj_writer))
    {
        global.fc = 0
        self.scon = 0
        self.milktimer = 0
        global.turntimer = 0
    }
}
if (global.myfight == 3)
{
    self.xx = __view_get(0, 0)
    self.yy = __view_get(1, 0)
    if ((self.acting == 1) && (self.actcon == 0))
    {
        self.actcon = 1
        if (self.secondtime == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_263_0")
            global.actname[self.myself, 0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_264_0")
            global.flag[246] = 1
            if (self.checked == 1)
                global.msg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_268_0")
            self.checked = 1
        }
        else
        {
            if (global.flag[246] == 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_277_0")
                global.msg[1] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_278_0")
            }
            else
            {
                global.msg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_282_0")
                global.msg[1] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_283_0")
            }
            self.checked = 1
        }
        scr_battletext_default()
    }
    if ((self.acting == 2) && (self.actcon == 0))
    {
        if (self.secondtime == 0)
            self.crown += 15
        if (self.secondtime == 1)
            self.crown += 18
        global.msg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_296_0")
        with (obj_herokris)
            self.visible = 0
        global.faceaction[0] = 0
        global.charaction[0] = 0
        self.bowkris = scr_dark_marker(obj_herokris.x, obj_herokris.y, spr_krisb_bow)
        with (self.bowkris)
        {
            scr_oflash()
            self.a = scr_afterimage()
            self.a.hspeed = 5
            self.a.depth = (self.depth + 1)
        }
        snd_play(snd_item)
        scr_battletext_default()
        self.actcon = 20
    }
    if ((self.actcon == 20) && (!instance_exists(obj_writer)))
    {
        self.visible = 0
        self.bowcheck = scr_dark_marker(self.x, self.y, spr_checkers_bow)
        with (self.bowcheck)
            self.image_speed = 0.334
        global.fc = 0
        global.typer = 4
        global.msg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_327_0")
        if ((self.ralsei_lecture == 0) && (self.secondtime == 0))
        {
            global.msg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_330_0")
            scr_ralface(1, 0)
            global.msg[2] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_332_0")
            global.msg[3] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_333_0")
            global.msg[4] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_334_0")
            scr_susface(5, 0)
            global.msg[6] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_336_0")
            global.msg[7] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_337_0")
            scr_ralface(8, 1)
            global.msg[9] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_339_0")
            self.ralsei_lecture = 1
        }
        if ((self.thrown == 0) && (self.secondtime == 1))
        {
            if (self.bowcounter == 0)
            {
                global.fc = 2
                global.fe = 3
                global.typer = 45
                global.msg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_349_0")
                global.msg[1] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_350_0")
                scr_susface(2, 1)
                global.msg[3] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_352_0")
            }
            if (self.bowcounter == 1)
            {
                global.fc = 2
                global.fe = 3
                global.typer = 45
                global.msg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_359_0")
                global.msg[1] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_360_0")
                scr_susface(2, 2)
                global.msg[3] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_362_0")
            }
            if (self.bowcounter == 2)
            {
                global.fc = 2
                global.fe = 8
                global.typer = 45
                global.msg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_369_0")
                global.msg[1] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_370_0")
                scr_susface(2, 7)
                global.msg[3] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_372_0")
            }
        }
        self.bowcounter += 1
        scr_battletext()
        self.actcon = 21
    }
    if ((self.actcon == 21) && (!instance_exists(obj_writer)))
    {
        with (self.bowkris)
            instance_destroy()
        with (self.bowcheck)
            instance_destroy()
        self.visible = 1
        with (obj_herokris)
            self.visible = 1
        self.actcon = 1
    }
    if (self.secondtime == 0)
    {
        if ((self.acting == 3) && (self.actcon == 0))
        {
            self.crown += 20
            global.msg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_398_0")
            with (obj_herokris)
                self.visible = 0
            with (obj_heroralsei)
                self.visible = 0
            global.faceaction[0] = 0
            global.charaction[0] = 0
            global.faceaction[1] = 0
            global.charaction[1] = 0
            self.bowkris = scr_dark_marker(obj_herokris.x, obj_herokris.y, spr_krisb_bow)
            with (self.bowkris)
            {
                scr_oflash()
                self.a = scr_afterimage()
                self.a.hspeed = 5
                self.a.depth = (self.depth + 1)
            }
            self.bowral = scr_dark_marker(obj_heroralsei.x, obj_heroralsei.y, spr_ralseib_bow)
            with (self.bowral)
            {
                scr_oflash()
                self.a = scr_afterimage()
                self.a.hspeed = 5
                self.a.depth = (self.depth + 1)
            }
            snd_play(snd_item)
            scr_battletext_default()
            self.actcon = 30
        }
    }
    if ((self.actcon == 30) && (!instance_exists(obj_writer)))
    {
        self.visible = 0
        self.bowcheck = scr_dark_marker(self.x, self.y, spr_checkers_bow)
        with (self.bowcheck)
            self.image_speed = 0.5
        global.msg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_442_0")
        if ((self.ralsei_lecture == 0) && (self.secondtime == 0))
        {
            global.msg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_445_0")
            scr_ralface(1, 0)
            global.msg[2] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_447_0")
            global.msg[3] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_448_0")
            global.msg[4] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_449_0")
            scr_susface(5, 0)
            global.msg[6] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_451_0")
            global.msg[7] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_452_0")
            scr_ralface(8, 1)
            global.msg[9] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_454_0")
            self.ralsei_lecture = 1
        }
        scr_battletext_default()
        self.actcon = 31
    }
    if ((self.actcon == 31) && (!instance_exists(obj_writer)))
    {
        with (self.bowral)
            instance_destroy()
        with (self.bowkris)
            instance_destroy()
        with (self.bowcheck)
            instance_destroy()
        self.visible = 1
        with (obj_heroralsei)
            self.visible = 1
        with (obj_herokris)
            self.visible = 1
        self.actcon = 1
    }
    if (self.secondtime == 1)
    {
        if ((self.acting == 3) && (self.actcon == 0))
        {
            if (self.thrown == 1)
            {
                with (self.trsus)
                    instance_destroy()
                self.thrown = 2
            }
            if (self.thrown > 0)
            {
                global.actname[self.myself, 2] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_487_0")
                global.msg[0] = ((scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_489_0") + scr_get_input_name(6)) + scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_489_1"))
                self.flash = 0
                self.becomeflash = 0
                scr_battletext_default()
                self.actcon = 90
                instance_create(self.x, self.y, obj_throwtarget)
                self.throwsus = instance_create(obj_herosusie.x, obj_herosusie.y, obj_throwralsei)
                self.visible = 0
                global.faceaction[1] = 0
                global.charaction[1] = 0
                global.faceaction[2] = 0
                global.charaction[2] = 0
                with (obj_herosusie)
                    self.visible = 0
                with (obj_heroralsei)
                    self.visible = 0
                snd_play(snd_grab)
            }
            else
            {
                global.typer = 31
                global.fc = 2
                global.fe = 6
                global.msg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_510_0")
                scr_susface(1, 0)
                global.msg[2] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_512_0")
                global.msg[3] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_513_0")
                scr_ralface(4, 8)
                global.msg[5] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_515_0")
                global.msg[6] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_516_0")
                scr_susface(7, 2)
                global.msg[8] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_518_0")
                self.actcon = 10
                scr_battletext()
            }
        }
    }
    if ((self.acting == 4) && (self.actcon == 0))
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_531_0")
        global.msg[1] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_532_0")
        if (self.warned == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_535_0")
            global.msg[1] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_536_0")
        }
        if (self.warned == 2)
        {
            global.msg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_540_0")
            global.msg[1] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_541_0")
            global.msg[2] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_542_0")
            global.battleat[2] *= 1.5
        }
        self.warned += 1
        scr_battletext_default()
    }
    if ((self.actcon == 1) && (!instance_exists(obj_writer)))
    {
        self.actcon = 0
        if (self.crown >= 100)
        {
            global.mercymod[self.myself] = 999
            self.actcon = 50
        }
        else
            scr_attackphase()
    }
    if ((self.actcon == 10) && (!instance_exists(obj_writer)))
    {
        self.actcon = 11
        self.alarm[4] = 30
        with (obj_herosusie)
            self.visible = 0
        with (obj_heroralsei)
            self.visible = 0
        self.thrown = 1
        self.trsus = scr_dark_marker(obj_herosusie.x, obj_herosusie.y, spr_susieb_throwralseiready)
        snd_play(snd_grab)
    }
    if (self.actcon == 12)
    {
        global.fe = 7
        global.msg[0] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_578_0")
        global.msg[1] = scr_84_get_lang_string("obj_checkers_enemy_slash_Step_0_gml_579_0")
        scr_battletext()
        self.actcon = 13
    }
    if ((self.actcon == 13) && (!instance_exists(obj_writer)))
        self.actcon = 0
    if (self.actcon == 50)
    {
        self.visible = 0
        snd_free_all()
        self.animtest = instance_create(self.x, self.y, obj_checker_animtest)
        self.animtest.sprite_index = spr_smallchecker_transform3
        self.animtest.image_xscale = 2
        self.animtest.image_yscale = 2
        self.animtest.type = 1
        self.actcon = 51
    }
}
if (global.myfight == 7)
    self.hspeed = 15
