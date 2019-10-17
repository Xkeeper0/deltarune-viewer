if (global.monster[self.myself] == 1)
{
    if ((global.mnfight == 1) && (self.talked == 0))
    {
        scr_randomtarget()
        if (!instance_exists(obj_darkener))
            instance_create(0, 0, obj_darkener)
        self.hb = instance_create((self.x - 100), self.y, obj_heartblcon)
        self.hb.sprite_index = choose(520, 521)
        if (self.acting == 2)
            self.hb.sprite_index = spr_heartblcon_2
        if (self.acting == 3)
            self.hb.sprite_index = spr_heartblcon_3
        self.talked = 1
        self.talktimer = 0
    }
    if ((self.talked == 1) && (global.mnfight == 1))
    {
        self.rtimer = 0
        if (button1_p() && (self.talktimer > 15))
            self.talktimer = self.talkmax
        self.talktimer += 1
        if (self.talktimer >= self.talkmax)
        {
            with (obj_heartblcon)
                instance_destroy()
            global.mnfight = 2
        }
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
        with (obj_heartblcon)
            instance_destroy()
        self.rtimer += 1
        if (self.rtimer == 12)
        {
            self.rr = scr_monsterpop()
            global.turntimer = 140
            if (self.rr == 1)
            {
                self.dc = instance_create(self.x, self.y, obj_spinheart)
                self.dc.type = 0
                self.dc.target = self.mytarget
                self.dc.damage = (global.monsterat[self.myself] * 5)
            }
            else
            {
                self.dc = instance_create(self.x, self.y, obj_heartshaper)
                self.dc.type = 0
                self.dc.target = self.mytarget
                self.dc.damage = (global.monsterat[self.myself] * 5)
                if (global.encounterno == 9)
                    global.turntimer = 100
            }
            self.turns += 1
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0, 1, 2, 3, 4)
            if (self.rr == 0)
                global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_79_0")
            if (self.rr == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_80_0")
            if (self.rr == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_81_0")
            if (self.rr == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_82_0")
            if (self.rr == 4)
                global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_83_0")
            if (global.monsterstatus[self.myself] == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_84_0")
            if (global.monsterhp[self.myself] <= (global.monstermaxhp[self.myself] / 3))
                global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_85_0")
            if (global.mercymod[self.myself] >= global.mercymax[self.myself])
                global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_86_0")
        }
        else
            global.turntimer = 120
    }
    if (global.mnfight == 2)
    {
        if (global.turntimer <= 1)
        {
            if (instance_exists(obj_hathyfightevent) && (self.firstturn == 0))
            {
                if (self.checkhp1 <= global.hp[1])
                {
                    if (self.checkhp2 <= global.hp[2])
                    {
                        with (obj_battlecontroller)
                            self.noreturn = 1
                        with (obj_hathyfightevent)
                            self.con = 15
                    }
                }
            }
            self.firstturn = 1
            if (self.battlecancel == 1)
                global.mercymod[self.myself] = 999
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
        global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_127_0")
        scr_battletext_default()
    }
    if ((self.acting == 2) && (self.actcon == 0))
    {
        self.rr = choose(0, 1, 2)
        global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_136_0")
        if (self.rr == 1)
            global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_137_0")
        if (self.rr == 2)
            global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_138_0")
        scr_mercyadd(self.myself, 100)
        scr_battletext_default()
        self.battlecancel = 1
        self.actcon = 1
    }
    if ((self.acting == 3) && (self.actcon == 0))
    {
        global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_147_0")
        scr_ralface(1, 0)
        self.rr = choose(0, 1, 2)
        global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_150_0")
        if (self.rr == 1)
            global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_151_0")
        if (self.rr == 2)
            global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_152_0")
        scr_mercyadd(0, 100)
        scr_mercyadd(1, 100)
        scr_mercyadd(2, 100)
        self.actcon = 1
        scr_battletext_default()
    }
    if ((self.acting == 4) && (self.actcon == 0))
    {
        self.actcon = 1
        if (global.plot < 150)
        {
            global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_168_0")
            if (scr_monsterpop() > 1)
                global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_170_0")
            for (self.i = 0; self.i < 3; self.i += 1)
            {
                global.monstercomment[self.i] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_173_0")
                global.automiss[self.i] = 1
            }
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_179_0")
            scr_susface(1, 2)
            self.rr = choose(0, 1, 2)
            global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_182_0")
            global.msg[3] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_183_0")
            if (self.rr == 1)
                global.msg[3] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_184_0")
            if (self.rr == 2)
                global.msg[3] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_185_0")
            scr_mercyadd(0, 100)
            scr_mercyadd(1, 100)
            scr_mercyadd(2, 100)
        }
        scr_battletext_default()
    }
    if ((self.actcon == 1) && (!instance_exists(obj_writer)))
    {
        self.actcon = 0
        scr_attackphase()
    }
    if ((self.actcon == 5) && (instance_exists(obj_writer) == 0))
    {
        global.battleat[1] = 90
        global.battleat[2] = 90
        self.actcon = 6
        with (obj_herosusie)
        {
            self.attacktimer = 0
            self.state = 1
            self.points = (100 + round(random(40)))
            global.faceaction[self.myself] = 0
            if (global.automiss[0] == 1)
                self.points = 0
        }
        self.alarm[4] = 50
    }
    if (self.actcon == 7)
    {
        global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_223_0")
        scr_ralface(1, 3)
        global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_225_0")
        if (global.automiss[0] == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_228_0")
            scr_ralface(1, 3)
            global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_230_0")
            global.msg[3] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_231_0")
        }
        scr_battletext()
        self.actcon = 1
    }
}
if (global.myfight == 7)
    self.hspeed = 15
