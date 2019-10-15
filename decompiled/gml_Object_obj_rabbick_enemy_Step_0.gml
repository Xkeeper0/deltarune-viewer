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
        self.rando = floor(random(50))
        if (self.rando == 0)
            self.rr = 4
        if (self.rr == 0)
            global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_13_0"@8453)
        if (self.rr == 1)
            global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_14_0"@8454)
        if (self.rr == 2)
            global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_15_0"@8455)
        if (self.rr == 3)
            global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_16_0"@8456)
        if (self.rr == 4)
            global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_17_0"@8457)
        if (self.blown == 1)
        {
            if (self.rr == 0)
                _temp_local_var_2 = 1
            else
                _temp_local_var_2 = (self.rr == 4)
            if _temp_local_var_2
                global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_21_0"@8458)
            if (self.rr == 1)
                global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_22_0"@8459)
            if (self.rr == 2)
                global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_23_0"@8460)
            if (self.rr == 3)
                global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_24_0"@8461)
        }
        scr_enemyblcon((self.x - 160), self.y, 3)
        self.talked = 1
        self.talktimer = 0
    }
    if (self.talked == 1)
        _temp_local_var_3 = (global.mnfight == 1)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
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
        _temp_local_var_4 = (self.attacked == 0)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
    {
        self.rtimer = (self.rtimer + 1)
        if (self.rtimer == 12)
        {
            self.rr = choose(0, 1)
            if (self.rr == 0)
            {
                self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
                self.dc.type = 30
                self.dc.target = self.mytarget
                self.dc.damage = (global.monsterat[self.myself] * 5)
                self.dc.grazepoints = 9
                self.dc.timepoints = 3
            }
            else
            {
                self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
                self.dc.type = 32
                self.dc.target = self.mytarget
                self.dc.damage = (global.monsterat[self.myself] * 5)
                self.dc.grazepoints = 9
                self.dc.timepoints = 3
            }
            self.turns = (self.turns + 1)
            global.turntimer = 170
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0, 1, 2, 3)
            if (self.rr == 0)
                global.battlemsg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_79_0"@8462)
            if (self.rr == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_80_0"@8463)
            if (self.rr == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_81_0"@8464)
            if (self.rr == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_82_0"@8465)
            if (global.monsterhp[self.myself] <= (global.monstermaxhp[self.myself] / 3))
                global.battlemsg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_83_0"@8466)
            if (global.mercymod[self.myself] >= global.mercymax[self.myself])
                global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_84_0"@8467)
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
        _temp_local_var_5 = (self.actcon == 0)
    else
        _temp_local_var_5 = 0
    if _temp_local_var_5
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_118_0"@8468)
        scr_battletext_default()
    }
    if (self.acting == 2)
        _temp_local_var_6 = (self.actcon == 0)
    else
        _temp_local_var_6 = 0
    if _temp_local_var_6
    {
        self.blowall = 0
        self.input_name = scr_get_input_name(4)
        global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_128_0"@8469), self.input_name)
        if (self.blown == 0)
        {
            self.actcon = 10
            self.blowing = 1
            self.blowtimer = 90
            scr_battletext_default()
        }
        if (self.blown == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_138_0"@8470)
            scr_battletext_default()
            self.actcon = 20
        }
    }
    if (self.acting == 3)
        _temp_local_var_7 = (self.actcon == 0)
    else
        _temp_local_var_7 = 0
    if _temp_local_var_7
    {
        self.blowall = 1
        self.input_name = scr_get_input_name(4)
        global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_150_0"@8471), self.input_name)
        self.actcon = 10
        self.blowing = 1
        self.blowtimer = 90
        obj_rabbick_enemy.bunnycount = 0
        obj_rabbick_enemy.bunnyid = self.id
        with(obj_rabbick_enemy)
        {
            if (self.blown == 0)
                self.bunnyid.bunnycount = (self.bunnyid.bunnycount + 1)
            self.blowbuffer = 2
            self.blow_wait = 0
            self.blowall = 1
            self.blowing = 1
            self.blowtimer = 90
        }
        if (self.bunnycount == 0)
        {
            with(obj_rabbick_enemy)
            {
                self.blowing = 0
                self.blowtimer = -1
                self.actcon = 30
                global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_175_0"@8474)
            }
        }
        scr_battletext_default()
    }
    if (self.acting == 4)
        _temp_local_var_8 = (self.actcon == 0)
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_186_0"@8475)
        if (scr_monsterpop() > 1)
            global.msg[0] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_188_0"@8476)
        self.i = 0
        while(true)
        {
            if (self.i < 3)
            {
                global.monstercomment[self.i] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Step_0_gml_191_0"@8477)
                global.automiss[self.i] = 1
                self.i = (self.i + 1)
                continue
            }
            break
        }
        scr_battletext_default()
    }
    if (self.actcon == 10)
        _temp_local_var_9 = (self.blowing == 0)
    else
        _temp_local_var_9 = 0
    if _temp_local_var_9
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        self.actcon = 1
    }
    if (self.actcon == 20)
        _temp_local_var_10 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_10 = 0
    if _temp_local_var_10
    {
        event_user(10)
        self.actcon = 1
    }
    if (self.actcon == 30)
        _temp_local_var_11 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_11 = 0
    if _temp_local_var_11
    {
        with(obj_rabbick_enemy)
        {
            event_user(10)
        }
        self.actcon = 1
    }
    if (self.actcon == 1)
        _temp_local_var_12 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_12 = 0
    if _temp_local_var_12
    {
        self.actcon = 0
        scr_attackphase()
    }
    if (self.blowing == 1)
    {
        if (self.blow_wait == 1)
            self.blowtimer = (self.blowtimer - 1)
        self.blowbuffer = (self.blowbuffer - 1)
        if (self.blowamt > 0)
            _temp_local_var_13 = (self.blowanimtimer <= 0)
        else
            _temp_local_var_13 = 0
        if _temp_local_var_13
            self.blowamt = (self.blowamt - 1)
        if (self.blowbuffer <= 0)
            _temp_local_var_14 = button1_p()
        else
            _temp_local_var_14 = 0
        if _temp_local_var_14
        {
            self.blow_wait = 1
            snd_stop(snd_whistlebreath)
            self.blowsnd = snd_play(snd_whistlebreath)
            snd_pitch(self.blowsnd, (1 + (self.blowamt / 100)))
            self.onoff = 0
            self.shakeamt = 5
            self.blowamt = (self.blowamt + 12)
            self.blowbuffer = 2
            self.blowanimtimer = 20
            _temp_local_var_15 = 6
            if (6 <= 0)
            {
            }
            else
            {
                while(true)
                {
                    event_user(2)
                    _temp_local_var_15 = (_temp_local_var_15 - 1)
                    if (_temp_local_var_15 - 1)
                        continue
                    break
                }
            }
        }
        if (self.blowtimer <= 0)
            self.blowing = 0
        if (self.blowamt >= 100)
        {
            if (self.blown == 0)
            {
                scr_mercyadd(self.myself, 100)
                self.blown = 1
                self.blowing = 0
                self.blowanimtimer = 0
                _temp_local_var_16 = 15
                if (15 <= 0)
                {
                }
                else
                {
                    while(true)
                    {
                        event_user(2)
                        _temp_local_var_16 = (_temp_local_var_16 - 1)
                        if (_temp_local_var_16 - 1)
                            continue
                        break
                    }
                }
            }
        }
        if (self.blowing == 0)
        {
        }
    }
}
