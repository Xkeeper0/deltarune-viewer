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
        self.hb = instance_create((self.x - 100), self.y, obj_heartblcon)
        self.hb.sprite_index = choose(627, 628)
        if (self.acting == 2)
            self.hb.sprite_index = spr_heartblcon_2
        if (self.acting == 3)
            self.hb.sprite_index = spr_heartblcon_3
        self.talked = 1
        self.talktimer = 0
    }
    if (self.talked == 1)
        _temp_local_var_2 = (global.mnfight == 1)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        self.rtimer = 0
        if button1_p()
            _temp_local_var_3 = (self.talktimer > 15)
        else
            _temp_local_var_3 = 0
        if _temp_local_var_3
            self.talktimer = self.talkmax
        self.talktimer = (self.talktimer + 1)
        if (self.talktimer >= self.talkmax)
        {
            with(obj_heartblcon)
            {
                instance_destroy()
            }
            global.mnfight = 2
        }
        if (global.mnfight == 2)
        {
            if (~ instance_exists(obj_moveheart))
                scr_moveheart()
            if (~ instance_exists(obj_growtangle))
                instance_create((__view_get(e__VW.XView, 0) + 320), (__view_get(e__VW.YView, 0) + 170), obj_growtangle)
        }
    }
    if (global.mnfight == 2)
        _temp_local_var_4 = (self.attacked == 0)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
    {
        with(obj_heartblcon)
        {
            instance_destroy()
        }
        self.rtimer = (self.rtimer + 1)
        if (self.rtimer == 12)
        {
            self.rr = scr_monsterpop()
            global.turntimer = 180
            if (self.rr == 1)
            {
                self.dc = instance_create(self.x, self.y, obj_spinheart)
                self.dc.joker = 1
                self.dc.type = 0
                self.dc.target = self.mytarget
                self.dc.damage = (global.monsterat[self.myself] * 5)
            }
            else
            {
                self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
                self.dc.type = 33
                self.dc.ratio = (1.3 - (instance_number(self.object_index) / 10))
                self.dc.target = self.mytarget
                self.dc.damage = (global.monsterat[self.myself] * 5)
                if (instance_number(self.object_index) > 1)
                    _temp_local_var_21 = (instance_number(obj_dbulletcontroller) > 1)
                else
                    _temp_local_var_21 = 0
                if _temp_local_var_21
                {
                    with(self.dc)
                    {
                        instance_destroy()
                    }
                }
            }
            self.turns = (self.turns + 1)
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0, 1, 2, 3, 4)
            if (self.rr == 0)
                global.battlemsg[0] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_87_0"@9115)
            if (self.rr == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_88_0"@9116)
            if (self.rr == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_89_0"@9117)
            if (self.rr == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_90_0"@9118)
            if (self.rr == 4)
                global.battlemsg[0] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_91_0"@9119)
            if (global.monsterstatus[self.myself] == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_92_0"@9120)
            if (global.monsterhp[self.myself] <= (global.monstermaxhp[self.myself] / 3))
                global.battlemsg[0] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_93_0"@9121)
            if (global.mercymod[self.myself] >= global.mercymax[self.myself])
                global.msg[0] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_94_0"@9122)
        }
        else
            global.turntimer = 120
    }
    if (global.mnfight == 2)
    {
        if (global.turntimer <= 1)
        {
            if instance_exists(obj_hathyfightevent)
                _temp_local_var_5 = (self.firstturn == 0)
            else
                _temp_local_var_5 = 0
            if _temp_local_var_5
            {
                if (self.checkhp1 <= global.hp[1])
                {
                    if (self.checkhp2 <= global.hp[2])
                    {
                        with(obj_battlecontroller)
                        {
                            self.noreturn = 1
                        }
                        with(obj_hathyfightevent)
                        {
                            self.con = 15
                        }
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
    self.xx = __view_get(e__VW.XView, 0)
    self.yy = __view_get(e__VW.YView, 0)
    if (self.acting == 1)
        _temp_local_var_6 = (self.actcon == 0)
    else
        _temp_local_var_6 = 0
    if _temp_local_var_6
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_135_0"@9123)
        scr_battletext_default()
    }
    if (self.acting == 2)
        _temp_local_var_7 = (self.actcon == 0)
    else
        _temp_local_var_7 = 0
    if _temp_local_var_7
    {
        self.rr = choose(0, 1, 2)
        global.msg[0] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_144_0"@9124)
        scr_mercyadd(self.myself, 100)
        scr_battletext_default()
        self.battlecancel = 1
        self.actcon = 1
    }
    if (self.acting == 3)
        _temp_local_var_8 = (self.actcon == 0)
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
    {
        scr_mercyadd(self.myself, 100)
        self.actcon = 1
        if (global.flag[504] == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_159_0"@9125)
            scr_susface(1, 0)
            global.msg[2] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_161_0"@9126)
            global.msg[3] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_162_0"@9127)
            scr_ralface(4, 6)
            global.msg[5] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_164_0"@9128)
            scr_susface(6, 7)
            global.msg[7] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_166_0"@9129)
            scr_ralface(8, 6)
            global.msg[9] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_168_0"@9130)
            scr_susface(10, 7)
            global.msg[11] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_170_0"@9131)
            global.msg[12] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_171_0"@9132)
            self.actcon = 20
            self.acttimer = 0
        }
        if (global.flag[504] == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_179_0"@9133)
            scr_susface(1, 2)
            global.msg[2] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_181_0"@9134)
            scr_ralface(3, 1)
            global.msg[4] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_183_0"@9135)
            global.msg[5] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_184_0"@9136)
            global.msg[6] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_185_0"@9137)
            global.msg[7] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_186_0"@9138)
            self.actcon = 22
        }
        if (global.flag[504] == 2)
        {
            global.msg[0] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_192_0"@9139)
            scr_susface(1, 7)
            global.msg[2] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_194_0"@9140)
            self.actcon = 25
        }
        if (global.flag[504] >= 3)
        {
            global.msg[0] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_200_0"@9141)
            scr_mercyadd(0, 100)
            scr_mercyadd(1, 100)
            scr_mercyadd(2, 100)
        }
        global.flag[504] = (global.flag[504] + 1)
        scr_battletext_default()
    }
    if (self.actcon == 1)
        _temp_local_var_9 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_9 = 0
    if _temp_local_var_9
    {
        self.actcon = 0
        scr_attackphase()
        if (self.delete == 1)
            instance_destroy()
    }
    if (self.actcon == 20)
        _temp_local_var_10 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_10 = 0
    if _temp_local_var_10
    {
        snd_pause(global.batmusic[0])
        self.acttimer = (self.acttimer + 1)
        if (self.acttimer >= 60)
            self.actcon = 21
    }
    if (self.actcon == 21)
    {
        global.fe = 2
        global.msg[0] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_241_0"@9142)
        global.msg[1] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_242_0"@9143)
        scr_battletext()
        self.actcon = 22
    }
    if (self.actcon == 22)
        _temp_local_var_11 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_11 = 0
    if _temp_local_var_11
    {
        snd_resume(global.batmusic[0])
        self.hspeed = 6
        global.msg[0] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_251_0"@9144)
        scr_susface(1, 7)
        global.msg[2] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_253_0"@9145)
        if (global.flag[504] == 2)
        {
            global.msg[0] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_256_0"@9146)
            scr_ralface(1, 3)
            global.msg[2] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_258_0"@9147)
            scr_susface(3, 2)
            global.msg[4] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_260_0"@9148)
        }
        scr_battletext_default()
        self.delete = 1
        self.actcon = 23
        global.monster[self.myself] = 0
    }
    if (self.actcon == 23)
    {
        if (self.x >= (__view_get(e__VW.XView, 0) + 640))
            self.actcon = 1
    }
    if (self.actcon == 25)
        _temp_local_var_12 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_12 = 0
    if _temp_local_var_12
    {
        global.msg[0] = scr_84_get_lang_string("obj_headhathy_slash_Step_0_gml_276_0"@9149)
        scr_battletext_default()
        scr_mercyadd(0, 100)
        scr_mercyadd(1, 100)
        scr_mercyadd(2, 100)
        self.actcon = 1
    }
}
if (global.myfight == 7)
    self.hspeed = 15
