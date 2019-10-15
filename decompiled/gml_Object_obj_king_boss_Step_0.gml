if (self.susinit == 0)
{
    with(obj_herosusie)
    {
        self.idlesprite = 471
        self.attacksprite = 475
    }
    self.susinit = 1
}
if (global.monster[self.myself] == 1)
{
    global.flag[(51 + self.myself)] = 4
    if (global.mnfight == 1)
        _temp_local_var_1 = (self.talked == 0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        if (~ instance_exists(obj_darkener))
            instance_create(0, 0, obj_darkener)
        global.typer = 50
        global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_25_0"@8789)
        self.blcontype = 3
        if (self.kturn == 0)
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_27_0"@8791)
        if (self.kturn == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_28_0"@8792)
            self.blcontype = 8
        }
        if (self.kturn == 2)
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_29_0"@8793)
        if (self.kturn == 3)
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_30_0"@8794)
        if (self.kturn == 4)
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_31_0"@8795)
        if (self.kturn == 5)
        {
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_32_0"@8796)
            self.blcontype = 8
        }
        if (self.kturn == 6)
        {
            self.blcontype = 8
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_36_0"@8797)
            global.msg[1] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_37_0"@8798)
        }
        if (self.kturn == 7)
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_39_0"@8799)
        if (self.kturn == 8)
        {
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_40_0"@8800)
            global.msg[1] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_41_0"@8801)
            self.blcontype = 8
        }
        if (self.kturn == 9)
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_43_0"@8802)
        if (self.kturn == 10)
        {
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_44_0"@8803)
            global.msg[1] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_45_0"@8804)
        }
        if (self.kturn == 11)
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_46_0"@8805)
        if (self.kturn == 12)
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_47_0"@8806)
        if (self.kturn == 13)
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_48_0"@8807)
        if (self.kturn >= 14)
        {
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_49_0"@8808)
            self.battlecancel = 2
        }
        self.kturn = (self.kturn + 1)
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
                global.monsterdf[self.myself] = (global.monsterdf[self.myself] - 5)
        }
        self.target_randomly = 1
        if (self.attack == 2)
            _temp_local_var_2 = 1
        else
        {
            if (self.attack == 5)
                _temp_local_var_2 = 1
            else
            {
                if (self.attack == 10)
                    _temp_local_var_2 = 1
                else
                    _temp_local_var_2 = (self.attack == 11)
            }
        }
        if _temp_local_var_2
            scr_targetall()
        else
            scr_randomtarget()
        scr_enemyblcon((self.x - 160), self.y, self.blcontype)
        self.talked = 1
        self.talktimer = 0
    }
    if (self.talked == 1)
        _temp_local_var_3 = (global.mnfight == 1)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
    {
        self.rtimer = 0
        scr_blconskip(-1)
    }
    if (global.mnfight == 2)
        _temp_local_var_4 = (self.attacked == 0)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
    {
        self.rtimer = (self.rtimer + 1)
        if (self.rtimer == 12)
        {
            self.talktimer = 0
            global.turntimer = 180
            event_user(5)
            self.turns = (self.turns + 1)
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0, 1, 2, 3)
            if (self.rr == 0)
                global.battlemsg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_104_0"@8811)
            if (self.rr == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_105_0"@8812)
            if (self.rr == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_106_0"@8813)
            if (self.rr == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_107_0"@8814)
            if (global.monsterhp[self.myself] <= (global.monstermaxhp[self.myself] / 4))
                global.battlemsg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_110_0"@8815)
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
                with(obj_battlecontroller)
                {
                    self.noreturn = 1
                }
                self.con = 1
                self.battlecancel = 3
            }
        }
    }
}
if (self.con == 1)
    self.con = 4
if (self.con == 4)
    _temp_local_var_5 = (~ instance_exists(obj_writer))
else
    _temp_local_var_5 = 0
