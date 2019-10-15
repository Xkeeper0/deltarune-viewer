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
        self.rr = choose(0, 1, 2)
        self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_11_0"@8936)
        self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_12_0"@8938)
        self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_13_0"@8940)
        if (self.rr == 0)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_17_0"@8942)
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_18_0"@8943)
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_19_0"@8944)
        }
        if (self.rr == 1)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_24_0"@8945)
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_25_0"@8946)
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_26_0"@8947)
        }
        if (self.rr == 2)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_31_0"@8948)
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_32_0"@8949)
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_33_0"@8950)
        }
        if (self.acting == 2)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_39_0"@8951)
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_40_0"@8952)
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_41_0"@8953)
        }
        if (self.acting == 3)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_46_0"@8954)
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_47_0"@8955)
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_48_0"@8956)
        }
        if (self.acting == 4)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_53_0"@8957)
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_54_0"@8958)
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_55_0"@8959)
        }
        if (self.acting == 5)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_60_0"@8960)
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_61_0"@8961)
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_62_0"@8962)
        }
        if (self.acting == 6)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_68_0"@8963)
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_69_0"@8964)
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_70_0"@8965)
        }
        if (self.manual == 1)
        {
            self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_76_0"@8966)
            self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_77_0"@8967)
            self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_78_0"@8968)
        }
        global.msg[0] = self.text1
        scr_enemyblcon((self.x - 110), (self.y - 10), 4)
        global.msg[0] = self.text2
        scr_enemyblcon((self.x - 125), (self.y + 70), 5)
        global.msg[0] = self.text3
        scr_enemyblcon((self.x + 125), (self.y - 10), 6)
        with(obj_monsterparent)
        {
            self.talkmax = 210
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
            global.turntimer = 150
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0, 1, 2, 3, 4, 5)
            if (self.rr == 0)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_134_0"@8969)
            if (self.rr == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_135_0"@8970)
            if (self.rr == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_136_0"@8971)
            if (self.rr == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_137_0"@8972)
            if (self.rr == 4)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_138_0"@8973)
            if (self.rr == 5)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_139_0"@8974)
            if (global.monsterstatus[self.myself] == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_140_0"@8975)
            if (global.monsterhp[self.myself] <= (global.monstermaxhp[self.myself] / 3))
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_141_0"@8976)
            if (global.mercymod[self.myself] >= global.mercymax[self.myself])
                global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_142_0"@8977)
            if (self.betray == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_143_0"@8978)
            self.betray = 0
        }
        else
            global.turntimer = 150
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
        global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_163_0"@8979)
        scr_battletext_default()
    }
    if (self.acting == 2)
        _temp_local_var_5 = (self.actcon == 0)
    else
        _temp_local_var_5 = 0
    if _temp_local_var_5
    {
        global.typer = 45
        global.fc = 2
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_187_0"@8980)
        self.argue = (self.argue + 1)
        scr_battletext()
        self.actcon = 20
    }
    if (self.actcon == 20)
        _temp_local_var_6 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_6 = 0
    if _temp_local_var_6
    {
        global.typer = 50
        self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_196_0"@8981)
        self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_197_0"@8982)
        self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_198_0"@8983)
        global.msg[0] = self.text1
        scr_enemyblcon((self.x - 110), (self.y - 10), 4)
        global.msg[0] = self.text2
        scr_enemyblcon((self.x - 125), (self.y + 70), 5)
        global.msg[0] = self.text3
        scr_enemyblcon((self.x + 125), (self.y - 10), 6)
        self.actcon = 21
    }
    if (self.actcon == 21)
        _temp_local_var_7 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_7 = 0
    if _temp_local_var_7
    {
        global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_210_0"@8984)
        scr_battletext_default()
        self.actcon = 1
    }
    if (self.acting == 3)
        _temp_local_var_8 = (self.actcon == 0)
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
    {
        global.typer = 45
        global.fc = 2
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_223_0"@8985)
        self.argue = (self.argue + 1)
        scr_battletext()
        self.actcon = 22
    }
    if (self.actcon == 22)
        _temp_local_var_9 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_9 = 0
    if _temp_local_var_9
    {
        global.typer = 50
        if (self.acted[2] == 0)
        {
            scr_mercyadd(self.myself, 40)
            self.acted[2] = 1
        }
        self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_233_0"@8986)
        self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_234_0"@8987)
        self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_235_0"@8988)
        global.msg[0] = self.text1
        scr_enemyblcon((self.x - 110), (self.y - 10), 4)
        global.msg[0] = self.text2
        scr_enemyblcon((self.x - 125), (self.y + 70), 5)
        global.msg[0] = self.text3
        scr_enemyblcon((self.x + 125), (self.y - 10), 6)
        self.actcon = 23
    }
    if (self.actcon == 23)
        _temp_local_var_10 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_10 = 0
    if _temp_local_var_10
    {
        global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_247_0"@8989)
        scr_battletext_default()
        self.actcon = 1
    }
    if (self.acting == 4)
        _temp_local_var_11 = (self.actcon == 0)
    else
        _temp_local_var_11 = 0
    if _temp_local_var_11
    {
        global.typer = 45
        global.fc = 2
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_258_0"@8990)
        self.argue = (self.argue + 1)
        scr_battletext()
        self.actcon = 24
    }
    if (self.actcon == 24)
        _temp_local_var_12 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_12 = 0
    if _temp_local_var_12
    {
        global.typer = 50
        if (self.acted[3] == 0)
        {
            scr_mercyadd(self.myself, 40)
            self.acted[3] = 1
        }
        self.text1 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_268_0"@8991)
        self.text2 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_269_0"@8992)
        self.text3 = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_270_0"@8993)
        global.msg[0] = self.text1
        scr_enemyblcon((self.x - 110), (self.y - 10), 4)
        global.msg[0] = self.text2
        scr_enemyblcon((self.x - 125), (self.y + 70), 5)
        global.msg[0] = self.text3
        scr_enemyblcon((self.x + 125), (self.y - 10), 6)
        self.actcon = 25
    }
    if (self.actcon == 25)
        _temp_local_var_13 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_13 = 0
    if _temp_local_var_13
    {
        global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_282_0"@8994)
        scr_battletext_default()
        self.actcon = 1
    }
    if (self.acting == 5)
        _temp_local_var_14 = (self.actcon == 0)
    else
        _temp_local_var_14 = 0
    if _temp_local_var_14
    {
        global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_290_0"@8995)
        global.msg[1] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_291_0"@8996)
        self.argue = (self.argue + 1)
        scr_battletext_default()
        self.actcon = 1
    }
    if (self.acting == 6)
        _temp_local_var_15 = (self.actcon == 0)
    else
        _temp_local_var_15 = 0
    if _temp_local_var_15
    {
        if (self.acted[5] == 0)
        {
            scr_mercyadd(self.myself, 40)
            self.acted[5] = 1
        }
        global.msg[0] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_301_0"@8997)
        self.argue = (self.argue + 1)
        scr_battletext_default()
        self.actcon = 1
    }
    if (self.actcon == 1)
        _temp_local_var_16 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_16 = 0
    if _temp_local_var_16
    {
        if (self.argue >= 3)
        {
            global.monstercomment[self.myself] = scr_84_get_lang_string("obj_clubsenemy_slash_Step_0_gml_314_0"@8998)
            global.monsterstatus[self.myself] = 1
        }
        self.actcon = 0
        scr_attackphase()
    }
}
