if (global.monster[self.myself] == 1)
{
    if ((global.mnfight == 1) && (self.talked == 0))
    {
        scr_randomtarget()
        if (!instance_exists(obj_darkener))
            instance_create(0, 0, obj_darkener)
        global.typer = 50
        self.rr = choose(0, 1, 2)
        self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_11_0")
        self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_12_0")
        self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_13_0")
        if (self.rr == 0)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_17_0")
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_18_0")
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_19_0")
        }
        if (self.rr == 1)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_24_0")
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_25_0")
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_26_0")
        }
        if (self.rr == 2)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_31_0")
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_32_0")
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_33_0")
        }
        if (self.acting == 2)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_39_0")
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_40_0")
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_41_0")
        }
        if (self.acting == 3)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_46_0")
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_47_0")
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_48_0")
        }
        if (self.acting == 4)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_53_0")
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_54_0")
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_55_0")
        }
        if (self.acting == 5)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_60_0")
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_61_0")
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_62_0")
        }
        if (self.acting == 6)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_68_0")
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_69_0")
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_70_0")
        }
        if (self.manual == 1)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_76_0")
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_77_0")
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_78_0")
        }
        global.msg[0] = self.text1
        scr_enemyblcon((self.x - 110), (self.y - 10), 4)
        global.msg[0] = self.text2
        scr_enemyblcon((self.x - 125), (self.y + 70), 5)
        global.msg[0] = self.text3
        scr_enemyblcon((self.x + 125), (self.y - 10), 6)
        with (obj_monsterparent)
            self.talkmax = 210
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
            global.turntimer = 150
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0, 1, 2, 3, 4, 5)
            if (self.rr == 0)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_134_0")
            if (self.rr == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_135_0")
            if (self.rr == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_136_0")
            if (self.rr == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_137_0")
            if (self.rr == 4)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_138_0")
            if (self.rr == 5)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_139_0")
            if (global.monsterstatus[self.myself] == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_140_0")
            if (global.monsterhp[self.myself] <= (global.monstermaxhp[self.myself] / 3))
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_141_0")
            if (global.mercymod[self.myself] >= global.mercymax[self.myself])
                global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_142_0")
            if (self.betray == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_143_0")
            self.betray = 0
        }
        else
            global.turntimer = 150
    }
}
if (global.myfight == 3)
{
    self.xx = __view_get(0, 0)
    self.yy = __view_get(1, 0)
    if ((self.acting == 1) && (self.actcon == 0))
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_163_0")
        scr_battletext_default()
    }
    if ((self.acting == 2) && (self.actcon == 0))
    {
        global.typer = 45
        global.fc = 2
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_187_0")
        self.argue += 1
        scr_battletext()
        self.actcon = 20
    }
    if ((self.actcon == 20) && (!instance_exists(obj_writer)))
    {
        global.typer = 50
        self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_196_0")
        self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_197_0")
        self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_198_0")
        global.msg[0] = self.text1
        scr_enemyblcon((self.x - 110), (self.y - 10), 4)
        global.msg[0] = self.text2
        scr_enemyblcon((self.x - 125), (self.y + 70), 5)
        global.msg[0] = self.text3
        scr_enemyblcon((self.x + 125), (self.y - 10), 6)
        self.actcon = 21
    }
    if ((self.actcon == 21) && (!instance_exists(obj_writer)))
    {
        global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_210_0")
        scr_battletext_default()
        self.actcon = 1
    }
    if ((self.acting == 3) && (self.actcon == 0))
    {
        global.typer = 45
        global.fc = 2
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_223_0")
        self.argue += 1
        scr_battletext()
        self.actcon = 22
    }
    if ((self.actcon == 22) && (!instance_exists(obj_writer)))
    {
        global.typer = 50
        if (self.acted[2] == 0)
        {
            scr_mercyadd(self.myself, 40)
            self.acted[2] = 1
        }
        self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_233_0")
        self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_234_0")
        self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_235_0")
        global.msg[0] = self.text1
        scr_enemyblcon((self.x - 110), (self.y - 10), 4)
        global.msg[0] = self.text2
        scr_enemyblcon((self.x - 125), (self.y + 70), 5)
        global.msg[0] = self.text3
        scr_enemyblcon((self.x + 125), (self.y - 10), 6)
        self.actcon = 23
    }
    if ((self.actcon == 23) && (!instance_exists(obj_writer)))
    {
        global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_247_0")
        scr_battletext_default()
        self.actcon = 1
    }
    if ((self.acting == 4) && (self.actcon == 0))
    {
        global.typer = 45
        global.fc = 2
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_258_0")
        self.argue += 1
        scr_battletext()
        self.actcon = 24
    }
    if ((self.actcon == 24) && (!instance_exists(obj_writer)))
    {
        global.typer = 50
        if (self.acted[3] == 0)
        {
            scr_mercyadd(self.myself, 40)
            self.acted[3] = 1
        }
        self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_268_0")
        self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_269_0")
        self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_270_0")
        global.msg[0] = self.text1
        scr_enemyblcon((self.x - 110), (self.y - 10), 4)
        global.msg[0] = self.text2
        scr_enemyblcon((self.x - 125), (self.y + 70), 5)
        global.msg[0] = self.text3
        scr_enemyblcon((self.x + 125), (self.y - 10), 6)
        self.actcon = 25
    }
    if ((self.actcon == 25) && (!instance_exists(obj_writer)))
    {
        global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_282_0")
        scr_battletext_default()
        self.actcon = 1
    }
    if ((self.acting == 5) && (self.actcon == 0))
    {
        global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_290_0")
        global.msg[1] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_291_0")
        self.argue += 1
        scr_battletext_default()
        self.actcon = 1
    }
    if ((self.acting == 6) && (self.actcon == 0))
    {
        if (self.acted[5] == 0)
        {
            scr_mercyadd(self.myself, 40)
            self.acted[5] = 1
        }
        global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_301_0")
        self.argue += 1
        scr_battletext_default()
        self.actcon = 1
    }
    if ((self.actcon == 1) && (!instance_exists(obj_writer)))
    {
        if (self.argue >= 3)
        {
            global.monstercomment[self.myself] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_314_0")
            global.monsterstatus[self.myself] = 1
        }
        self.actcon = 0
        scr_attackphase()
    }
}