if _temp_local_var_5
{
    self.con = 5
    self.alarm[4] = 15
    with(obj_battlecontroller)
    {
        self.alarm[2] = 17
    }
}
if (self.con == 6)
{
    with(obj_battlecontroller)
    {
        self.noreturn = 0
    }
    global.flag[247] = 1
    scr_monsterdefeat()
    event_user(10)
    instance_destroy()
    self.con = 7
}
if (global.myfight == 3)
{
    self.xx = __view_get(e__VW.XView, 0)
    self.yy = __view_get(e__VW.YView, 0)
    if (self.acting == 1)
        _temp_local_var_6 = (self.actcon == 0)
    else
        _temp_local_var_6 = 0
    if _temp_local_var_6
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_169_0"@8816)
        global.msg[1] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_170_0"@8817)
        scr_battletext_default()
    }
    if (self.acting == 2)
        _temp_local_var_7 = (self.actcon == 0)
    else
        _temp_local_var_7 = 0
    if _temp_local_var_7
    {
        if (global.tempflag[5] == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_180_0"@8818)
            scr_kingface(1, 5)
            global.msg[2] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_182_0"@8819)
            global.msg[3] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_183_0"@8820)
            global.msg[4] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_184_0"@8821)
            scr_noface(5)
            global.msg[6] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_186_0"@8822)
            global.tempflag[5] = 1
            global.canact[self.myself][1] = 1
            global.actactor[self.myself][1] = 1
            global.actname[self.myself][1] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_192_0"@8823)
            global.actdesc[self.myself][1] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_193_0"@8824)
            global.actcost[self.myself][1] = 62
        }
        else
        {
            snd_play(snd_power)
            with(obj_heroparent)
            {
                self.__of = scr_oflash()
                self.__of.flashcolor = 4235519
            }
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_201_0"@8826)
            self.tempattack = 0.8
        }
        scr_battletext_default()
        self.actcon = 1
    }
    if (self.acting == 3)
        _temp_local_var_8 = (self.actcon == 0)
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
    {
        if (global.tempflag[6] == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_214_0"@8827)
            scr_susface(1, 1)
            global.msg[2] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_216_0"@8828)
            global.msg[3] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_217_0"@8829)
            global.msg[4] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_218_0"@8830)
            scr_kingface(5, 0)
            global.msg[6] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_220_0"@8831)
            global.msg[7] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_221_0"@8832)
            scr_susface(8, "C"@2530)
            global.msg[9] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_223_0"@8833)
            global.msg[10] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_224_0"@8834)
            scr_noface(11)
            global.msg[12] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_226_0"@8835)
            global.tempflag[6] = 1
            global.canact[self.myself][2] = 1
            global.actactor[self.myself][2] = 2
            global.actname[self.myself][2] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_232_0"@8836)
            global.actdesc[self.myself][2] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_233_0"@8837)
            global.actcost[self.myself][2] = 150
            self.actcon = 1
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_241_0"@8838)
            self.actcon = 10
        }
        scr_battletext_default()
        self.acttimer = 0
    }
    if (self.acting == 4)
        _temp_local_var_9 = (self.actcon == 0)
    else
        _temp_local_var_9 = 0
    if _temp_local_var_9
    {
        if (global.tempflag[7] == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_254_0"@8839)
            scr_ralface(1, "B"@2529)
            global.msg[2] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_256_0"@8840)
            global.msg[3] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_257_0"@8841)
            global.msg[4] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_258_0"@8842)
            scr_kingface(5, 6)
            global.msg[6] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_260_0"@8843)
            global.msg[7] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_261_0"@8844)
            global.msg[8] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_262_0"@8845)
            scr_ralface(9, 8)
            global.msg[10] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_264_0"@8846)
            scr_noface(11)
            global.msg[12] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_266_0"@8847)
            scr_battletext_default()
            global.tempflag[7] = 1
            global.canact[self.myself][3] = 1
            global.actactor[self.myself][3] = 3
            global.actname[self.myself][3] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_273_0"@8848)
            global.actdesc[self.myself][3] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_274_0"@8849)
            global.actcost[self.myself][3] = 125
            self.actcon = 1
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_king_boss_slash_Step_0_gml_282_0"@8850)
            scr_battletext_default()
            self.actcon = 20
        }
        self.acttimer = 0
    }
    if (self.actcon == 10)
    {
        self.acttimer = (self.acttimer + 1)
        if (self.acttimer >= 10)
            _temp_local_var_10 = 1
        else
            _temp_local_var_10 = (~ instance_exists(obj_writer))
        if _temp_local_var_10
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
        with(self.heartanim)
        {
            self.depth = -20
            self.image_index = 0
            self.image_xscale = 2
            self.image_yscale = 2
            self.image_speed = 1
            self.sprite_index = spr_soulshining
        }
        with(obj_herokris)
        {
            scr_oflash()
        }
        with(obj_herosusie)
        {
            scr_oflash()
        }
        self.actcon = 12
    }
    if (self.actcon == 12)
    {
        self.acttimer = (self.acttimer + 1)
        if (self.acttimer >= 20)
        {
            self.actcon = 1
            with(obj_herosusie)
            {
                self.state = 0
            }
        }
    }
    if (self.actcon == 20)
    {
        self.acttimer = (self.acttimer + 1)
        if (self.acttimer >= 10)
            _temp_local_var_11 = 1
        else
            _temp_local_var_11 = (~ instance_exists(obj_writer))
        if _temp_local_var_11
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
        with(self.heartanim)
        {
            self.depth = -20
            self.image_index = 0
            self.image_xscale = 2
            self.image_yscale = 2
            self.image_speed = 1
            self.sprite_index = spr_soulshining
        }
        with(obj_heroralsei)
        {
            scr_oflash()
        }
        with(obj_herokris)
        {
            scr_oflash()
        }
        self.actcon = 22
    }
    if (self.actcon == 22)
    {
        self.acttimer = (self.acttimer + 1)
        if (self.acttimer >= 20)
        {
            self.actcon = 1
            with(obj_heroralsei)
            {
                self.state = 0
            }
        }
    }
    if (self.actcon == 1)
        _temp_local_var_12 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_12 = 0
    if _temp_local_var_12
    {
        self.actcon = 0
        scr_attackphase()
    }
}
if (global.myfight == 7)
    self.hspeed = 15
if (~ instance_exists(obj_shake))
{
    __view_set(e__VW.XView, 0, self.remxx)
    __view_set(e__VW.YView, 0, self.remyy)
}
