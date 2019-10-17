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
            global.msg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_11_0")
        if (self.rr == 1)
            global.msg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_12_0")
        if (self.rr == 2)
            global.msg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_13_0")
        if (self.rr == 3)
            global.msg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_14_0")
        if (self.acting == 2)
            global.msg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_17_0")
        if (self.acting == 3)
        {
            if ((self.rr == 0) || (self.rr == 1))
                global.msg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_21_0")
            if ((self.rr == 2) || (self.rr == 3))
                global.msg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_22_0")
            if (self.complimented >= 2)
                global.msg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_25_0")
        }
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
            self.rr = instance_number(self.object_index)
            if (self.rr == 99)
            {
                self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
                self.dc.type = 1
                self.dc.target = self.mytarget
                self.dc.damage = (global.monsterat[self.myself] * 5)
                self.dc.ratio = 1
            }
            else
            {
                self.visible = 0
                self.dc = instance_create(self.x, self.y, obj_dknight_slasher)
                self.dc.inv = 60
                self.dc.target = self.mytarget
                self.dc.grazepoints = 6
                self.dc.timepoints = 2
                self.dc.active = 0
                self.dc.creator = self.id
                self.dc.damage = (global.monsterat[self.myself] * 5)
            }
            self.turns += 1
            global.turntimer = 180
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0, 1, 2, 3, 4)
            if (self.rr == 0)
                global.battlemsg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_81_0")
            if (self.rr == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_82_0")
            if (self.rr == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_83_0")
            if (self.rr == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_84_0")
            if (self.rr == 4)
                global.battlemsg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_85_0")
            if (global.monsterstatus[self.myself] == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_86_0")
            if (global.monsterhp[self.myself] <= (global.monstermaxhp[self.myself] / 3))
                global.battlemsg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_87_0")
            if (global.mercymod[self.myself] >= global.mercymax[self.myself])
                global.msg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_88_0")
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
{
    self.con = 2
    self.alarm[4] = 10
}
if (self.con == 3)
{
    global.typer = 50
    global.mercymod[self.myself] = 999
    global.msg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_122_0")
    scr_enemyblcon((self.x - 160), self.y, 3)
    self.con = 4
}
if ((self.con == 4) && (!instance_exists(obj_writer)))
{
    self.hspeed = 15
    self.con = 5
    self.alarm[4] = 15
    with (obj_battlecontroller)
        self.alarm[2] = 17
}
if (self.con == 6)
{
    with (obj_battlecontroller)
        self.noreturn = 0
    scr_monsterdefeat()
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
        global.msg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_158_0")
        scr_battletext_default()
    }
    if ((self.acting == 2) && (self.actcon == 0))
    {
        global.msg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_167_0")
        global.msg[1] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_168_0")
        global.monstercomment[self.myself] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_169_0")
        global.monsterstatus[self.myself] = 1
        scr_mercyadd(self.myself, 50)
        scr_battletext_default()
        self.actcon = 1
    }
    if ((self.acting == 3) && (self.actcon == 0))
    {
        global.msg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_181_0")
        scr_susface(1, 2)
        self.rrr = choose(0, 1, 2)
        if (self.rrr == 0)
            global.msg[2] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_184_0")
        if (self.rrr == 1)
            global.msg[2] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_185_0")
        if (self.rrr == 2)
            global.msg[2] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_186_0")
        if (global.flag[503] == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_190_0")
            scr_susface(1, 0)
            global.msg[2] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_192_0")
            global.msg[3] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_193_0")
            scr_ralface(4, 6)
            global.msg[5] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_195_0")
            global.msg[6] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_196_0")
            scr_susface(7, 0)
            global.msg[8] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_198_0")
            global.msg[9] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_199_0")
            global.flag[503] = 1
        }
        if (self.complimented >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_205_0")
            scr_susface(1, 0)
            global.msg[2] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_207_0")
            self.complimented = 2
        }
        scr_battletext_default()
        self.actcon = 1
        if (self.complimented == 0)
            self.complimented = 1
    }
    if ((self.actcon == 1) && (!instance_exists(obj_writer)))
    {
        if (self.acting == 3)
            scr_mercyadd(self.myself, 100)
        self.actcon = 0
        scr_attackphase()
    }
    if ((self.actcon == 10) && (instance_exists(obj_writer) == 0))
    {
        global.typer = 50
        global.msg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_235_0")
        scr_enemyblcon((self.x - 160), self.y, 3)
        self.actcon = 11
    }
    if ((self.actcon == 11) && (instance_exists(obj_writer) == 0))
    {
        global.typer = 45
        global.fc = 2
        global.fe = 8
        global.msg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_245_0")
        scr_battletext()
        self.actcon = 12
    }
    if ((self.actcon == 12) && (instance_exists(obj_writer) == 0))
    {
        global.typer = 50
        global.msg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_253_0")
        global.msg[1] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_254_0")
        scr_enemyblcon((self.x - 160), self.y, 3)
        self.actcon = 14
    }
    if ((self.actcon == 14) && (instance_exists(obj_writer) == 0))
    {
        global.typer = 45
        global.fc = 2
        global.fe = 3
        global.msg[0] = scr_84_get_lang_string("obj_rudinnranger_slash_Step_0_gml_264_0")
        scr_battletext()
        self.nexttry = 1
        self.actcon = 1
    }
}
if (global.myfight == 7)
    self.hspeed = 15
