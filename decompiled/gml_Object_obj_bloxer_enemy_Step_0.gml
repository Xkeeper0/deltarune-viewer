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
            global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_11_0"@8506)
        if (self.rr == 1)
            global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_12_0"@8507)
        if (self.rr == 2)
            global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_13_0"@8508)
        if (self.rr == 3)
            global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_14_0"@8509)
        if (self.acting == 2)
        {
            global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_18_0"@8510)
            if (self.part[2] == 3)
                global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_19_0"@8511)
            if (self.part[1] == 3)
                global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_20_0"@8512)
            if (self.part[1] == 2)
                global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_21_0"@8513)
            if (self.part[1] == 1)
                global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_22_0"@8514)
            if (global.mercymod[self.myself] >= 100)
                global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_24_0"@8515)
        }
        if (self.acting == 3)
            global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_29_0"@8516)
        scr_enemyblcon((self.x - 160), self.y, 3)
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
            self.biglegoqual = 1
            if (scr_monsterpop() >= 2)
                _temp_local_var_4 = (self.myself >= 1)
            else
                _temp_local_var_4 = 0
            if _temp_local_var_4
                self.biglegoqual = 0
            if (self.rr == 0)
                _temp_local_var_5 = (self.biglegoqual == 1)
            else
                _temp_local_var_5 = 0
            if _temp_local_var_5
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
            self.turns = (self.turns + 1)
            global.turntimer = 170
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0, 1, 2, 3, 4)
            if (self.rr == 0)
                global.battlemsg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_86_0"@8518)
            if (self.rr == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_87_0"@8519)
            if (self.rr == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_88_0"@8520)
            if (self.rr == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_89_0"@8521)
            if (self.rr == 4)
                global.battlemsg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_90_0"@8522)
            if (global.monsterstatus[self.myself] == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_92_0"@8523)
            if (global.mercymod[self.myself] >= global.mercymax[self.myself])
                global.battlemsg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_93_0"@8524)
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
        _temp_local_var_6 = (self.actcon == 0)
    else
        _temp_local_var_6 = 0
    if _temp_local_var_6
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_127_0"@8525)
        scr_battletext_default()
    }
    if (self.acting == 2)
        _temp_local_var_7 = (self.actcon == 0)
    else
        _temp_local_var_7 = 0
    if _temp_local_var_7
    {
        global.msg[0] = ((scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_135_0"@8526) + scr_get_input_name(6)) + scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_135_1"@8527))
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
    if (self.acting == 3)
        _temp_local_var_8 = (self.actcon == 0)
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_162_0"@8528)
        self.rr = choose(0, 1, 2)
        scr_susface(1, 2)
        global.msg[2] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_165_0"@8529)
        if (self.rr == 1)
            global.msg[2] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_166_0"@8530)
        if (self.rr == 2)
            global.msg[2] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_167_0"@8531)
        global.msg[3] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_168_0"@8532)
        self.i = 0
        while(true)
        {
            if (self.i < 3)
            {
                global.monstercomment[self.i] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_171_0"@8533)
                global.monsterstatus[self.i] = 1
                self.i = (self.i + 1)
                continue
            }
            break
        }
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
    }
    if (self.actcon == 10)
        _temp_local_var_10 = (self.swaptime == 0)
    else
        _temp_local_var_10 = 0
    if _temp_local_var_10
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        if (global.mercymod[self.myself] >= 100)
        {
            global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_193_0"@8534)
            self.fixed = 1
        }
        else
            global.msg[0] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Step_0_gml_194_0"@8535)
        scr_battletext_default()
        self.actcon = 1
    }
}
if (global.myfight == 7)
    self.hspeed = 15
