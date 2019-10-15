if (global.monster[self.myself] == 1)
{
    if (global.mnfight == 1)
        _temp_local_var_1 = (self.talked == 0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        scr_randomtarget()
        if (~ instance_exists(obj_darkener))
            instance_create(0, 0, obj_darkener)
        global.typer = 50
        self.rr = choose(0, 1, 2, 3)
        self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_11_0"@9000)
        self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_12_0"@9001)
        self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_13_0"@9002)
        if (self.rr == 0)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_17_0"@9003)
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_18_0"@9004)
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_19_0"@9005)
        }
        if (self.rr == 1)
        {
            if scr_havechar(3)
            {
                self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_26_0"@9006)
                self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_27_0"@9007)
                self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_28_0"@9008)
            }
            else
            {
                self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_32_0"@9009)
                self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_33_0"@9010)
                self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_34_0"@9011)
            }
        }
        if (self.rr == 2)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_40_0"@9012)
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_41_0"@9013)
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_42_0"@9014)
        }
        if (self.rr == 3)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_47_0"@9015)
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_48_0"@9016)
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_49_0"@9017)
        }
        if (self.myact == 0)
        {
            if (self.acting == 2)
            {
                self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_61_0"@9018)
                self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_62_0"@9019)
                self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_63_0"@9020)
            }
            if (self.acting == 3)
            {
                self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_67_0"@9021)
                self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_68_0"@9022)
                self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_69_0"@9023)
            }
            if (self.acting == 4)
            {
                self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_73_0"@9024)
                self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_74_0"@9025)
                self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_75_0"@9026)
            }
        }
        if (self.myact == 1)
        {
            if (self.acting == 2)
            {
                self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_86_0"@9027)
                self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_87_0"@9028)
                self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_88_0"@9029)
            }
            if (self.acting == 3)
            {
                self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_92_0"@9030)
                self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_93_0"@9031)
                self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_94_0"@9032)
                if scr_havechar(2)
                    self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_95_0"@9033)
                if (~ scr_havechar(3))
                {
                    self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_98_0"@9034)
                    self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_99_0"@9035)
                    self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_100_0"@9036)
                }
            }
            if (self.acting == 4)
            {
                self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_105_0"@9037)
                self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_106_0"@9038)
                self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_107_0"@9039)
            }
        }
        if (self.myact == 2)
        {
            if (self.acting == 2)
            {
                self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_117_0"@9040)
                self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_118_0"@9041)
                self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_119_0"@9042)
            }
            if (self.acting == 3)
            {
                self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_123_0"@9043)
                self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_124_0"@9044)
                self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_125_0"@9045)
            }
            if (self.acting == 4)
            {
                self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_130_0"@9046)
                self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_131_0"@9047)
                self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_132_0"@9048)
            }
        }
        if (self.manual == 1)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_139_0"@9049)
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_140_0"@9050)
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_141_0"@9051)
        }
        if (self.betray == 1)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_146_0"@9052)
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_147_0"@9053)
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_148_0"@9054)
        }
        global.msg[0] = self.text1
        scr_enemyblcon((self.x - 110), (self.y - 10), 4)
        global.msg[0] = self.text2
        scr_enemyblcon((self.x - 125), (self.y + 70), 5)
        global.msg[0] = self.text3
        scr_enemyblcon((self.x + 125), (self.y - 10), 6)
        with(obj_monsterparent)
        {
            self.talkmax = 150
        }
        self.talked = 1
        self.talktimer = 0
        self.manual = 0
    }
    if (self.talked == 1)
        _temp_local_var_2 = (global.mnfight == 1)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        self.rtimer = 0
        scr_blconskip(15)
        if (global.mnfight == 2)
        {
            if (~ instance_exists(obj_moveheart))
                scr_moveheart()
            if (~ instance_exists(obj_growtangle))
                instance_create((__view_get(e__VW.XView, 0) + 320), (__view_get(e__VW.YView, 0) + 170), obj_growtangle)
        }
    }
    if (global.mnfight == 2)
        _temp_local_var_3 = (self.attacked == 0)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
    {
        self.rtimer = (self.rtimer + 1)
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
            self.turns = (self.turns + 1)
            global.turntimer = 140
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0, 1, 2, 3, 4, 5)
            if (self.rr == 0)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_204_0"@9055)
            if (self.rr == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_205_0"@9056)
            if (self.rr == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_206_0"@9057)
            if (self.rr == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_207_0"@9058)
            if (self.rr == 4)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_208_0"@9059)
            if (self.rr == 5)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_209_0"@9060)
            if (global.monsterstatus[self.myself] == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_210_0"@9061)
            if (global.monsterhp[self.myself] <= (global.monstermaxhp[self.myself] / 3))
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_211_0"@9062)
            if (global.mercymod[self.myself] >= global.mercymax[self.myself])
                global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_212_0"@9063)
            if (self.betray == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_213_0"@9064)
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
if (global.myfight == 3)
{
    self.xx = __view_get(e__VW.XView, 0)
    self.yy = __view_get(e__VW.YView, 0)
    if (self.acting == 1)
        _temp_local_var_4 = (self.actcon == 0)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_247_0"@9065)
        scr_battletext_default()
    }
    if (self.myact == 0)
    {
        if (self.acting == 2)
            _temp_local_var_5 = (self.actcon == 0)
        else
            _temp_local_var_5 = 0
        if _temp_local_var_5
        {
            global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_261_0"@9066)
            self.argue = (self.argue + 1)
            scr_battletext_default()
            self.actcon = 1
        }
        if (self.acting == 3)
            _temp_local_var_6 = (self.actcon == 0)
        else
            _temp_local_var_6 = 0
        if _temp_local_var_6
        {
            global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_269_0"@9067)
            self.argue = (self.argue + 1)
            scr_battletext_default()
            self.actcon = 1
        }
        if (self.acting == 4)
            _temp_local_var_7 = (self.actcon == 0)
        else
            _temp_local_var_7 = 0
        if _temp_local_var_7
        {
            global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_277_0"@9068)
            self.battlecancel = 1
            scr_battletext_default()
            self.actcon = 1
        }
    }
    if (self.myact == 1)
    {
        if (self.acting == 2)
            _temp_local_var_8 = (self.actcon == 0)
        else
            _temp_local_var_8 = 0
        if _temp_local_var_8
        {
            global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_293_0"@9069)
            self.argue = (self.argue + 1)
            scr_battletext_default()
            self.actcon = 1
        }
        if (self.acting == 3)
            _temp_local_var_9 = (self.actcon == 0)
        else
            _temp_local_var_9 = 0
        if _temp_local_var_9
        {
            global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_301_0"@9070)
            self.battlecancel = 1
            scr_battletext_default()
            self.actcon = 1
        }
        if (self.acting == 4)
            _temp_local_var_10 = (self.actcon == 0)
        else
            _temp_local_var_10 = 0
        if _temp_local_var_10
        {
            global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_309_0"@9071)
            self.argue = (self.argue + 1)
            scr_battletext_default()
            self.actcon = 1
        }
    }
    if (self.myact == 2)
    {
        if (self.acting == 2)
            _temp_local_var_11 = (self.actcon == 0)
        else
            _temp_local_var_11 = 0
        if _temp_local_var_11
        {
            global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_324_0"@9072)
            self.battlecancel = 1
            scr_battletext_default()
            self.actcon = 1
        }
        if (self.acting == 3)
            _temp_local_var_12 = (self.actcon == 0)
        else
            _temp_local_var_12 = 0
        if _temp_local_var_12
        {
            global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_332_0"@9073)
            self.argue = (self.argue + 1)
            scr_battletext_default()
            self.actcon = 1
        }
        if (self.acting == 4)
            _temp_local_var_13 = (self.actcon == 0)
        else
            _temp_local_var_13 = 0
        if _temp_local_var_13
        {
            global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_340_0"@9074)
            self.argue = (self.argue + 1)
            scr_battletext_default()
            self.actcon = 1
        }
    }
    if (self.acting == 5)
        _temp_local_var_14 = (self.actcon == 0)
    else
        _temp_local_var_14 = 0
    if _temp_local_var_14
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_354_0"@9075)
        if (scr_monsterpop() > 1)
            global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_356_0"@9076)
        self.i = 0
        while(true)
        {
            if (self.i < 3)
            {
                global.monstercomment[self.i] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_359_0"@9077)
                global.automiss[self.i] = 1
                self.i = (self.i + 1)
                continue
            }
            break
        }
        scr_battletext_default()
    }
    if (self.actcon == 1)
        _temp_local_var_15 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_15 = 0
    if _temp_local_var_15
    {
        if (self.argue >= 2)
        {
            global.monstercomment[self.myself] = scr_84_get_lang_string("obj_clubsenemy_old_slash_Step_0_gml_377_0"@9078)
            global.monsterstatus[self.myself] = 1
        }
        self.actcon = 0
        scr_attackphase()
    }
}
if (global.myfight == 7)
    self.hspeed = 15
