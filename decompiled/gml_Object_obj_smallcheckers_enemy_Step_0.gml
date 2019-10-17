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
    if ((global.mnfight == 1) && (self.talked == 0))
    {
        scr_randomtarget()
        self.talked = 1
        self.talktimer = 0
    }
    if ((self.talked == 1) && (global.mnfight == 1))
    {
        self.rtimer = 0
        if (button1_p() && (self.talktimer > 5))
            self.talktimer = self.talkmax
        self.talktimer += 1
        if (self.talktimer >= self.talkmax)
            global.mnfight = 2
    }
    if ((global.mnfight == 2) && (self.attacked == 0))
    {
        with (obj_heartblcon)
            instance_destroy()
        self.rtimer += 1
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
            self.turns += 1
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0)
            if (self.rr == 0)
                global.battlemsg[0] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_83_0")
        }
        else
            global.turntimer = 1
    }
    if (global.mnfight == 2)
    {
        if (global.turntimer <= 1)
        {
            if (instance_exists(obj_hathyfightevent) && (self.firstturn == 0))
            {
                if (self.checkhp1 <= global.hp[1])
                {
                    if (self.checkhp2 <= global.hp[2])
                    {
                        with (obj_battlecontroller)
                            self.noreturn = 1
                        with (obj_hathyfightevent)
                            self.con = 15
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
    self.xx = __view_get(0, 0)
    self.yy = __view_get(1, 0)
    if ((self.acting == 1) && (self.actcon == 0))
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_127_0")
        scr_battletext_default()
    }
    if ((self.acting == 2) && (self.actcon == 0))
    {
        global.msg[0] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_136_0")
        scr_susface(1, 0)
        global.msg[2] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_138_0")
        global.msg[3] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_139_0")
        scr_ralface(4, 0)
        global.msg[5] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_141_0")
        global.msg[6] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_142_0")
        scr_susface(7, 0)
        global.msg[8] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_144_0")
        global.msg[9] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_145_0")
        global.msg[10] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_146_0")
        global.msg[11] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_147_0")
        self.actcon = 5
        scr_battletext_default()
    }
    if ((self.acting == 3) && (self.actcon == 0))
    {
        self.actcon = 5
        global.msg[0] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_155_0")
        scr_susface(1, 0)
        global.msg[2] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_157_0")
        scr_ralface(3, 6)
        global.msg[4] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_159_0")
        scr_susface(5, 0)
        global.msg[6] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_161_0")
        global.msg[7] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_162_0")
        global.msg[8] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_163_0")
        scr_ralface(9, 8)
        global.msg[10] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_165_0")
        scr_susface(11, 0)
        global.msg[12] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_167_0")
        global.msg[13] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_168_0")
        scr_ralface(14, 0)
        global.msg[15] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_170_0")
        scr_susface(16, 4)
        global.msg[17] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_172_0")
        global.monstercomment[self.myself] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_174_0")
        global.automiss[0] = 1
        scr_battletext_default()
    }
    if ((self.actcon == 1) && (!instance_exists(obj_writer)))
    {
        self.actcon = 0
        scr_attackphase()
    }
    if ((self.actcon == 5) && (instance_exists(obj_writer) == 0))
    {
        global.battleat[1] = 90
        global.battleat[2] = 90
        self.actcon = 6
        with (obj_herosusie)
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
        global.msg[0] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_217_0")
        scr_ralface(1, 3)
        global.flag[211] = 1
        global.msg[2] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_220_0")
        if (global.automiss[0] == 1)
        {
            global.flag[211] = 2
            global.msg[0] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_224_0")
            scr_ralface(1, 3)
            global.msg[2] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_226_0")
            global.msg[3] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_227_0")
        }
        scr_battletext()
        self.actcon = 1
    }
}
if (global.myfight == 7)
    self.hspeed = 15
