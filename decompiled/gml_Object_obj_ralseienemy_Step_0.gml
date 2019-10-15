if (self.ambushed == 0)
{
    scr_ambush()
    self.ambushed = 1
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
        if (self.attackcon == 0)
        {
            scr_moveheart()
            self.abletotarget = 1
            if (global.charcantarget[0] == 0)
            {
                if (global.charcantarget[1] == 0)
                    _temp_local_var_2 = (global.charcantarget[2] == 0)
                else
                    _temp_local_var_2 = 0
            }
            else
                _temp_local_var_2 = 0
            if _temp_local_var_2
                self.abletotarget = 0
            self.mytarget = choose(0, 1, 2)
            if (self.abletotarget == 1)
            {
                while(true)
                {
                    if (global.charcantarget[self.mytarget] == 0)
                    {
                        self.mytarget = choose(0, 1, 2)
                        continue
                    }
                    break
                }
            }
            else
                self.target = 3
            global.targeted[self.mytarget] = 1
            instance_create((__view_get(e__VW.XView, 0) + 320), (__view_get(e__VW.YView, 0) + 170), obj_growtangle)
            instance_create(0, 0, obj_darkener)
        }
        global.typer = 45
        global.fc = 2
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_36_0"@7842)
        if (self.plot == 0)
        {
            global.fe = 0
            global.flag[30] = 0
            global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_42_0"@7843)
            global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_43_0"@7844)
            global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_44_0"@7845)
            global.msg[3] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_45_0"@7846)
            global.msg[4] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_46_0"@7847)
            global.msg[5] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_47_0"@7848)
            global.msg[6] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_48_0"@7849)
        }
        if (self.plot >= 1)
        {
            self.dial = 0
            if (global.charaction[0] == 1)
            {
                if (self.dummyhp > global.monsterhp[0])
                    self.dial = 1
                if (self.myhp > global.monsterhp[1])
                    self.dial = 4
                if (self.dummyhp == global.monsterhp[0])
                {
                    if (self.myhp == global.monsterhp[1])
                        _temp_local_var_3 = (self.plot == 1)
                    else
                        _temp_local_var_3 = 0
                }
                else
                    _temp_local_var_3 = 0
                if _temp_local_var_3
                    self.dial = 2
                if (self.dummyhp == global.monsterhp[0])
                {
                    if (self.myhp == global.monsterhp[1])
                    {
                        if (self.misstime == 9)
                            _temp_local_var_4 = (self.plot == 2)
                        else
                            _temp_local_var_4 = 0
                    }
                    else
                        _temp_local_var_4 = 0
                }
                else
                    _temp_local_var_4 = 0
                if _temp_local_var_4
                {
                    self.dial = 3
                    global.flag[205] = 6
                }
                if (self.dial == 4)
                    _temp_local_var_5 = (self.hittime >= 2)
                else
                    _temp_local_var_5 = 0
                if _temp_local_var_5
                {
                    self.hittime = 3
                    self.dial = 3
                    global.flag[205] = 3
                }
                if (self.dial == 1)
                    _temp_local_var_6 = (self.hitdum >= 3)
                else
                    _temp_local_var_6 = 0
                if _temp_local_var_6
                {
                    self.hitdum = 4
                    self.dial = 3
                    global.flag[205] = 4
                }
            }
            if (global.charaction[0] == 10)
            {
                global.fe = 0
                global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_65_0"@7851)
                global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_66_0"@7852)
                if (self.defendtime == 1)
                {
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_70_0"@7853)
                    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_71_0"@7854)
                }
                if (self.defendtime == 2)
                {
                    global.fe = 1
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_77_0"@7855)
                    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_78_0"@7856)
                    global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_79_0"@7857)
                }
                if (self.defendtime == 3)
                {
                    global.fe = 9
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_86_0"@7858)
                }
                if (self.defendtime >= 4)
                {
                    self.dial = 3
                    global.flag[205] = 5
                }
                self.defendtime = (self.defendtime + 1)
            }
            if (global.charaction[0] == 4)
            {
                global.fe = 8
                global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_96_0"@7859)
            }
            if (self.dial == 1)
            {
                if (self.plot == 2)
                    _temp_local_var_7 = (self.hitdum == 0)
                else
                    _temp_local_var_7 = 0
                if _temp_local_var_7
                    self.hitdum = 1
                self.plot = 2
                global.fe = 3
                if (self.dummyhp > (global.monsterhp[0] + 50))
                {
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_107_0"@7860)
                    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_108_0"@7861)
                }
                else
                {
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_112_0"@7862)
                    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_113_0"@7863)
                }
                if (self.misstime >= 6)
                {
                    global.fe = 8
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_118_0"@7864)
                    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_119_0"@7865)
                }
                global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_121_0"@7866)
                global.msg[3] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_122_0"@7867)
                global.msg[4] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_123_0"@7868)
                global.battlemsg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_124_0"@7869)
                if (self.hitdum == 1)
                {
                    global.fe = 1
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_130_0"@7870)
                    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_131_0"@7871)
                }
                if (self.hitdum == 2)
                {
                    global.fe = 1
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_137_0"@7872)
                    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_138_0"@7873)
                }
                if (self.hitdum == 3)
                {
                    global.fe = 9
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_144_0"@7874)
                    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_145_0"@7875)
                }
                self.hitdum = (self.hitdum + 1)
            }
            if (self.dial == 2)
            {
                global.fe = 3
                global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_154_0"@7876)
                global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_155_0"@7877)
                if (self.misstime >= 1)
                {
                    global.fe = 8
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_159_0"@7878)
                    if (self.misstime == 2)
                        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_160_0"@7879)
                    if (self.misstime == 3)
                        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_161_0"@7880)
                    if (self.misstime == 4)
                        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_162_0"@7881)
                    if (self.misstime == 5)
                        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_163_0"@7882)
                    if (self.misstime == 6)
                        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_164_0"@7883)
                    if (self.misstime == 7)
                    {
                        global.fe = 9
                        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_168_0"@7884)
                    }
                    if (self.misstime == 8)
                    {
                        global.fe = 1
                        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_173_0"@7885)
                        global.battlemsg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_174_0"@7886)
                        self.plot = 2
                    }
                }
                self.misstime = (self.misstime + 1)
            }
            if (self.dial == 3)
            {
                global.fe = 9
                global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_187_0"@7887)
                global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_188_0"@7888)
                global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_189_0"@7889)
                global.msg[3] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_190_0"@7890)
                if (self.hittime >= 3)
                {
                    global.fe = 2
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_195_0"@7891)
                    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_196_0"@7892)
                    global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_197_0"@7893)
                    global.msg[3] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_198_0"@7894)
                }
                self.won = 1
            }
            if (self.dial == 4)
            {
                global.fe = 3
                if (self.hittime == 0)
                {
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_212_0"@7895)
                    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_213_0"@7896)
                    if (self.plot == 2)
                        global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_218_0"@7897)
                    if (self.plot == 1)
                    {
                        global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_222_0"@7898)
                        global.msg[3] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_223_0"@7899)
                        global.battlemsg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_224_0"@7900)
                        self.plot = 2
                    }
                }
                if (self.hittime == 1)
                {
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_231_0"@7901)
                    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_232_0"@7902)
                    global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_233_0"@7903)
                }
                self.hittime = (self.hittime + 1)
            }
        }
        scr_battletext()
        self.talked = 1
        self.talktimer = 0
    }
    if (self.talked == 1)
        _temp_local_var_8 = (global.mnfight == 1)
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
    {
        if (instance_exists(obj_writer) == 0)
        {
            with(obj_face)
            {
                instance_destroy()
            }
            if (self.attackcon == 0)
                global.mnfight = 2
            else
            {
                if (self.won == 1)
                {
                    global.mercymod[0] = 99999
                    global.mercymod[1] = 99999
                }
                scr_mnendturn()
                self.dummyhp = global.monsterhp[0]
                self.myhp = global.monsterhp[1]
            }
        }
    }
    if (global.mnfight == 2)
        _temp_local_var_9 = (self.attacked == 0)
    else
        _temp_local_var_9 = 0
    if _temp_local_var_9
    {
        if (self.attacks == 0)
            self.attackcon = 1
        self.turns = (self.turns + 1)
        global.turntimer = 999
        self.attacked = 1
        self.rr = floor(random(0))
        global.typer = 6
        global.fc = 0
        if (self.rr == 0)
            global.battlemsg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_288_0"@7904)
    }
}
if (self.attackcon < 92)
    _temp_local_var_10 = (self.attackcon > 0)
