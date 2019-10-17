if (self.susinit == 0)
{
    with (obj_herosusie)
    {
        self.idlesprite = 471
        self.attacksprite = 475
    }
    self.susinit = 1
}
if (global.monster[self.myself] == 1)
{
    global.flag[(51 + self.myself)] = 4
    if ((global.mnfight == 1) && (self.talked == 0))
    {
        if (!instance_exists(obj_darkener))
            instance_create(0, 0, obj_darkener)
        global.typer = 50
        global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_25_0")
        self.blcontype = 3
        if (self.kturn == 0)
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_27_0")
        if (self.kturn == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_28_0")
            self.blcontype = 8
        }
        if (self.kturn == 2)
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_29_0")
        if (self.kturn == 3)
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_30_0")
        if (self.kturn == 4)
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_31_0")
        if (self.kturn == 5)
        {
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_32_0")
            self.blcontype = 8
        }
        if (self.kturn == 6)
        {
            self.blcontype = 8
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_36_0")
            global.msg[1] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_37_0")
        }
        if (self.kturn == 7)
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_39_0")
        if (self.kturn == 8)
        {
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_40_0")
            global.msg[1] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_41_0")
            self.blcontype = 8
        }
        if (self.kturn == 9)
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_43_0")
        if (self.kturn == 10)
        {
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_44_0")
            global.msg[1] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_45_0")
        }
        if (self.kturn == 11)
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_46_0")
        if (self.kturn == 12)
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_47_0")
        if (self.kturn == 13)
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_48_0")
        if (self.kturn >= 14)
        {
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_49_0")
            self.battlecancel = 2
        }
        self.kturn += 1
        if (self.kturn <= 11)
            self.attack = self.kturn
        else
        {
            if (self.kturn == 12)
                self.attack = 7
            if (self.kturn == 13)
                self.attack = 8
            if (self.kturn == 14)
                self.attack = 10
            if (self.kturn == 15)
                self.attack = 9
            if (self.kturn == 16)
                self.attack = 7
            if (self.kturn == 17)
                self.attack = 11
            if (self.kturn >= 18)
                self.attack = 11
            if (global.monsterdf[self.myself] > -25)
                global.monsterdf[self.myself] -= 5
        }
        self.target_randomly = 1
        if ((self.attack == 2) || ((self.attack == 5) || ((self.attack == 10) || (self.attack == 11))))
            scr_targetall()
        else
            scr_randomtarget()
        scr_enemyblcon((self.x - 160), self.y, self.blcontype)
        self.talked = 1
        self.talktimer = 0
    }
    if ((self.talked == 1) && (global.mnfight == 1))
    {
        self.rtimer = 0
        scr_blconskip(-1)
    }
    if ((global.mnfight == 2) && (self.attacked == 0))
    {
        self.rtimer += 1
        if (self.rtimer == 12)
        {
            self.talktimer = 0
            global.turntimer = 180
            event_user(5)
            self.turns += 1
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0, 1, 2, 3)
            if (self.rr == 0)
                global.battlemsg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_104_0")
            if (self.rr == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_105_0")
            if (self.rr == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_106_0")
            if (self.rr == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_107_0")
            if (global.monsterhp[self.myself] <= (global.monstermaxhp[self.myself] / 4))
                global.battlemsg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_110_0")
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
if (self.con == 1)
    self.con = 4
if ((self.con == 4) && (!instance_exists(obj_writer)))
{
    self.con = 5
    self.alarm[4] = 15
    with (obj_battlecontroller)
        self.alarm[2] = 17
}
if (self.con == 6)
{
    with (obj_battlecontroller)
        self.noreturn = 0
    global.flag[247] = 1
    scr_monsterdefeat()
    event_user(10)
    instance_destroy()
    self.con = 7
}
if (global.myfight == 3)
{
    self.xx = __view_get(0, 0)
    self.yy = __view_get(1, 0)
    if ((self.acting == 1) && (self.actcon == 0))
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_169_0")
        global.msg[1] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_170_0")
        scr_battletext_default()
    }
    if ((self.acting == 2) && (self.actcon == 0))
    {
        if (global.tempflag[5] == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_180_0")
            scr_kingface(1, 5)
            global.msg[2] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_182_0")
            global.msg[3] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_183_0")
            global.msg[4] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_184_0")
            scr_noface(5)
            global.msg[6] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_186_0")
            global.tempflag[5] = 1
            global.canact[self.myself, 1] = 1
            global.actactor[self.myself, 1] = 1
            global.actname[self.myself, 1] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_192_0")
            global.actdesc[self.myself, 1] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_193_0")
            global.actcost[self.myself, 1] = 62
        }
        else
        {
            snd_play(snd_power)
            with (obj_heroparent)
            {
                self.__of = scr_oflash()
                self.__of.flashcolor = 4235519
            }
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_201_0")
            self.tempattack = 0.8
        }
        scr_battletext_default()
        self.actcon = 1
    }
    if ((self.acting == 3) && (self.actcon == 0))
    {
        if (global.tempflag[6] == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_214_0")
            scr_susface(1, 1)
            global.msg[2] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_216_0")
            global.msg[3] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_217_0")
            global.msg[4] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_218_0")
            scr_kingface(5, 0)
            global.msg[6] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_220_0")
            global.msg[7] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_221_0")
            scr_susface(8, "C")
            global.msg[9] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_223_0")
            global.msg[10] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_224_0")
            scr_noface(11)
            global.msg[12] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_226_0")
            global.tempflag[6] = 1
            global.canact[self.myself, 2] = 1
            global.actactor[self.myself, 2] = 2
            global.actname[self.myself, 2] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_232_0")
            global.actdesc[self.myself, 2] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_233_0")
            global.actcost[self.myself, 2] = 150
            self.actcon = 1
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_241_0")
            self.actcon = 10
        }
        scr_battletext_default()
        self.acttimer = 0
    }
    if ((self.acting == 4) && (self.actcon == 0))
    {
        if (global.tempflag[7] == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_254_0")
            scr_ralface(1, "B")
            global.msg[2] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_256_0")
            global.msg[3] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_257_0")
            global.msg[4] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_258_0")
            scr_kingface(5, 6)
            global.msg[6] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_260_0")
            global.msg[7] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_261_0")
            global.msg[8] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_262_0")
            scr_ralface(9, 8)
            global.msg[10] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_264_0")
            scr_noface(11)
            global.msg[12] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_266_0")
            scr_battletext_default()
            global.tempflag[7] = 1
            global.canact[self.myself, 3] = 1
            global.actactor[self.myself, 3] = 3
            global.actname[self.myself, 3] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_273_0")
            global.actdesc[self.myself, 3] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_274_0")
            global.actcost[self.myself, 3] = 125
            self.actcon = 1
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_282_0")
            scr_battletext_default()
            self.actcon = 20
        }
        self.acttimer = 0
    }
    if (self.actcon == 10)
    {
        self.acttimer += 1
        if ((self.acttimer >= 10) || (!instance_exists(obj_writer)))
        {
            self.acttimer = 0
            self.actcon = 11
        }
    }
    if (self.actcon == 11)
    {
        global.faceaction[1] = 2
        global.charaction[1] = 2
        global.charspecial[1] = 5
        global.chartarget[1] = 0
        global.acting[1] = 0
        snd_play(snd_boost)
        self.heartanim = instance_create((obj_herokris.x + 30), (obj_herokris.y + 50), obj_animation)
        with (self.heartanim)
        {
            self.depth = -20
            self.image_index = 0
            self.image_xscale = 2
            self.image_yscale = 2
            self.image_speed = 1
            self.sprite_index = spr_soulshining
        }
        with (obj_herokris)
            scr_oflash()
        with (obj_herosusie)
            scr_oflash()
        self.actcon = 12
    }
    if (self.actcon == 12)
    {
        self.acttimer += 1
        if (self.acttimer >= 20)
        {
            self.actcon = 1
            with (obj_herosusie)
                self.state = 0
        }
    }
    if (self.actcon == 20)
    {
        self.acttimer += 1
        if ((self.acttimer >= 10) || (!instance_exists(obj_writer)))
        {
            self.acttimer = 0
            self.actcon = 21
        }
    }
    if (self.actcon == 21)
    {
        global.faceaction[2] = 2
        global.charaction[2] = 2
        global.charspecial[2] = 6
        global.chartarget[2] = 0
        global.acting[2] = 0
        snd_play(snd_boost)
        self.heartanim = instance_create((obj_herokris.x + 30), (obj_herokris.y + 50), obj_animation)
        with (self.heartanim)
        {
            self.depth = -20
            self.image_index = 0
            self.image_xscale = 2
            self.image_yscale = 2
            self.image_speed = 1
            self.sprite_index = spr_soulshining
        }
        with (obj_heroralsei)
            scr_oflash()
        with (obj_herokris)
            scr_oflash()
        self.actcon = 22
    }
    if (self.actcon == 22)
    {
        self.acttimer += 1
        if (self.acttimer >= 20)
        {
            self.actcon = 1
            with (obj_heroralsei)
                self.state = 0
        }
    }
    if ((self.actcon == 1) && (!instance_exists(obj_writer)))
    {
        self.actcon = 0
        scr_attackphase()
    }
}
if (global.myfight == 7)
    self.hspeed = 15
if (!instance_exists(obj_shake))
{
    __view_set(0, 0, self.remxx)
    __view_set(1, 0, self.remyy)
}
