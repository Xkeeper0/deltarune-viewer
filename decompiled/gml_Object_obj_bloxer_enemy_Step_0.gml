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
            global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_11_0")
        if (self.rr == 1)
            global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_12_0")
        if (self.rr == 2)
            global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_13_0")
        if (self.rr == 3)
            global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_14_0")
        if (self.acting == 2)
        {
            global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_18_0")
            if (self.part[2] == 3)
                global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_19_0")
            if (self.part[1] == 3)
                global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_20_0")
            if (self.part[1] == 2)
                global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_21_0")
            if (self.part[1] == 1)
                global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_22_0")
            if (global.mercymod[self.myself] >= 100)
                global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_24_0")
        }
        if (self.acting == 3)
            global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_29_0")
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
            self.biglegoqual = 1
            if ((scr_monsterpop() >= 2) && (self.myself >= 1))
                self.biglegoqual = 0
            if ((self.rr == 0) && (self.biglegoqual == 1))
            {
                self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
                self.dc.type = 26
                self.dc.target = self.mytarget
                self.dc.damage = (global.monsterat[self.myself] * 5)
                self.dc.grazepoints = 5
                self.dc.timepoints = 2
            }
            else
            {
                self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
                self.dc.type = 27
                self.dc.target = self.mytarget
                self.dc.damage = (global.monsterat[self.myself] * 5)
                self.dc.grazepoints = 5
            }
            self.turns += 1
            global.turntimer = 170
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0, 1, 2, 3, 4)
            if (self.rr == 0)
                global.battlemsg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_86_0")
            if (self.rr == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_87_0")
            if (self.rr == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_88_0")
            if (self.rr == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_89_0")
            if (self.rr == 4)
                global.battlemsg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_90_0")
            if (global.monsterstatus[self.myself] == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_92_0")
            if (global.mercymod[self.myself] >= global.mercymax[self.myself])
                global.battlemsg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_93_0")
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
        global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_127_0")
        scr_battletext_default()
    }
    if ((self.acting == 2) && (self.actcon == 0))
    {
        global.msg[0] = ((scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_135_0") + scr_get_input_name(6)) + scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_135_1"))
        global.mercymod[self.myself] = 0
        scr_battletext_default()
        self.actcon = 10
        self.swaptime = 1
        self.floatsin = 0
        self.swapx = 0
        self.sinmomentum = 0
        self.party[0] = 28
        self.party[1] = 54
        self.party[2] = 70
        self.select[0] = -1
        self.select[1] = -1
        self.select[2] = -1
        self.selecttotal = 0
        self.movex[0] = 0
        self.movex[1] = 0
        self.movex[2] = 0
        self.finishtimer = 0
    }
    if ((self.acting == 3) && (self.actcon == 0))
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_162_0")
        self.rr = choose(0, 1, 2)
        scr_susface(1, 2)
        global.msg[2] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_165_0")
        if (self.rr == 1)
            global.msg[2] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_166_0")
        if (self.rr == 2)
            global.msg[2] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_167_0")
        global.msg[3] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_168_0")
        for (self.i = 0; self.i < 3; self.i += 1)
        {
            global.monstercomment[self.i] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_171_0")
            global.monsterstatus[self.i] = 1
        }
        scr_battletext_default()
    }
    if ((self.actcon == 1) && (!instance_exists(obj_writer)))
    {
        self.actcon = 0
        scr_attackphase()
    }
    if ((self.actcon == 10) && (self.swaptime == 0))
    {
        with (obj_writer)
            instance_destroy()
        if (global.mercymod[self.myself] >= 100)
        {
            global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_193_0")
            self.fixed = 1
        }
        else
            global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_194_0")
        scr_battletext_default()
        self.actcon = 1
    }
}
if (global.myfight == 7)
    self.hspeed = 15
