if (self.firstskip == 1)
{
    global.acting[0] = 1
    self.acting = 1
    with(obj_writer)
    {
        instance_destroy()
    }
    with(obj_face)
    {
        instance_destroy()
    }
    with(obj_smallface)
    {
        instance_destroy()
    }
    if (global.charaction[0] == 1)
        global.attacking = 1
    global.charturn = 3
    global.myfight = 3
}
if (global.monster[self.myself] == 1)
{
    global.flag[(51 + self.myself)] = 4
    global.acting[0] = 1
    self.acting = 1
    if (global.mnfight == 1)
        _temp_local_var_1 = (self.talked == 0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        self.actcon = 0
        scr_randomtarget()
        if (~ instance_exists(obj_darkener))
            instance_create(0, 0, obj_darkener)
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
        scr_blconskip(-1)
        if (global.mnfight == 2)
        {
            if (~ instance_exists(obj_moveheart))
                _temp_local_var_3 = (self.hmake == 0)
            else
                _temp_local_var_3 = 0
            if _temp_local_var_3
            {
                scr_moveheart()
                self.hmake = 1
            }
            if (~ instance_exists(obj_growtangle))
                instance_create((__view_get(e__VW.XView, 0) + 320), (__view_get(e__VW.YView, 0) + 170), obj_growtangle)
        }
    }
    if (global.mnfight == 2)
        _temp_local_var_4 = (self.attacked == 0)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
    {
        self.rtimer = (self.rtimer + 1)
        if (self.rtimer == 12)
        {
            global.turntimer = 140
            if (self.turns == 0)
                _temp_local_var_5 = 1
            else
                _temp_local_var_5 = (self.turns == 2)
            if _temp_local_var_5
            {
                self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
                self.dc.type = 20
                self.dc.target = self.mytarget
                self.dc.damage = (global.monsterat[self.myself] * 5)
                if (global.hp[global.char[0]] <= 70)
                    self.dc.damage = (global.monsterat[self.myself] * 3)
                global.turntimer = 180
            }
            if (self.turns == 1)
            {
                self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
                self.dc.type = 21
                self.dc.target = self.mytarget
                self.dc.damage = (global.monsterat[self.myself] * 5)
                if (global.hp[global.char[0]] <= 70)
                    self.dc.damage = (global.monsterat[self.myself] * 3)
                global.turntimer = 180
            }
            if (self.turns >= 3)
            {
                self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
                self.dc.difficulty = (self.turns * 2)
                if (self.turns == 6)
                    self.dc.difficulty = 30
                if (self.turns == 7)
                    self.dc.difficulty = 90
                self.dc.type = 24
                self.dc.target = self.mytarget
                self.dc.damage = (global.monsterat[self.myself] * 5)
            }
            self.turns = (self.turns + 1)
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_88_0"@8599)
        }
        else
            global.turntimer = 150
    }
    if (global.mnfight == 2)
    {
        if (global.turntimer <= 10)
            self.hmake = 0
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
        self.firstskip = 0
        global.typer = 53
        self.rr = choose(0, 1, 2, 3)
        self.actcon = 1
        if (self.turns == 0)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_120_0"@8600)
        if (self.turns == 1)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_121_0"@8601)
        if (self.turns == 2)
        {
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_122_0"@8602)
            global.msg[1] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_122_1"@8603)
        }
        if (self.turns == 3)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_123_0"@8604)
        if (self.turns == 4)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_124_0"@8605)
        if (self.turns == 5)
        {
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_127_0"@8606)
            with(obj_herosusie)
            {
                self.idlesprite = 471
                self.attacksprite = 475
            }
        }
        if (self.turns == 6)
        {
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_135_0"@8607)
            global.msg[1] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_136_0"@8608)
            global.msg[2] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_137_0"@8609)
            with(obj_herosusie)
            {
                self.idlesprite = 463
                self.attacksprite = 474
            }
        }
        if (self.turns == 7)
        {
            global.typer = 54
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_145_0"@8610)
            global.msg[1] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_145_1"@8611)
            global.msg[2] = scr_84_get_lang_string("obj_lancerboss2_slash_Step_0_gml_145_2"@8612)
            self.actcon = 2
        }
        global.monsterdf[self.myself] = (global.monsterdf[self.myself] - 5)
        scr_enemyblcon((obj_herosusie.x + 100), obj_herosusie.y, 7)
        with(obj_writer)
        {
            self.skippable = 0
        }
    }
    if (self.actcon == 1)
        _temp_local_var_7 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_7 = 0
    if _temp_local_var_7
    {
        self.actcon = 0
        scr_attackphase()
    }
    if (self.actcon == 2)
        _temp_local_var_8 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
    {
        snd_free_all()
        snd_play(snd_laz_c)
        self.black = scr_dark_marker((__view_get(e__VW.XView, 0) - 20), (__view_get(e__VW.YView, 0) - 20), spr_pixel_white)
        with(self.black)
        {
            self.image_blend = 0x000000
            self.depth = -10000
            self.image_xscale = 900
            self.image_yscale = 900
        }
        self.actcon = 3
        self.acttimer = 0
        if instance_exists(obj_lancerbattle2_event)
        {
            obj_lancerbattle2_event.black = self.black
            with(obj_lancerbattle2_event)
            {
                self.con = 52
                self.alarm[4] = 80
            }
        }
    }
    if (self.actcon == 3)
    {
    }
}
