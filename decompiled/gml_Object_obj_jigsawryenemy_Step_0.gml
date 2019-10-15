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
        if (self.rr == 0)
            global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_11_0"@8101)
        if (self.rr == 1)
            global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_12_0"@8102)
        if (self.rr == 2)
            global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_13_0"@8103)
        if (self.rr == 3)
            global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_14_0"@8104)
        if (global.mercymod[self.myself] >= 100)
        {
            if (self.rr == 0)
                _temp_local_var_2 = 1
            else
                _temp_local_var_2 = (self.rr == 1)
            if _temp_local_var_2
                global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_18_0"@8105)
            if (self.rr == 2)
                _temp_local_var_3 = 1
            else
                _temp_local_var_3 = (self.rr == 3)
            if _temp_local_var_3
                global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_19_0"@8106)
        }
        if (self.traitorp == 1)
        {
            if (self.rr == 0)
                _temp_local_var_4 = 1
            else
                _temp_local_var_4 = (self.rr == 1)
            if _temp_local_var_4
                global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_24_0"@8107)
            if (self.rr == 2)
                _temp_local_var_5 = 1
            else
                _temp_local_var_5 = (self.rr == 3)
            if _temp_local_var_5
                global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_25_0"@8108)
        }
        if (self.traitorp == 2)
        {
            if (self.rr == 0)
                _temp_local_var_6 = 1
            else
                _temp_local_var_6 = (self.rr == 1)
            if _temp_local_var_6
                global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_29_0"@8109)
            if (self.rr == 2)
                _temp_local_var_7 = 1
            else
                _temp_local_var_7 = (self.rr == 3)
            if _temp_local_var_7
                global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_30_0"@8110)
        }
        self.traitorp = 0
        scr_enemyblcon((self.x - 160), self.y, 3)
        self.talked = 1
        self.talktimer = 0
    }
    if (self.talked == 1)
        _temp_local_var_8 = (global.mnfight == 1)
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
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
        _temp_local_var_9 = (self.attacked == 0)
    else
        _temp_local_var_9 = 0
    if _temp_local_var_9
    {
        self.rtimer = (self.rtimer + 1)
        if (self.rtimer == 12)
        {
            global.flag[20] = 0
            self.rr = choose(0)
            if (self.rr == 0)
            {
                self.tellme = 0
                with(obj_dbulletcontroller)
                {
                    if (self.type >= 80)
                        _temp_local_var_10 = (self.type <= 84)
                    else
                        _temp_local_var_10 = 0
                    if _temp_local_var_10
                        obj_jigsawryenemy.tellme = 1
                }
                if (self.tellme == 0)
                {
                    self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
                    self.dc.grazepoints = 4
                    self.dc.timepoints = 2
                    self.metotal = 0
                    self.i = 0
                    while(true)
                    {
                        if (self.i < 3)
                        {
                            if (global.monstertype[self.i] == 15)
                                _temp_local_var_11 = (global.monster[self.i] == 1)
                            else
                                _temp_local_var_11 = 0
                            if _temp_local_var_11
                                self.metotal = (self.metotal + 1)
                            self.i = (self.i + 1)
                            continue
                        }
                        break
                    }
                    self.dc.type = (80 + self.metotal)
                    self.dc.target = self.mytarget
                    self.dc.damage = (global.monsterat[self.myself] * 5)
                }
            }
            self.turns = (self.turns + 1)
            global.turntimer = 140
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0, 1, 2, 3, 4)
            if (self.rr == 0)
                global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_89_0"@8113)
            if (self.rr == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_90_0"@8114)
            if (self.rr == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_91_0"@8115)
            if (self.rr == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_92_0"@8116)
            if (self.rr == 4)
                global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_93_0"@8117)
            if (global.monsterstatus[self.myself] == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_94_0"@8118)
            if (global.monsterhp[self.myself] <= (global.monstermaxhp[self.myself] / 3))
                global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_95_0"@8119)
            if (global.mercymod[self.myself] >= global.mercymax[self.myself])
                global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_96_0"@8120)
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
if (global.myfight == 3)
{
    self.xx = __view_get(e__VW.XView, 0)
    self.yy = __view_get(e__VW.YView, 0)
    if (self.acting == 1)
        _temp_local_var_13 = (self.actcon == 0)
    else
        _temp_local_var_13 = 0
    if _temp_local_var_13
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_129_0"@8121)
        scr_battletext_default()
    }
    if (self.acting == 2)
        _temp_local_var_14 = (self.actcon == 0)
    else
        _temp_local_var_14 = 0
    if _temp_local_var_14
    {
        global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_136_0"@8122)
        scr_battletext_default()
        self.actcon = 3
    }
    if (self.actcon == 3)
        _temp_local_var_15 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_15 = 0
    if _temp_local_var_15
    {
        with(obj_jigsawryenemy)
        {
            scr_mercyadd(self.myself, 100)
        }
        self.rr = choose(0, 1, 2, 3)
        global.typer = 50
        if (self.rr == 0)
            global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_152_0"@8123)
        if (self.rr == 1)
            global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_153_0"@8124)
        if (self.rr == 2)
            global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_154_0"@8125)
        if (self.rr == 3)
            global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_155_0"@8126)
        scr_enemyblcon((self.x - 160), self.y, 3)
        self.actcon = 1
    }
    if (self.acting == 3)
        _temp_local_var_16 = (self.actcon == 0)
    else
        _temp_local_var_16 = 0
    if _temp_local_var_16
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_164_0"@8127)
        if (scr_monsterpop() > 1)
            global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_166_0"@8128)
        self.i = 0
        while(true)
        {
            if (self.i < 3)
            {
                global.monstercomment[self.i] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_169_0"@8129)
                global.automiss[self.i] = 1
                self.i = (self.i + 1)
                continue
            }
            break
        }
        scr_battletext_default()
    }
    if (self.actcon == 1)
        _temp_local_var_17 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_17 = 0
    if _temp_local_var_17
    {
        self.actcon = 0
        scr_attackphase()
    }
}
