if (global.monster[self.myself] == 1)
{
    if ((global.mnfight == 1) && (self.talked == 0))
    {
        scr_randomtarget()
        if (!instance_exists(obj_darkener))
            instance_create(0, 0, obj_darkener)
        global.typer = 50
        self.rr = choose(0, 1, 2, 3)
        self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_11_0")
        self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_12_0")
        self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_13_0")
        if (self.rr == 0)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_17_0")
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_18_0")
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_19_0")
        }
        if (self.rr == 1)
        {
            if scr_havechar(3)
            {
                self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_26_0")
                self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_27_0")
                self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_28_0")
            }
            else
            {
                self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_32_0")
                self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_33_0")
                self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_34_0")
            }
        }
        if (self.rr == 2)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_40_0")
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_41_0")
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_42_0")
        }
        if (self.rr == 3)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_47_0")
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_48_0")
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_49_0")
        }
        if (self.myact == 0)
        {
            if (self.acting == 2)
            {
                self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_61_0")
                self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_62_0")
                self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_63_0")
            }
            if (self.acting == 3)
            {
                self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_67_0")
                self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_68_0")
                self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_69_0")
            }
            if (self.acting == 4)
            {
                self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_73_0")
                self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_74_0")
                self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_75_0")
            }
        }
        if (self.myact == 1)
        {
            if (self.acting == 2)
            {
                self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_86_0")
                self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_87_0")
                self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_88_0")
            }
            if (self.acting == 3)
            {
                self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_92_0")
                self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_93_0")
                self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_94_0")
                if scr_havechar(2)
                    self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_95_0")
                if (!scr_havechar(3))
                {
                    self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_98_0")
                    self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_99_0")
                    self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_100_0")
                }
            }
            if (self.acting == 4)
            {
                self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_105_0")
                self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_106_0")
                self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_107_0")
            }
        }
        if (self.myact == 2)
        {
            if (self.acting == 2)
            {
                self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_117_0")
                self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_118_0")
                self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_119_0")
            }
            if (self.acting == 3)
            {
                self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_123_0")
                self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_124_0")
                self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_125_0")
            }
            if (self.acting == 4)
            {
                self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_130_0")
                self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_131_0")
                self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_132_0")
            }
        }
        if (self.manual == 1)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_139_0")
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_140_0")
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_141_0")
        }
        if (self.betray == 1)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_146_0")
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_147_0")
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_148_0")
        }
        global.msg[0] = self.text1
        scr_enemyblcon((self.x - 110), (self.y - 10), 4)
        global.msg[0] = self.text2
        scr_enemyblcon((self.x - 125), (self.y + 70), 5)
        global.msg[0] = self.text3
        scr_enemyblcon((self.x + 125), (self.y - 10), 6)
        with (obj_monsterparent)
            self.talkmax = 150
        self.talked = 1
        self.talktimer = 0
        self.manual = 0
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
                self.dc.type = 2
                self.dc.target = self.mytarget
                self.dc.damage = (global.monsterat[self.myself] * 5)
            }
            else
            {
                self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
                self.dc.type = 4
                self.dc.target = self.mytarget
                self.dc.damage = (global.monsterat[self.myself] * 5)
            }
            self.turns += 1
            global.turntimer = 140
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0, 1, 2, 3, 4, 5)
            if (self.rr == 0)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_204_0")
            if (self.rr == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_205_0")
            if (self.rr == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_206_0")
            if (self.rr == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_207_0")
            if (self.rr == 4)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_208_0")
            if (self.rr == 5)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_209_0")
            if (global.monsterstatus[self.myself] == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_210_0")
            if (global.monsterhp[self.myself] <= (global.monstermaxhp[self.myself] / 3))
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_211_0")
            if (global.mercymod[self.myself] >= global.mercymax[self.myself])
                global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_212_0")
            if (self.betray == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_213_0")
            self.betray = 0
        }
        else
            global.turntimer = 120
    }
    if (global.mnfight == 2)
    {
        if (global.turntimer <= 1)
        {
            if (self.battlecancel == 1)
                scr_mercyadd(self.myself, 100)
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
        global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_247_0")
        scr_battletext_default()
    }
    if (self.myact == 0)
    {
        if ((self.acting == 2) && (self.actcon == 0))
        {
            global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_261_0")
            self.argue += 1
            scr_battletext_default()
            self.actcon = 1
        }
        if ((self.acting == 3) && (self.actcon == 0))
        {
            global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_269_0")
            self.argue += 1
            scr_battletext_default()
            self.actcon = 1
        }
        if ((self.acting == 4) && (self.actcon == 0))
        {
            global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_277_0")
            self.battlecancel = 1
            scr_battletext_default()
            self.actcon = 1
        }
    }
    if (self.myact == 1)
    {
        if ((self.acting == 2) && (self.actcon == 0))
        {
            global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_293_0")
            self.argue += 1
            scr_battletext_default()
            self.actcon = 1
        }
        if ((self.acting == 3) && (self.actcon == 0))
        {
            global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_301_0")
            self.battlecancel = 1
            scr_battletext_default()
            self.actcon = 1
        }
        if ((self.acting == 4) && (self.actcon == 0))
        {
            global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_309_0")
            self.argue += 1
            scr_battletext_default()
            self.actcon = 1
        }
    }
    if (self.myact == 2)
    {
        if ((self.acting == 2) && (self.actcon == 0))
        {
            global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_324_0")
            self.battlecancel = 1
            scr_battletext_default()
            self.actcon = 1
        }
        if ((self.acting == 3) && (self.actcon == 0))
        {
            global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_332_0")
            self.argue += 1
            scr_battletext_default()
            self.actcon = 1
        }
        if ((self.acting == 4) && (self.actcon == 0))
        {
            global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_340_0")
            self.argue += 1
            scr_battletext_default()
            self.actcon = 1
        }
    }
    if ((self.acting == 5) && (self.actcon == 0))
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_354_0")
        if (scr_monsterpop() > 1)
            global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_356_0")
        for (self.i = 0; self.i < 3; self.i += 1)
        {
            global.monstercomment[self.i] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_359_0")
            global.automiss[self.i] = 1
        }
        scr_battletext_default()
    }
    if ((self.actcon == 1) && (!instance_exists(obj_writer)))
    {
        if (self.argue >= 2)
        {
            global.monstercomment[self.myself] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_377_0")
            global.monsterstatus[self.myself] = 1
        }
        self.actcon = 0
        scr_attackphase()
    }
}
if (global.myfight == 7)
    self.hspeed = 15
