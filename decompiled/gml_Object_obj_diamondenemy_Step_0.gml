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
            global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_11_0")
        if (self.rr == 1)
            global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_12_0")
        if (self.rr == 2)
            global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_13_0")
        if (self.rr == 3)
            global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_14_0")
        if (self.acting == 2)
            global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_24_0")
        if (self.acting == 3)
            global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_28_0")
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
            self.rr = choose(0, 1)
            if (self.rr == 0)
            {
                self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
                self.dc.type = 0
                self.dc.target = self.mytarget
                self.dc.damage = (global.monsterat[self.myself] * 5)
            }
            else
            {
                self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
                self.dc.type = 1
                self.dc.target = self.mytarget
                self.dc.damage = (global.monsterat[self.myself] * 5)
            }
            self.turns += 1
            global.turntimer = 140
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0, 1, 2, 3, 4)
            if (self.rr == 0)
                global.battlemsg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_77_0")
            if (self.rr == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_78_0")
            if (self.rr == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_79_0")
            if (self.rr == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_80_0")
            if (self.rr == 4)
                global.battlemsg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_81_0")
            if (global.monsterstatus[self.myself] == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_82_0")
            if (global.monsterhp[self.myself] <= (global.monstermaxhp[self.myself] / 3))
                global.battlemsg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_83_0")
            if (global.mercymod[self.myself] >= global.mercymax[self.myself])
                global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_84_0")
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
    global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_118_0")
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
        global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_154_0")
        scr_battletext_default()
    }
    if ((self.acting == 2) && (self.actcon == 0))
    {
        if (self.nexttry == 1)
            global.flag[208] = 1
        global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_163_0")
        scr_mercyadd(self.myself, 100)
        scr_battletext_default()
        self.actcon = 1
    }
    if ((self.acting == 3) && (self.actcon == 0))
    {
        global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_173_0")
        global.msg[1] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_174_0")
        for (self.i = 0; self.i < 3; self.i += 1)
        {
            global.monstercomment[self.i] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_177_0")
            global.monsterstatus[self.i] = 1
        }
        scr_mercyadd(self.myself, 50)
        scr_battletext_default()
        self.actcon = 1
    }
    if ((self.acting == 4) && (self.actcon == 0))
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_188_0")
        if (scr_monsterpop() > 1)
            global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_190_0")
        for (self.i = 0; self.i < 3; self.i += 1)
        {
            global.monstercomment[self.i] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_193_0")
            global.automiss[self.i] = 1
        }
        scr_battletext_default()
    }
    if ((self.actcon == 1) && (!instance_exists(obj_writer)))
    {
        self.actcon = 0
        scr_attackphase()
    }
    if ((self.actcon == 10) && (instance_exists(obj_writer) == 0))
    {
        global.typer = 50
        global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_215_0")
        scr_enemyblcon((self.x - 160), self.y, 3)
        self.actcon = 11
    }
    if ((self.actcon == 11) && (instance_exists(obj_writer) == 0))
    {
        global.typer = 45
        global.fc = 2
        global.fe = 8
        global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_225_0")
        scr_battletext()
        self.actcon = 12
    }
    if ((self.actcon == 12) && (instance_exists(obj_writer) == 0))
    {
        global.typer = 50
        global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_233_0")
        global.msg[1] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_234_0")
        scr_enemyblcon((self.x - 160), self.y, 3)
        self.actcon = 14
    }
    if ((self.actcon == 14) && (instance_exists(obj_writer) == 0))
    {
        global.typer = 45
        global.fc = 2
        global.fe = 3
        global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_244_0")
        scr_battletext()
        self.nexttry = 1
        self.actcon = 1
    }
}
if (global.myfight == 7)
    self.hspeed = 15
