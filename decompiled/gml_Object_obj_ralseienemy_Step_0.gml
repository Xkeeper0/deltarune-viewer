if (self.ambushed == 0)
{
    scr_ambush()
    self.ambushed = 1
}
if (global.monster[self.myself] == 1)
{
    global.flag[(51 + self.myself)] = 4
    if ((global.mnfight == 1) && (self.talked == 0))
    {
        if (self.attackcon == 0)
        {
            scr_moveheart()
            self.abletotarget = 1
            if ((global.charcantarget[0] == 0) && ((global.charcantarget[1] == 0) && (global.charcantarget[2] == 0)))
                self.abletotarget = 0
            self.mytarget = choose(0, 1, 2)
            if (self.abletotarget == 1)
            {
                while (global.charcantarget[self.mytarget] == 0)
                    self.mytarget = choose(0, 1, 2)
            }
            else
                self.target = 3
            global.targeted[self.mytarget] = 1
            instance_create((__view_get(0, 0) + 320), (__view_get(1, 0) + 170), obj_growtangle)
            instance_create(0, 0, obj_darkener)
        }
        global.typer = 45
        global.fc = 2
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_36_0")
        if (self.plot == 0)
        {
            global.fe = 0
            global.flag[30] = 0
            global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_42_0")
            global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_43_0")
            global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_44_0")
            global.msg[3] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_45_0")
            global.msg[4] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_46_0")
            global.msg[5] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_47_0")
            global.msg[6] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_48_0")
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
                if ((self.dummyhp == global.monsterhp[0]) && ((self.myhp == global.monsterhp[1]) && (self.plot == 1)))
                    self.dial = 2
                if ((self.dummyhp == global.monsterhp[0]) && ((self.myhp == global.monsterhp[1]) && ((self.misstime == 9) && (self.plot == 2))))
                {
                    self.dial = 3
                    global.flag[205] = 6
                }
                if ((self.dial == 4) && (self.hittime >= 2))
                {
                    self.hittime = 3
                    self.dial = 3
                    global.flag[205] = 3
                }
                if ((self.dial == 1) && (self.hitdum >= 3))
                {
                    self.hitdum = 4
                    self.dial = 3
                    global.flag[205] = 4
                }
            }
            if (global.charaction[0] == 10)
            {
                global.fe = 0
                global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_65_0")
                global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_66_0")
                if (self.defendtime == 1)
                {
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_70_0")
                    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_71_0")
                }
                if (self.defendtime == 2)
                {
                    global.fe = 1
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_77_0")
                    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_78_0")
                    global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_79_0")
                }
                if (self.defendtime == 3)
                {
                    global.fe = 9
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_86_0")
                }
                if (self.defendtime >= 4)
                {
                    self.dial = 3
                    global.flag[205] = 5
                }
                self.defendtime += 1
            }
            if (global.charaction[0] == 4)
            {
                global.fe = 8
                global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_96_0")
            }
            if (self.dial == 1)
            {
                if ((self.plot == 2) && (self.hitdum == 0))
                    self.hitdum = 1
                self.plot = 2
                global.fe = 3
                if (self.dummyhp > (global.monsterhp[0] + 50))
                {
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_107_0")
                    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_108_0")
                }
                else
                {
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_112_0")
                    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_113_0")
                }
                if (self.misstime >= 6)
                {
                    global.fe = 8
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_118_0")
                    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_119_0")
                }
                global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_121_0")
                global.msg[3] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_122_0")
                global.msg[4] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_123_0")
                global.battlemsg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_124_0")
                if (self.hitdum == 1)
                {
                    global.fe = 1
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_130_0")
                    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_131_0")
                }
                if (self.hitdum == 2)
                {
                    global.fe = 1
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_137_0")
                    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_138_0")
                }
                if (self.hitdum == 3)
                {
                    global.fe = 9
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_144_0")
                    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_145_0")
                }
                self.hitdum += 1
            }
            if (self.dial == 2)
            {
                global.fe = 3
                global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_154_0")
                global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_155_0")
                if (self.misstime >= 1)
                {
                    global.fe = 8
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_159_0")
                    if (self.misstime == 2)
                        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_160_0")
                    if (self.misstime == 3)
                        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_161_0")
                    if (self.misstime == 4)
                        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_162_0")
                    if (self.misstime == 5)
                        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_163_0")
                    if (self.misstime == 6)
                        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_164_0")
                    if (self.misstime == 7)
                    {
                        global.fe = 9
                        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_168_0")
                    }
                    if (self.misstime == 8)
                    {
                        global.fe = 1
                        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_173_0")
                        global.battlemsg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_174_0")
                        self.plot = 2
                    }
                }
                self.misstime += 1
            }
            if (self.dial == 3)
            {
                global.fe = 9
                global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_187_0")
                global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_188_0")
                global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_189_0")
                global.msg[3] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_190_0")
                if (self.hittime >= 3)
                {
                    global.fe = 2
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_195_0")
                    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_196_0")
                    global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_197_0")
                    global.msg[3] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_198_0")
                }
                self.won = 1
            }
            if (self.dial == 4)
            {
                global.fe = 3
                if (self.hittime == 0)
                {
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_212_0")
                    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_213_0")
                    if (self.plot == 2)
                        global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_218_0")
                    if (self.plot == 1)
                    {
                        global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_222_0")
                        global.msg[3] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_223_0")
                        global.battlemsg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_224_0")
                        self.plot = 2
                    }
                }
                if (self.hittime == 1)
                {
                    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_231_0")
                    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_232_0")
                    global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_233_0")
                }
                self.hittime += 1
            }
        }
        scr_battletext()
        self.talked = 1
        self.talktimer = 0
    }
    if ((self.talked == 1) && (global.mnfight == 1))
    {
        if (instance_exists(obj_writer) == 0)
        {
            with (obj_face)
                instance_destroy()
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
    if ((global.mnfight == 2) && (self.attacked == 0))
    {
        if (self.attacks == 0)
            self.attackcon = 1
        self.turns += 1
        global.turntimer = 999
        self.attacked = 1
        self.rr = floor(random(0))
        global.typer = 6
        global.fc = 0
        if (self.rr == 0)
            global.battlemsg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_288_0")
    }
}
if ((self.attackcon < 92) && (self.attackcon > 0))
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
            global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_334_0")
            scr_battletext()
            self.attackcon = 90
        }
        else
        {
            global.fc = 2
            global.fe = 3
            global.typer = 45
            global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_343_0")
            global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_344_0")
            scr_battletext()
        }
    }
    if ((self.attackcon == 8) && (instance_exists(obj_writer) == 0))
    {
        with (obj_face)
            instance_destroy()
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
            global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_369_0")
            scr_battletext()
            self.attackcon = 90
        }
        else
        {
            global.fc = 2
            global.fe = 9
            global.typer = 45
            global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_378_0")
            scr_battletext()
        }
    }
    if ((self.attackcon == 11) && (instance_exists(obj_writer) == 0))
    {
        self.b1 = instance_create((self.xx + 440), (obj_heart.y + 8), obj_ralseibullet)
        with (self.b1)
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
        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_399_0")
        scr_battletext()
        self.attackcon = 90
    }
    if ((self.attackcon == 90) && (instance_exists(obj_writer) == 0))
    {
        global.fc = 2
        global.fe = 0
        global.typer = 45
        global.charturn = 0
        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_410_0")
        global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_411_0")
        global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_412_0")
        global.msg[3] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_413_0")
        global.msg[4] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_414_0")
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
            global.battlemsg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_427_0")
            self.plot = 1
            self.attackcon = 92
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
        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_447_0")
        scr_battletext_default()
    }
    if ((self.acting == 2) && (self.actcon == 0))
    {
        with (obj_herokris)
        {
            global.faceaction[self.myself] = 0
            self.state = 0
            self.acttimer = 0
        }
        self.actcon = 10
        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_464_0")
        scr_battletext_default()
    }
    if ((self.actcon == 1) && (!instance_exists(obj_writer)))
    {
        self.actcon = 0
        scr_attackphase()
    }
    if (self.actcon == 10)
    {
        with (global.charinstance[0])
            self.visible = 0
        self.k = scr_dark_marker(global.charinstance[0].x, global.charinstance[0].y, spr_kris_hug)
        with (self.k)
            scr_move_to_point_over_time((global.monsterx[1] - 42), (global.monstery[1] - 16), 15)
        self.actcon = 11
        self.alarm[4] = 25
    }
    if (self.actcon == 12)
    {
        self.sprite_index = spr_ralseib_idle_enemy_blush
        with (self.k)
            self.image_speed = 0.25
        self.actcon = 13
        self.alarm[4] = 12
    }
    if (self.actcon == 14)
    {
        with (self.k)
            self.image_speed = 0
        self.actcon = 15
    }
    if ((self.actcon == 15) && (!instance_exists(obj_writer)))
    {
        global.typer = 45
        global.fc = 2
        global.fe = 2
        global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_504_0")
        if (self.hugtime == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_508_0")
            global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_509_0")
            global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_510_0")
            global.msg[3] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_511_0")
        }
        if (self.hugtime == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_516_0")
            global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_517_0")
            global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_518_0")
            global.flag[205] = 2
            self.won = 1
        }
        self.hugtime += 1
        scr_battletext()
        self.actcon = 16
    }
    if ((self.actcon == 16) && (!instance_exists(obj_writer)))
    {
        with (self.myface)
            instance_destroy()
        with (self.k)
            self.image_speed = -0.25
        self.actcon = 17
        self.alarm[4] = 12
    }
    if (self.actcon == 18)
    {
        with (self.k)
            self.image_speed = 0
        with (self.k)
            scr_move_to_point_over_time(global.charinstance[0].x, global.charinstance[0].y, 15)
        self.actcon = 19
        self.alarm[4] = 25
    }
    if (self.actcon == 20)
    {
        self.sprite_index = spr_ralseib_idle_enemy
        with (self.k)
            instance_destroy()
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
    global.msg[0] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_575_0")
    global.msg[1] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_576_0")
    global.msg[2] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_577_0")
    global.msg[3] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_578_0")
    global.msg[4] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_579_0")
    global.msg[5] = scr_84_get_lang_string("obj_ralseienemy_slash_Step_0_gml_580_0")
    self.con = 4
    self.mywriter = instance_create((self.x - 160), (self.y - 30), obj_writer)
}
if ((self.con == 4) && (!instance_exists(obj_writer)))
{
    self.hspeed = 20
    self.con = 5
    self.alarm[4] = 15
    with (obj_battlecontroller)
    {
        self.noreturn = 0
        self.alarm[2] = 17
    }
}
if (self.con == 6)
{
    global.monsterexp[self.myself] -= 0
    global.monstergold[self.myself] += 10
    scr_monsterdefeat()
    instance_destroy()
    self.con = 7
}
