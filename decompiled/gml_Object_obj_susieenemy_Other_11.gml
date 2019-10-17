if ((global.mnfight == 1) && (self.talked == 0))
{
    self.awoke = 0
    self.sleepcounter += 1
    if ((self.sleepcounter >= 3) && (self.sleeping == 1))
    {
        self.sleeping = 0
        self.idlesprite = 609
        global.monstercomment[self.myself] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_9_0")
        global.monsterstatus[self.myself] = 0
        self.sleepcounter = 99
        self.awoke = 1
    }
    if (self.sleeping == 0)
        scr_randomtarget()
    if (!instance_exists(obj_darkener))
        instance_create(0, 0, obj_darkener)
    global.typer = 53
    self.rr = choose(0, 1, 2, 3)
    if (self.rr == 0)
        global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_19_0")
    if (self.rr == 1)
        global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_20_0")
    if (self.rr == 2)
        global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_21_0")
    if (self.rr == 3)
        global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_22_0")
    if ((self.lancer_hurt == 0) && (global.monsterhp[1] <= (global.monstermaxhp[1] * 0.5)))
    {
        self.lancer_hurt = 1
        if (global.monsterhp[self.myself] == global.monstermaxhp[self.myself])
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_28_0")
        else
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_31_0")
    }
    if (self.acting == 2)
    {
        if (self.anythingcounter == 1)
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_35_0")
        if (self.anythingcounter == 2)
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_36_0")
        if (self.anythingcounter == 3)
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_37_0")
        if (self.anythingcounter == 4)
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_38_0")
        if (self.anythingcounter >= 5)
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_39_0")
    }
    if (self.lancer_act == 3)
    {
        if (self.anythingxcounter == 1)
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_43_0")
        if (self.anythingxcounter == 2)
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_44_0")
        if (self.anythingxcounter == 3)
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_45_0")
        if (self.anythingxcounter >= 4)
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_46_0")
    }
    if (self.sleeping == 1)
        global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_48_0")
    if (self.awoke == 1)
        global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_49_0")
    self.awoke = 0
    self.lancer_act = 0
    scr_enemyblcon((self.x - 160), self.y, 3)
    self.talked = 1
    self.talktimer = 0
}
