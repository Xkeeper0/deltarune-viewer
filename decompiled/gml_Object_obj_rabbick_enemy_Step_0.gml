if (global.monster[self.myself] == 1)
{
    if ((global.mnfight == 1) && (self.talked == 0))
    {
        scr_randomtarget()
        if (!instance_exists(obj_darkener))
            instance_create(0, 0, obj_darkener)
        global.typer = 50
        self.rr = choose(0, 1, 2, 3)
        self.rando = floor(random(50))
        if (self.rando == 0)
            self.rr = 4
        if (self.rr == 0)
            global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_13_0")
        if (self.rr == 1)
            global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_14_0")
        if (self.rr == 2)
            global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_15_0")
        if (self.rr == 3)
            global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_16_0")
        if (self.rr == 4)
            global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_17_0")
        if (self.blown == 1)
        {
            if ((self.rr == 0) || (self.rr == 4))
                global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_21_0")
            if (self.rr == 1)
                global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_22_0")
            if (self.rr == 2)
                global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_23_0")
            if (self.rr == 3)
                global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_24_0")
        }
        scr_enemyblcon((self.x - 160), self.y, 3)
        self.talked = 1
        self.talktimer = 0
    }
    if ((self.talked == 1) && (global.mnfight == 1))
    {
        self.rtimer = 0
        scr_blconskip(15)
        if (global.mnfight == 2)
        {
            if (!instance_exists(obj_moveheart))
                scr_moveheart()
            if (!instance_exists(obj_growtangle))
                instance_create((__view_get(0, 0) + 320), (__view_get(1, 0) + 170), obj_growtangle)
        }
    }
    if ((global.mnfight == 2) && (self.attacked == 0))
    {
        self.rtimer += 1
        if (self.rtimer == 12)
        {
            self.rr = choose(0, 1)
            if (self.rr == 0)
            {
                self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
                self.dc.type = 30
                self.dc.target = self.mytarget
                self.dc.damage = (global.monsterat[self.myself] * 5)
                self.dc.grazepoints = 9
                self.dc.timepoints = 3
            }
            else
            {
                self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
                self.dc.type = 32
                self.dc.target = self.mytarget
                self.dc.damage = (global.monsterat[self.myself] * 5)
                self.dc.grazepoints = 9
                self.dc.timepoints = 3
            }
            self.turns += 1
            global.turntimer = 170
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0, 1, 2, 3)
            if (self.rr == 0)
                global.battlemsg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_79_0")
            if (self.rr == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_80_0")
            if (self.rr == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_81_0")
            if (self.rr == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_82_0")
            if (global.monsterhp[self.myself] <= (global.monstermaxhp[self.myself] / 3))
                global.battlemsg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_83_0")
            if (global.mercymod[self.myself] >= global.mercymax[self.myself])
                global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_84_0")
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
if (global.myfight == 3)
{
    self.xx = __view_get(0, 0)
    self.yy = __view_get(1, 0)
    if ((self.acting == 1) && (self.actcon == 0))
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_118_0")
        scr_battletext_default()
    }
    if ((self.acting == 2) && (self.actcon == 0))
    {
        self.blowall = 0
        self.input_name = scr_get_input_name(4)
        global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_128_0"), self.input_name)
        if (self.blown == 0)
        {
            self.actcon = 10
            self.blowing = 1
            self.blowtimer = 90
            scr_battletext_default()
        }
        if (self.blown == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_138_0")
            scr_battletext_default()
            self.actcon = 20
        }
    }
    if ((self.acting == 3) && (self.actcon == 0))
    {
        self.blowall = 1
        self.input_name = scr_get_input_name(4)
        global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_150_0"), self.input_name)
        self.actcon = 10
        self.blowing = 1
        self.blowtimer = 90
        obj_rabbick_enemy.bunnycount = 0
        obj_rabbick_enemy.bunnyid = self.id
        with (obj_rabbick_enemy)
        {
            if (self.blown == 0)
                self.bunnyid.bunnycount += 1
            self.blowbuffer = 2
            self.blow_wait = 0
            self.blowall = 1
            self.blowing = 1
            self.blowtimer = 90
        }
        if (self.bunnycount == 0)
        {
            with (obj_rabbick_enemy)
            {
                self.blowing = 0
                self.blowtimer = -1
                self.actcon = 30
                global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_175_0")
            }
        }
        scr_battletext_default()
    }
    if ((self.acting == 4) && (self.actcon == 0))
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_186_0")
        if (scr_monsterpop() > 1)
            global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_188_0")
        for (self.i = 0; self.i < 3; self.i += 1)
        {
            global.monstercomment[self.i] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_191_0")
            global.automiss[self.i] = 1
        }
        scr_battletext_default()
    }
    if ((self.actcon == 10) && (self.blowing == 0))
    {
        with (obj_writer)
            instance_destroy()
        self.actcon = 1
    }
    if ((self.actcon == 20) && (!instance_exists(obj_writer)))
    {
        event_user(10)
        self.actcon = 1
    }
    if ((self.actcon == 30) && (!instance_exists(obj_writer)))
    {
        with (obj_rabbick_enemy)
            event_user(10)
        self.actcon = 1
    }
    if ((self.actcon == 1) && (!instance_exists(obj_writer)))
    {
        self.actcon = 0
        scr_attackphase()
    }
    if (self.blowing == 1)
    {
        if (self.blow_wait == 1)
            self.blowtimer -= 1
        self.blowbuffer -= 1
        if ((self.blowamt > 0) && (self.blowanimtimer <= 0))
            self.blowamt -= 1
        if ((self.blowbuffer <= 0) && button1_p())
        {
            self.blow_wait = 1
            snd_stop(snd_whistlebreath)
            self.blowsnd = snd_play(snd_whistlebreath)
            snd_pitch(self.blowsnd, (1 + (self.blowamt / 100)))
            self.onoff = 0
            self.shakeamt = 5
            self.blowamt += 12
            self.blowbuffer = 2
            self.blowanimtimer = 20
            repeat (6)
                event_user(2)
        }
        if (self.blowtimer <= 0)
            self.blowing = 0
        if (self.blowamt >= 100)
        {
            if (self.blown == 0)
            {
                scr_mercyadd(self.myself, 100)
                self.blown = 1
                self.blowing = 0
                self.blowanimtimer = 0
                repeat (15)
                    event_user(2)
            }
        }
        if (self.blowing == 0)
        {
        }
    }
}
