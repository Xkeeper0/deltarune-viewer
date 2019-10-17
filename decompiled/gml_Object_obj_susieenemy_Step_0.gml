if ((global.monster[self.myself] == 1) && (self.defeated == 0))
{
    global.flag[(51 + self.myself)] = 4
    event_user(1)
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
            global.turntimer = 180
            if (self.attacktype == 2)
            {
                self.dc = instance_create((self.x + (self.sprite_width / 2)), (self.y + (self.sprite_height / 2)), obj_dbulletcontroller)
                self.dc.type = 85
                self.dc.target = self.mytarget
                self.dc.damage = (global.monsterat[self.myself] * 5)
                self.dc.timepoints = 3
                self.dc.grazepoints = 5
                if (self.sleeping == 1)
                {
                    with (self.dc)
                        instance_destroy()
                }
            }
            if (self.attacktype == 1)
            {
                self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
                self.dc.type = 20
                self.dc.target = self.mytarget
                self.dc.damage = (global.monsterat[self.myself] * 5)
                self.dc.timepoints = 3
                self.dc.grazepoints = 3
                if (self.sleeping == 1)
                {
                    with (self.dc)
                        instance_destroy()
                }
            }
            if ((self.attacktype == 0) && (self.sleeping == 0))
            {
                self.bike = instance_create(obj_lancerboss3.x, obj_lancerboss3.y, obj_lancerbike_neo)
                with (obj_lancerboss3)
                    self.visible = 0
                self.bike.target = self.mytarget
                self.bike.damage = (global.monsterat[self.myself] * 5)
                global.turntimer = 999
            }
            self.attacktype += 1
            if (self.attacktype >= 3)
                self.attacktype = 0
            self.turns += 1
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0, 1, 2, 3, 4)
            global.battlemsg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_79_0")
            if (self.rr == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_80_0")
            if (self.rr == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_81_0")
            if (self.rr == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_82_0")
            if (self.rr == 4)
                global.battlemsg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_83_0")
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
    global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_118_0")
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
        self._armordf = ((global.itemdf[2, 0] + global.itemdf[2, 1]) + global.itemdf[2, 2])
        self._armorat = ((global.itemat[2, 0] + global.itemat[2, 1]) + global.itemat[2, 2])
        self.totaldf = string((global.df[2] + self._armordf))
        self.totalat = string((global.at[2] + self._armorat))
        self.totalhp = string(global.maxhp[2])
        global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_159_0"), self.totalat, self.totaldf, self.totalhp)
        if (self._armordf > 0)
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_162_0"), self.totalat, self.totaldf, self.totalhp)
        scr_battletext_default()
    }
    if ((self.acting == 2) && (self.actcon == 0))
    {
        global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_170_0")
        if (self.anythingcounter == 1)
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_171_0")
        if (self.anythingcounter == 2)
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_172_0")
        if (self.anythingcounter == 3)
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_173_0")
        if (self.anythingcounter >= 4)
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_174_0")
        global.msg[1] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_175_0")
        if (self.anythingcounter >= 1)
            global.msg[1] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_176_0")
        scr_battletext_default()
        self.anythingcounter += 1
        self.actcon = 1
    }
    if ((self.acting == 3) && (self.actcon == 0))
    {
        with (obj_monsterparent)
            self.susie_act = 3
        snd_pause(global.batmusic[1])
        if (self.lullabied == 0)
        {
            self.singy = snd_play(snd_ralseising1)
            with (self.object_index)
                self.lullabied = 1
        }
        else
        {
            self.singy = snd_play(snd_ralseising2)
            with (self.object_index)
                self.lullabied = 0
        }
        global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_197_0")
        with (obj_heroralsei)
            self.visible = 0
        self.ralsing = scr_dark_marker(obj_heroralsei.x, obj_heroralsei.y, spr_ralseib_sing)
        with (self.ralsing)
            self.image_speed = 0.2
        self.lullatimer = 0
        scr_battletext_default()
        self.actcon = 10
    }
    if (self.actcon == 10)
    {
        self.lullatimer += 1
        if (self.lullatimer >= 30)
            self.actcon = 11
    }
    if ((self.actcon == 11) && (instance_exists(obj_writer) == 0))
    {
        with (self.ralsing)
            instance_destroy()
        with (obj_heroralsei)
            self.visible = 1
        snd_stop(self.singy)
        snd_resume(global.batmusic[1])
        global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_223_0")
        if (self.sleeping == 1)
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_224_0")
        self.idlesprite = 607
        self.sleepcounter = 0
        self.sleeping = 1
        global.monstercomment[self.myself] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_228_0")
        global.monsterstatus[self.myself] = 1
        scr_battletext_default()
        self.actcon = 1
    }
    if ((self.actcon == 1) && (!instance_exists(obj_writer)))
    {
        self.actcon = 0
        scr_attackphase()
    }
}
if (self.pacifycon > 0)
{
    global.spelldelay = 999
    with (obj_spellphase)
    {
        if (self.spelltimer > 30)
            self.spelltimer = 30
    }
}
if (self.pacifycon == 1)
{
    if (obj_spellphase.spelltimer >= 15)
    {
        self.pacifytimer = 0
        self.pacifycon = 2
        with (obj_lancerboss3)
            self.visible = 0
        self.temp_l = scr_dark_marker((self.x - 40), (self.y + self.sprite_height), spr_lancerbike)
        self.temp_l.depth = (self.depth - 2)
    }
}
if (self.pacifycon == 2)
{
    snd_play(snd_lancerwhistle)
    with (self.temp_l)
    {
        self.o = scr_oflash()
        self.o.flashcolor = 16711680
    }
    self.pacifycon = 3
}
if (self.pacifycon == 3)
{
    self.pacifytimer += 1
    if ((self.pacifytimer >= 30) && (!instance_exists(obj_writer)))
    {
        with (self.temp_l)
            instance_destroy()
        with (obj_lancerboss3)
            self.visible = 1
        self.pacifycon = 4
        with (obj_monsterparent)
            self.susie_act = 9
        global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_283_0")
        scr_lanface(1, 3)
        global.msg[2] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_285_0")
        scr_noface(3)
        global.msg[4] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_287_0")
        if (self.tirespare == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_290_0")
            global.msg[1] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_291_0")
            global.msg[2] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_292_0")
            global.msg[3] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_293_0")
            global.msg[4] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_294_0")
        }
        if (self.tirespare >= 2)
        {
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_298_0")
            global.msg[1] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_299_0")
        }
        scr_battletext_default()
        self.pacifycon = 5
        self.tirespare += 1
    }
}
if ((self.pacifycon == 5) && (!instance_exists(obj_writer)))
{
    global.spelldelay = 20
    with (obj_spellphase)
        self.spelltimer = 18
    self.pacifycon = 0
}
