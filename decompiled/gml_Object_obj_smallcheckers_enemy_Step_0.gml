if instance_exists(obj_basicattack)
{
    if (obj_basicattack.sprite_index == spr_attack_cut1)
        global.flag[211] = 3
    if (obj_basicattack.sprite_index == spr_attack_slap1)
        global.flag[211] = 3
}
if (global.monster[self.myself] == 1)
{
    global.flag[(51 + self.myself)] = 4
    if (global.mnfight == 1)
        _temp_local_var_1 = (self.talked == 0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        scr_randomtarget()
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
            _temp_local_var_3 = (self.talktimer > 5)
        else
            _temp_local_var_3 = 0
        if _temp_local_var_3
            self.talktimer = self.talkmax
        self.talktimer = (self.talktimer + 1)
        if (self.talktimer >= self.talkmax)
            global.mnfight = 2
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
            global.turntimer = 1
            if (self.rr == 999)
            {
                self.dc = instance_create(self.x, self.y, obj_spinheart)
                self.dc.type = 0
                self.dc.target = self.mytarget
                self.dc.damage = (global.monsterat[self.myself] * 5)
            }
            self.turns = (self.turns + 1)
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0)
            if (self.rr == 0)
                global.battlemsg[0] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_83_0"@9151)
        }
        else
            global.turntimer = 1
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
        global.msg[0] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_127_0"@9152)
        scr_battletext_default()
    }
    if (self.acting == 2)
        _temp_local_var_7 = (self.actcon == 0)
    else
        _temp_local_var_7 = 0
    if _temp_local_var_7
    {
        global.msg[0] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_136_0"@9153)
        scr_susface(1, 0)
        global.msg[2] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_138_0"@9154)
        global.msg[3] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_139_0"@9155)
        scr_ralface(4, 0)
        global.msg[5] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_141_0"@9156)
        global.msg[6] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_142_0"@9157)
        scr_susface(7, 0)
        global.msg[8] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_144_0"@9158)
        global.msg[9] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_145_0"@9159)
        global.msg[10] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_146_0"@9160)
        global.msg[11] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_147_0"@9161)
        self.actcon = 5
        scr_battletext_default()
    }
    if (self.acting == 3)
        _temp_local_var_8 = (self.actcon == 0)
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
    {
        self.actcon = 5
        global.msg[0] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_155_0"@9162)
        scr_susface(1, 0)
        global.msg[2] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_157_0"@9163)
        scr_ralface(3, 6)
        global.msg[4] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_159_0"@9164)
        scr_susface(5, 0)
        global.msg[6] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_161_0"@9165)
        global.msg[7] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_162_0"@9166)
        global.msg[8] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_163_0"@9167)
        scr_ralface(9, 8)
        global.msg[10] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_165_0"@9168)
        scr_susface(11, 0)
        global.msg[12] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_167_0"@9169)
        global.msg[13] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_168_0"@9170)
        scr_ralface(14, 0)
        global.msg[15] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_170_0"@9171)
        scr_susface(16, 4)
        global.msg[17] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_172_0"@9172)
        global.monstercomment[self.myself] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_174_0"@9173)
        global.automiss[0] = 1
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
    if (self.actcon == 5)
        _temp_local_var_10 = (instance_exists(obj_writer) == 0)
    else
        _temp_local_var_10 = 0
    if _temp_local_var_10
    {
        global.battleat[1] = 90
        global.battleat[2] = 90
        self.actcon = 6
        with(obj_herosusie)
        {
            self.attacktimer = 0
            self.state = 1
            self.points = (100 + round(random(40)))
            global.faceaction[self.myself] = 0
            if (global.automiss[0] == 1)
                self.points = 0
        }
        if (global.automiss[0] == 1)
        {
            self.hspeed = 5
            global.mercymod[self.myself] = 200
        }
        self.alarm[4] = 50
    }
    if (self.actcon == 7)
    {
        global.monster[self.myself] = 0
        global.msg[0] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_217_0"@9174)
        scr_ralface(1, 3)
        global.flag[211] = 1
        global.msg[2] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_220_0"@9175)
        if (global.automiss[0] == 1)
        {
            global.flag[211] = 2
            global.msg[0] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_224_0"@9176)
            scr_ralface(1, 3)
            global.msg[2] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_226_0"@9177)
            global.msg[3] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_227_0"@9178)
        }
        scr_battletext()
        self.actcon = 1
    }
}
if (global.myfight == 7)
    self.hspeed = 15
