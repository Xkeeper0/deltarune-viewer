if (self.defeated == 1)
    _temp_local_var_1 = (global.mnfight == 1)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    global.mnfight = 99
    self.con = 1
}
if (global.monster[self.myself] == 1)
    _temp_local_var_2 = (self.defeated == 0)
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    global.flag[(51 + self.myself)] = 4
    if (global.mnfight == 1)
        _temp_local_var_3 = (self.talked == 0)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
    {
        if (scr_monsterpop() == 1)
        {
            self.susie_revive_count = (self.susie_revive_count + 1)
            if (self.susie_revive_count >= 3)
            {
                with(obj_susieandlancer_event)
                {
                    self.s.visible = 0
                }
                global.monster[0] = 1
                global.monsterinstance[0] = instance_create(global.monstermakex[0], global.monstermakey[0], global.monsterinstancetype[0])
                global.monsterinstance[0].myself = 0
                with(global.monsterinstance[0])
                {
                    event_user(12)
                    event_user(1)
                }
                global.monsterhp[0] = 40
                snd_play(snd_power)
                self.susie_revive_count = 0
            }
        }
        self.attack_qual = 1
        with(obj_susieenemy)
        {
            if (self.sleeping == 0)
                _temp_local_var_4 = (global.monster[self.myself] == 1)
            else
                _temp_local_var_4 = 0
            if _temp_local_var_4
                obj_lancerboss3.attack_qual = 0
        }
        if (self.attack_qual == 1)
        {
            scr_randomtarget()
            global.targeted[self.mytarget] = 1
        }
        if (~ instance_exists(obj_darkener))
            instance_create(0, 0, obj_darkener)
        global.typer = 50
        self.rrrr = choose(0, 1, 2, 3)
        global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_56_0"@8712)
        if (self.rrrr == 1)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_57_0"@8713)
        if (self.rrrr == 2)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_58_0"@8714)
        if (self.rrrr == 3)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_59_0"@8715)
        if (self.lancer_hurt == 0)
            _temp_local_var_5 = (global.monsterhp[self.myself] <= (global.monstermaxhp[self.myself] * 0.5))
        else
            _temp_local_var_5 = 0
        if _temp_local_var_5
        {
            self.lancer_hurt = 1
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_64_0"@8716)
        }
        if (self.susie_act == 3)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_66_0"@8717)
        if (self.susie_act == 9)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_67_0"@8718)
        if (self.acting == 2)
        {
            if (self.anythingcounter == 1)
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_70_0"@8719)
            if (self.anythingcounter == 2)
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_71_0"@8720)
            if (self.anythingcounter == 3)
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_72_0"@8721)
            if (self.anythingcounter >= 4)
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_73_0"@8722)
        }
        if (self.acting == 3)
        {
            if (self.anythingcounter == 1)
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_77_0"@8723)
            if (self.anythingcounter == 2)
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_78_0"@8724)
            if (self.anythingcounter == 3)
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_79_0"@8725)
            if (self.anythingcounter >= 4)
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_80_0"@8726)
        }
        self.susie_act = 0
        self.lancer_act = 0
        scr_enemyblcon((self.x - 235), (self.y - 65), 3)
        self.talked = 1
        self.talktimer = 0
    }
    if (self.talked == 1)
        _temp_local_var_6 = (global.mnfight == 1)
    else
        _temp_local_var_6 = 0
    if _temp_local_var_6
    {
        if button1_p()
            _temp_local_var_7 = (self.talktimer > 15)
        else
            _temp_local_var_7 = 0
        if _temp_local_var_7
            self.talktimer = self.talkmax
        self.talktimer = (self.talktimer + 1)
        if (self.talktimer >= self.talkmax)
        {
            if (~ instance_exists(obj_moveheart))
                scr_moveheart()
            if (~ instance_exists(obj_growtangle))
                instance_create((__view_get(e__VW.XView, 0) + 320), (__view_get(e__VW.YView, 0) + 170), obj_growtangle)
            with(obj_writer)
            {
                instance_destroy()
            }
            global.mnfight = 2
        }
    }
    if (global.mnfight == 2)
        _temp_local_var_8 = (self.attacked == 0)
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
    {
        self.attack_qual = 0
        if (scr_monsterpop() == 1)
            self.attack_qual = 1
        with(obj_susieenemy)
        {
            if (self.sleeping == 1)
                obj_lancerboss3.attack_qual = 1
        }
        if (self.attack_qual == 1)
        {
            if (self.attacks == 0)
            {
                self.bike = instance_create(self.x, self.y, obj_lancerbike)
                self.visible = 0
                self.bike.racecon = 1
                self.bike.target = self.mytarget
                self.bike.damage = (global.monsterat[self.myself] * 5)
                self.attacks = 1
            }
            else
            {
                self.bike = instance_create(self.x, self.y, obj_lancerbike)
                self.visible = 0
                self.bike.lcon = 1
                self.bike.target = self.mytarget
                self.bike.damage = (global.monsterat[self.myself] * 5)
                self.attacks = 0
            }
            global.turntimer = 999
        }
        self.turns = (self.turns + 1)
        self.attacked = 1
        self.rr = floor(random(5))
        global.typer = 6
        global.fc = 0
        if (self.rr == 0)
            global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_145_0"@8727)
        if (self.rr == 1)
            global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_146_0"@8728)
        if (self.rr == 2)
            global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_147_0"@8729)
        if (self.rr == 3)
            global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_148_0"@8730)
        if (self.rr == 4)
            global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_149_0"@8731)
    }
}
if (global.myfight == 3)
{
    self.xx = __view_get(e__VW.XView, 0)
    self.yy = __view_get(e__VW.YView, 0)
    if (self.acting == 1)
        _temp_local_var_9 = (self.actcon == 0)
    else
        _temp_local_var_9 = 0
    if _temp_local_var_9
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_167_0"@8732)
        scr_battletext_default()
    }
    if (self.acting == 2)
        _temp_local_var_10 = (self.actcon == 0)
    else
        _temp_local_var_10 = 0
    if _temp_local_var_10
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_176_0"@8733)
        global.msg[1] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_177_0"@8734)
        if (self.anythingcounter == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_181_0"@8735)
            global.msg[1] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_182_0"@8736)
        }
        if (self.anythingcounter == 2)
        {
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_187_0"@8737)
            global.msg[1] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_188_0"@8738)
        }
        if (self.anythingcounter >= 3)
        {
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_193_0"@8739)
            global.msg[1] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_194_0"@8740)
            if (self.ears_blocked >= 2)
            {
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_197_0"@8741)
                global.msg[1] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_198_0"@8742)
            }
            self.attack_qual = 0
            if (scr_monsterpop() == 1)
                self.attack_qual = 1
            with(obj_susieenemy)
            {
                if (self.sleeping == 1)
                    obj_lancerboss3.attack_qual = 1
            }
            if (self.attack_qual == 0)
            {
                self.actcon = 20
                with(obj_monsterparent)
                {
                    self.ears_blocked = (self.ears_blocked + 1)
                }
            }
            else
                self.anythingcounter = 10
            if (self.ears_blocked >= 3)
            {
                self.anythingcounter = 10
                self.actcon = 1
                self.attack_qual = 1
            }
        }
        if (self.anythingcounter < 4)
            self.anythingcounter = (self.anythingcounter + 1)
        scr_battletext_default()
    }
    if (self.acting == 3)
        _temp_local_var_11 = (self.actcon == 0)
    else
        _temp_local_var_11 = 0
    if _temp_local_var_11
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_222_0"@8743)
        scr_ralface(1, 8)
        global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_224_0"@8744)
        scr_noface(3)
        global.msg[4] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_226_0"@8745)
        if (self.anythingcounter == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_230_0"@8746)
            scr_ralface(1, 1)
            global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_232_0"@8747)
            global.msg[3] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_233_0"@8748)
            scr_noface(4)
            global.msg[5] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_235_0"@8749)
        }
        if (self.anythingcounter == 2)
        {
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_240_0"@8750)
            scr_ralface(1, 1)
            global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_242_0"@8751)
            global.msg[3] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_243_0"@8752)
            scr_noface(4)
            global.msg[5] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_245_0"@8753)
        }
        if (self.anythingcounter >= 3)
        {
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_250_0"@8754)
            scr_ralface(1, 6)
            global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_252_0"@8755)
            global.msg[3] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_253_0"@8756)
            if (self.ears_blocked >= 2)
            {
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_256_0"@8757)
                scr_ralface(1, 0)
                global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_258_0"@8758)
                scr_noface(3)
                global.msg[4] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_260_0"@8759)
            }
            self.attack_qual = 0
            if (scr_monsterpop() == 1)
                self.attack_qual = 1
            with(obj_susieenemy)
            {
                if (self.sleeping == 1)
                    obj_lancerboss3.attack_qual = 1
            }
            if (self.attack_qual == 0)
            {
                self.actcon = 20
                with(obj_monsterparent)
                {
                    self.ears_blocked = (self.ears_blocked + 1)
                }
            }
            else
                self.anythingcounter = 10
            if (self.ears_blocked >= 3)
            {
                self.anythingcounter = 10
                self.actcon = 1
                self.attack_qual = 1
            }
        }
        if (self.anythingcounter < 4)
            self.anythingcounter = (self.anythingcounter + 1)
        if instance_exists(obj_susieenemy)
        {
            obj_susieenemy.anythingxcounter = self.anythingcounter
            obj_susieenemy.lancer_act = 3
        }
        scr_battletext_default()
    }
    if (self.actcon == 1)
        _temp_local_var_12 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_12 = 0
    if _temp_local_var_12
    {
        self.actcon = 0
        if (self.anythingcounter < 10)
            scr_attackphase()
        else
        {
            self.defeated = 1
            global.mnfight = 99
            global.myfight = 99
            self.con = 1
            global.flag[249] = 1
        }
    }
    if (self.actcon == 20)
        _temp_local_var_13 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_13 = 0
    if _temp_local_var_13
    {
        self.visible = 0
        with(obj_susieenemy)
        {
            self.visible = 0
        }
        if (scr_monsterpop() == 1)
        {
            with(obj_susieandlancer_event)
            {
                self.s.visible = 0
            }
        }
        self.blocklan = scr_dark_marker(self.x, self.y, spr_lancerbike_earcover)
        self.blocklan.depth = self.depth
        snd_play(snd_bell)
        global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_314_0"@8761)
        scr_susface(1, 2)
        global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_316_0"@8762)
        scr_battletext_default()
        self.actcon = 21
    }
    if (self.actcon == 21)
        _temp_local_var_14 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_14 = 0
    if _temp_local_var_14
    {
        with(self.blocklan)
        {
            instance_destroy()
        }
        self.visible = 1
        with(obj_susieenemy)
        {
            self.visible = 1
        }
        if (scr_monsterpop() == 1)
        {
            with(obj_susieandlancer_event)
            {
                self.s.visible = 1
            }
        }
        self.actcon = 1
    }
}
if (self.con == 1)
{
    self.alarm[4] = 5
    self.con = 2
}
if (self.con == 3)
{
    with(obj_susieenemy)
    {
        self.idlesprite = 609
    }
    global.typer = 46
    global.fe = 4
    global.fc = 5
    global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_348_0"@8763)
    scr_susface(1, 9)
    global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_350_0"@8764)
    global.msg[3] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_351_0"@8765)
    global.msg[4] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_352_0"@8766)
    scr_lanface(5, 2)
    global.msg[6] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_354_0"@8767)
    global.msg[7] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_355_0"@8768)
    scr_susface(8, 0)
    global.msg[9] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_357_0"@8769)
    scr_ralface(10, 6)
    global.msg[11] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_359_0"@8770)
    if (global.flag[249] == 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_363_0"@8771)
        scr_susface(1, 0)
        global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_365_0"@8772)
        scr_lanface(3, 4)
        global.msg[4] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_367_0"@8773)
        global.msg[5] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_368_0"@8774)
        global.msg[6] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_369_0"@8775)
        scr_susface(7, 0)
        global.msg[8] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_371_0"@8776)
        global.msg[9] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_372_0"@8777)
        global.msg[10] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_373_0"@8778)
        global.msg[11] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_374_0"@8779)
    }
    self.con = 4
    scr_battletext()
}
if (self.con == 4)
    _temp_local_var_15 = (~ instance_exists(obj_writer))
else
    _temp_local_var_15 = 0
if _temp_local_var_15
{
    self.con = 5
    self.alarm[4] = 2
    with(obj_battlecontroller)
    {
        self.noreturn = 0
        self.alarm[2] = 4
    }
}
if (self.con == 6)
{
    with(obj_susieandlancer_event)
    {
        self.l.visible = 1
    }
    with(obj_monsterparent)
    {
        scr_monsterdefeat()
    }
    instance_destroy()
    self.con = 7
}
