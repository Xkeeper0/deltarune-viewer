if (global.monster[self.myself] == 1)
{
    if ((global.mnfight == 1) && (self.talked == 0))
    {
        scr_randomtarget()
        if (!instance_exists(obj_darkener))
            instance_create(0, 0, obj_darkener)
        global.typer = 50
        self.rr = choose(0, 1, 2, 3)
        if (self.rr == 0)
            global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_11_0")
        if (self.rr == 1)
            global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_12_0")
        if (self.rr == 2)
            global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_13_0")
        if (self.rr == 3)
            global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_14_0")
        if (global.mercymod[self.myself] >= 100)
        {
            if ((self.rr == 0) || (self.rr == 1))
                global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_18_0")
            if ((self.rr == 2) || (self.rr == 3))
                global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_19_0")
        }
        if (self.traitorp == 1)
        {
            if ((self.rr == 0) || (self.rr == 1))
                global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_24_0")
            if ((self.rr == 2) || (self.rr == 3))
                global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_25_0")
        }
        if (self.traitorp == 2)
        {
            if ((self.rr == 0) || (self.rr == 1))
                global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_29_0")
            if ((self.rr == 2) || (self.rr == 3))
                global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_30_0")
        }
        self.traitorp = 0
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
            global.flag[20] = 0
            self.rr = choose(0)
            if (self.rr == 0)
            {
                self.tellme = 0
                with (obj_dbulletcontroller)
                {
                    if ((self.type >= 80) && (self.type <= 84))
                        obj_jigsawryenemy.tellme = 1
                }
                if (self.tellme == 0)
                {
                    self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
                    self.dc.grazepoints = 4
                    self.dc.timepoints = 2
                    self.metotal = 0
                    for (self.i = 0; self.i < 3; self.i += 1)
                    {
                        if ((global.monstertype[self.i] == 15) && (global.monster[self.i] == 1))
                            self.metotal += 1
                    }
                    self.dc.type = (80 + self.metotal)
                    self.dc.target = self.mytarget
                    self.dc.damage = (global.monsterat[self.myself] * 5)
                }
            }
            self.turns += 1
            global.turntimer = 140
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0, 1, 2, 3, 4)
            if (self.rr == 0)
                global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_89_0")
            if (self.rr == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_90_0")
            if (self.rr == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_91_0")
            if (self.rr == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_92_0")
            if (self.rr == 4)
                global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_93_0")
            if (global.monsterstatus[self.myself] == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_94_0")
            if (global.monsterhp[self.myself] <= (global.monstermaxhp[self.myself] / 3))
                global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_95_0")
            if (global.mercymod[self.myself] >= global.mercymax[self.myself])
                global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_96_0")
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
        global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_129_0")
        scr_battletext_default()
    }
    if ((self.acting == 2) && (self.actcon == 0))
    {
        global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_136_0")
        scr_battletext_default()
        self.actcon = 3
    }
    if ((self.actcon == 3) && (!instance_exists(obj_writer)))
    {
        with (obj_jigsawryenemy)
            scr_mercyadd(self.myself, 100)
        self.rr = choose(0, 1, 2, 3)
        global.typer = 50
        if (self.rr == 0)
            global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_152_0")
        if (self.rr == 1)
            global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_153_0")
        if (self.rr == 2)
            global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_154_0")
        if (self.rr == 3)
            global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_155_0")
        scr_enemyblcon((self.x - 160), self.y, 3)
        self.actcon = 1
    }
    if ((self.acting == 3) && (self.actcon == 0))
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_164_0")
        if (scr_monsterpop() > 1)
            global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_166_0")
        for (self.i = 0; self.i < 3; self.i += 1)
        {
            global.monstercomment[self.i] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_169_0")
            global.automiss[self.i] = 1
        }
        scr_battletext_default()
    }
    if ((self.actcon == 1) && (!instance_exists(obj_writer)))
    {
        self.actcon = 0
        scr_attackphase()
    }
}