else
    _temp_local_var_10 = 0
if _temp_local_var_10
{
    global.turntimer = 999
    if (self.attackcon == 1)
    {
        self.krishp = global.hp[1]
        self.b1 = instance_create((obj_heart.x + 150), obj_heart.y, obj_ralseibullet)
        self.attackcon = 2
        self.alarm[5] = 35
    }
    if (self.attackcon == 3)
    {
        self.b2 = instance_create((obj_heart.x - 150), obj_heart.y, obj_ralseibullet)
        self.attackcon = 4
        self.alarm[5] = 35
    }
    if (self.attackcon == 5)
    {
        self.b3 = instance_create((obj_heart.x + 8), (obj_heart.y - 150), obj_ralseibullet)
        self.attackcon = 6
        self.alarm[5] = 60
    }
    if (self.attackcon == 7)
    {
        self.attackcon = 8
        global.turntimer = 999
        if (self.krishp == global.hp[1])
        {
            global.fc = 2
            global.fe = 0
            global.typer = 45
            global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_334_0"@7909)
            scr_battletext()
            self.attackcon = 90
        }
        else
        {
            global.fc = 2
            global.fe = 3
            global.typer = 45
            global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_343_0"@7910)
            global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_344_0"@7911)
            scr_battletext()
        }
    }
    if (self.attackcon == 8)
        _temp_local_var_11 = (instance_exists(obj_writer) == 0)
    else
        _temp_local_var_11 = 0
    if _temp_local_var_11
    {
        with(obj_face)
        {
            instance_destroy()
        }
        self.krishp = global.hp[1]
        self.b1 = instance_create((obj_heart.x + 8), (obj_heart.y - 150), obj_ralseibullet)
        self.attackcon = 9
        self.alarm[5] = 60
    }
    if (self.attackcon == 10)
    {
        self.attackcon = 11
        global.turntimer = 999
        if (self.krishp == global.hp[1])
        {
            global.fc = 2
            global.fe = 0
            global.typer = 45
            global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_369_0"@7912)
            scr_battletext()
            self.attackcon = 90
        }
        else
        {
            global.fc = 2
            global.fe = 9
            global.typer = 45
            global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_378_0"@7913)
            scr_battletext()
        }
    }
    if (self.attackcon == 11)
        _temp_local_var_12 = (instance_exists(obj_writer) == 0)
    else
        _temp_local_var_12 = 0
    if _temp_local_var_12
    {
        self.b1 = instance_create((self.xx + 440), (obj_heart.y + 8), obj_ralseibullet)
        with(self.b1)
        {
            self.special = 1
            self.alarm[0] = 40
        }
        self.attackcon = 12
        self.alarm[5] = 80
    }
    if (self.attackcon == 13)
    {
        global.fc = 2
        global.fe = 8
        global.typer = 45
        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_399_0"@7914)
        scr_battletext()
        self.attackcon = 90
    }
    if (self.attackcon == 90)
        _temp_local_var_13 = (instance_exists(obj_writer) == 0)
    else
        _temp_local_var_13 = 0
    if _temp_local_var_13
    {
        global.fc = 2
        global.fe = 0
        global.typer = 45
        global.charturn = 0
        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_410_0"@7915)
        global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_411_0"@7916)
        global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_412_0"@7917)
        global.msg[3] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_413_0"@7918)
        global.msg[4] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_414_0"@7919)
        scr_battletext()
        self.attackcon = 91
    }
    if (self.attackcon == 91)
    {
        global.turntimer = 999
        if (instance_exists(obj_writer) == 0)
        {
            self.dummyhp = global.monsterhp[0]
            self.myhp = global.monsterhp[1]
            global.turntimer = 0
            global.battlemsg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_427_0"@7920)
            self.plot = 1
            self.attackcon = 92
        }
    }
}
if (global.myfight == 3)
{
    self.xx = __view_get(e__VW.XView, 0)
    self.yy = __view_get(e__VW.YView, 0)
    if (self.acting == 1)
        _temp_local_var_14 = (self.actcon == 0)
    else
        _temp_local_var_14 = 0
    if _temp_local_var_14
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_447_0"@7921)
        scr_battletext_default()
    }
    if (self.acting == 2)
        _temp_local_var_15 = (self.actcon == 0)
    else
        _temp_local_var_15 = 0
    if _temp_local_var_15
    {
        with(obj_herokris)
        {
            global.faceaction[self.myself] = 0
            self.state = 0
            self.acttimer = 0
        }
        self.actcon = 10
        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_464_0"@7922)
        scr_battletext_default()
    }
    if (self.actcon == 1)
        _temp_local_var_16 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_16 = 0
    if _temp_local_var_16
    {
        self.actcon = 0
        scr_attackphase()
    }
    if (self.actcon == 10)
    {
        with(global.charinstance[0])
        {
            self.visible = 0
        }
        self.k = scr_dark_marker(global.charinstance[0].x, global.charinstance[0].y, spr_kris_hug)
        with(self.k)
        {
            scr_move_to_point_over_time((global.monsterx[1] - 42), (global.monstery[1] - 16), 15)
        }
        self.actcon = 11
        self.alarm[4] = 25
    }
    if (self.actcon == 12)
    {
        self.sprite_index = spr_ralseib_idle_enemy_blush
        with(self.k)
        {
            self.image_speed = 0.25
        }
        self.actcon = 13
        self.alarm[4] = 12
    }
    if (self.actcon == 14)
    {
        with(self.k)
        {
            self.image_speed = 0
        }
        self.actcon = 15
    }
    if (self.actcon == 15)
        _temp_local_var_17 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_17 = 0
    if _temp_local_var_17
    {
        global.typer = 45
        global.fc = 2
        global.fe = 2
        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_504_0"@7923)
        if (self.hugtime == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_508_0"@7924)
            global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_509_0"@7925)
            global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_510_0"@7926)
            global.msg[3] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_511_0"@7927)
        }
        if (self.hugtime == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_516_0"@7928)
            global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_517_0"@7929)
            global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_518_0"@7930)
            global.flag[205] = 2
            self.won = 1
        }
        self.hugtime = (self.hugtime + 1)
        scr_battletext()
        self.actcon = 16
    }
    if (self.actcon == 16)
        _temp_local_var_18 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_18 = 0
    if _temp_local_var_18
    {
        with(self.myface)
        {
            instance_destroy()
        }
        with(self.k)
        {
            self.image_speed = -0.25
        }
        self.actcon = 17
        self.alarm[4] = 12
    }
    if (self.actcon == 18)
    {
        with(self.k)
        {
            self.image_speed = 0
        }
        with(self.k)
        {
            scr_move_to_point_over_time(global.charinstance[0].x, global.charinstance[0].y, 15)
        }
        self.actcon = 19
        self.alarm[4] = 25
    }
    if (self.actcon == 20)
    {
        self.sprite_index = spr_ralseib_idle_enemy
        with(self.k)
        {
            instance_destroy()
        }
        global.charinstance[0].visible = 1
        self.actcon = 1
        if (self.won == 1)
        {
            global.mercymod[0] = 999999
            global.mercymod[1] = 999999
        }
    }
}
if (self.con == 1)
{
    self.alarm[4] = 5
    self.con = 2
}
if (self.con == 3)
{
    global.typer = 7
    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_575_0"@7931)
    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_576_0"@7932)
    global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_577_0"@7933)
    global.msg[3] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_578_0"@7934)
    global.msg[4] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_579_0"@7935)
    global.msg[5] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_580_0"@7936)
    self.con = 4
    self.mywriter = instance_create((self.x - 160), (self.y - 30), obj_writer)
}
if (self.con == 4)
    _temp_local_var_19 = (~ instance_exists(obj_writer))
else
    _temp_local_var_19 = 0
if _temp_local_var_19
{
    self.hspeed = 20
    self.con = 5
    self.alarm[4] = 15
    with(obj_battlecontroller)
    {
        self.noreturn = 0
        self.alarm[2] = 17
    }
}
if (self.con == 6)
{
    global.monsterexp[self.myself] = (global.monsterexp[self.myself] - 0)
    global.monstergold[self.myself] = (global.monstergold[self.myself] + 10)
    scr_monsterdefeat()
    instance_destroy()
    self.con = 7
}
