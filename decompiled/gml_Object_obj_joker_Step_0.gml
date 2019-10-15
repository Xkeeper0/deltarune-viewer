if (global.monster[self.myself] == 1)
{
    global.flag[(51 + self.myself)] = 4
    if (global.mnfight == 1)
        _temp_local_var_1 = (self.talked == 0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        if (self.pirouette != 2)
            global.invc = self.reminvc
        self.mhpratio = (global.monsterhp[self.myself] / global.monstermaxhp[self.myself])
        if (self.mhpratio <= 0.8)
            _temp_local_var_2 = (self.jturn == 4)
        else
            _temp_local_var_2 = 0
        if _temp_local_var_2
        {
            self.jturn = 5
            with(self.body)
            {
                self.dancelv = 1
            }
        }
        if (self.mhpratio <= 0.6)
            _temp_local_var_3 = (self.jturn == 9)
        else
            _temp_local_var_3 = 0
        if _temp_local_var_3
            self.jturn = 10
        if (self.mhpratio <= 0.4)
            _temp_local_var_4 = (self.jturn == 14)
        else
            _temp_local_var_4 = 0
        if _temp_local_var_4
        {
            self.jturn = 15
            with(self.body)
            {
                self.dancelv = 3
            }
        }
        if (self.mhpratio <= 0.15)
            _temp_local_var_5 = (self.jturn < 17)
        else
            _temp_local_var_5 = 0
        if _temp_local_var_5
        {
            self.jturn = 17
            with(self.body)
            {
                self.dancelv = 2
            }
        }
        if (self.jturn >= 18)
        {
            with(self.body)
            {
                self.dancelv = 3
            }
        }
        if (self.hypnosiscounter >= 2)
            _temp_local_var_6 = (self.jturn == 4)
        else
            _temp_local_var_6 = 0
        if _temp_local_var_6
        {
            if (self.turns >= (5 - self.hypnosiscounter))
            {
                self.jturn = 5
                with(self.body)
                {
                    self.dancelv = 1
                }
            }
        }
        if (self.hypnosiscounter >= 4)
            _temp_local_var_7 = (self.jturn == 9)
        else
            _temp_local_var_7 = 0
        if _temp_local_var_7
        {
            if (self.turns >= (11 - self.hypnosiscounter))
            {
                self.jturn = 10
                with(self.body)
                {
                    self.dancelv = 1
                }
            }
        }
        if (self.hypnosiscounter >= 6)
            _temp_local_var_8 = (self.jturn == 14)
        else
            _temp_local_var_8 = 0
        if _temp_local_var_8
        {
            if (self.turns >= (17 - self.hypnosiscounter))
            {
                self.jturn = 15
                with(self.body)
                {
                    self.dancelv = 1
                }
            }
        }
        if (self.jturn >= 19)
        {
            if (self.turns >= (29 - self.hypnosiscounter))
            {
                self.tired = 1
                global.monsterstatus[self.myself] = 1
                with(self.body)
                {
                    self.dancelv = 2
                }
            }
        }
        if (~ instance_exists(obj_darkener))
            instance_create(0, 0, obj_darkener)
        global.typer = 50
        if (self.jturn == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_35_0"@8866)
            snd_play(scr_84_get_sound("snd_joker_chaos"@3396))
        }
        if (self.jturn == 1)
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_36_0"@8867)
        if (self.jturn == 2)
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_37_0"@8868)
        if (self.jturn == 3)
        {
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_38_0"@8869)
            with(self.body)
            {
                self.condition = 5
            }
        }
        if (self.jturn == 5)
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_39_0"@8870)
        if (self.jturn == 6)
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_40_0"@8871)
        if (self.jturn == 7)
        {
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_41_0"@8872)
            snd_play(scr_84_get_sound("snd_joker_anything"@3395))
        }
        if (self.jturn == 8)
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_42_0"@8873)
        if (self.jturn == 10)
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_43_0"@8874)
        if (self.jturn == 11)
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_44_0"@8875)
        if (self.jturn == 12)
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_45_0"@8876)
        if (self.jturn == 13)
        {
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_46_0"@8877)
            with(self.body)
            {
                self.condition = 5
            }
        }
        if (self.jturn == 15)
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_47_0"@8878)
        if (self.jturn == 16)
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_48_0"@8879)
        if (self.jturn == 17)
        {
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_49_0"@8880)
            with(self.body)
            {
                self.dancelv = 2
            }
        }
        if (self.jturn == 18)
        {
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_50_0"@8881)
            with(self.body)
            {
                self.condition = 5
            }
        }
        if (self.jturn == 4)
            _temp_local_var_9 = 1
        else
        {
            if (self.jturn == 9)
                _temp_local_var_9 = 1
            else
            {
                if (self.jturn == 14)
                    _temp_local_var_9 = 1
                else
                    _temp_local_var_9 = (self.jturn == 19)
            }
        }
        if _temp_local_var_9
        {
            self.rr = choose(0, 1, 2, 3)
            if (self.rr == 0)
            {
                global.msg[0] = choose(scr_84_get_lang_string("obj_joker_slash_Step_0_gml_56_0"@8883), scr_84_get_lang_string("obj_joker_slash_Step_0_gml_56_1"@8882))
                snd_play(scr_84_get_sound("snd_joker_chaos"@3396))
            }
            if (self.rr == 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_57_0"@8884)
                snd_play(scr_84_get_sound("snd_joker_anything"@3395))
            }
            if (self.rr == 2)
                global.msg[0] = choose(scr_84_get_lang_string("obj_joker_slash_Step_0_gml_58_0"@8886), scr_84_get_lang_string("obj_joker_slash_Step_0_gml_58_1"@8885))
            if (self.rr == 3)
                global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_59_0"@8887)
        }
        scr_enemyblcon((self.x - 160), (self.y - 20), 3)
        self.talked = 1
        self.talktimer = 0
        if (self.jturn >= 19)
        {
            if (global.monsterdf[self.myself] > -10)
                global.monsterdf[self.myself] = (global.monsterdf[self.myself] - 3)
            if (global.monsterat[self.myself] < 11)
                global.monsterat[self.myself] = (global.monsterat[self.myself] + 0.5)
            self.jattack = choose(0, 4, 7, 8, 10, 11, 12, 13, 13, 13)
        }
        if (self.jturn >= 15)
            _temp_local_var_10 = (self.jturn <= 18)
        else
            _temp_local_var_10 = 0
        if _temp_local_var_10
        {
            self.jattack = (self.jturn - 3)
            self.jturn = (self.jturn + 1)
        }
        if (self.jturn == 14)
            self.jattack = choose(8, 9, 10, 11)
        if (self.jturn >= 10)
            _temp_local_var_11 = (self.jturn <= 13)
        else
            _temp_local_var_11 = 0
        if _temp_local_var_11
        {
            self.jattack = (self.jturn - 2)
            self.jturn = (self.jturn + 1)
        }
        if (self.jturn == 9)
            self.jattack = choose(4, 5, 6, 7)
        if (self.jturn >= 5)
            _temp_local_var_12 = (self.jturn <= 8)
        else
            _temp_local_var_12 = 0
        if _temp_local_var_12
        {
            self.jattack = (self.jturn - 1)
            self.jturn = (self.jturn + 1)
        }
        if (self.jturn == 4)
            self.jattack = choose(0, 1, 2, 3)
        if (self.jturn <= 3)
        {
            self.jattack = self.jturn
            self.jturn = (self.jturn + 1)
        }
        if (self.jattack == 2)
            _temp_local_var_13 = 1
        else
        {
            if (self.jattack == 5)
                _temp_local_var_13 = 1
            else
            {
                if (self.jattack == 9)
                    _temp_local_var_13 = 1
                else
                {
                    if (self.jattack == 13)
                        _temp_local_var_13 = 1
                    else
                        _temp_local_var_13 = (self.jattack == 15)
                }
            }
        }
        if _temp_local_var_13
            scr_targetall()
        else
            scr_randomtarget()
    }
    if (self.talked == 1)
        _temp_local_var_14 = (global.mnfight == 1)
    else
        _temp_local_var_14 = 0
    if _temp_local_var_14
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
        _temp_local_var_15 = (self.attacked == 0)
    else
        _temp_local_var_15 = 0
    if _temp_local_var_15
    {
        self.rtimer = (self.rtimer + 1)
        if (self.rtimer == 12)
        {
            global.turntimer = 240
            event_user(5)
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0, 1, 2, 3, 4)
            if (self.rr == 0)
                global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_158_0"@8888)
            if (self.rr == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_159_0"@8889)
            if (self.rr == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_160_0"@8890)
            if (self.rr == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_161_0"@8891)
            if (self.rr == 4)
                global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_162_0"@8892)
            if (self.body.dancelv == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_163_0"@8893)
            if (self.jturn == 16)
                global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_164_0"@8894)
            if (self.jturn == 18)
                global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_165_0"@8895)
            if (self.jturn >= 19)
                global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_166_0"@8896)
            if (global.monsterstatus[self.myself] == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_167_0"@8897)
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
if (self.con == 1)
{
    self.con = 2
    self.alarm[4] = 10
}
if (self.con == 3)
{
    global.typer = 50
    global.mercymod[self.myself] = 999
    global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_201_0"@8898)
    scr_enemyblcon((self.x - 160), self.y, 3)
    self.con = 4
}
if (self.con == 4)
    _temp_local_var_16 = (~ instance_exists(obj_writer))
else
    _temp_local_var_16 = 0
if _temp_local_var_16
{
    self.hspeed = 15
    self.con = 5
    self.alarm[4] = 15
    with(obj_battlecontroller)
    {
        self.alarm[2] = 17
    }
}
if (self.con == 6)
{
    with(obj_battlecontroller)
    {
        self.noreturn = 0
    }
    scr_monsterdefeat()
    instance_destroy()
    self.con = 7
}
if (global.myfight == 3)
{
    self.xx = __view_get(e__VW.XView, 0)
    self.yy = __view_get(e__VW.YView, 0)
    if (self.acting == 1)
        _temp_local_var_17 = (self.actcon == 0)
    else
        _temp_local_var_17 = 0
    if _temp_local_var_17
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_237_0"@8899)
        scr_battletext_default()
    }
    if (self.acting == 2)
        _temp_local_var_18 = (self.actcon == 0)
    else
        _temp_local_var_18 = 0
    if _temp_local_var_18
    {
        self.actcon = 5
        global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_247_0"@8900)
        snd_play(snd_pirouette)
        with(obj_herokris)
        {
            self.visible = 0
        }
        self.dancekris = scr_dark_marker(obj_herokris.x, obj_herokris.y, spr_krisb_pirouette)
        with(self.dancekris)
        {
            self.image_speed = 0.3334
            self.depth = obj_herokris.depth
        }
        self.fx = instance_create((self.dancekris.x + 28), (self.dancekris.y + 40), obj_afterimage_grow)
        self.fx.sprite_index = spr_pirouette_fx
        self.fx.image_xscale = 2
        self.fx.image_yscale = 2
        scr_battletext_default()
    }
    if (self.actcon == 5)
        _temp_local_var_19 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_19 = 0
    if _temp_local_var_19
    {
        with(self.dancekris)
        {
            instance_destroy()
        }
        with(obj_herokris)
        {
            self.visible = 1
        }
        global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_272_0"@8903)
        if (self.chaosdance == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_276_0"@8904)
            self.ch = choose(0, 1, 2)
            if (self.ch == 0)
                snd_play(snd_badexplosion)
            if (self.ch == 1)
                snd_play(snd_carhonk)
            if (self.ch == 2)
                snd_play(snd_toilet)
        }
        if (self.chaosdance == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_284_0"@8905)
            if (global.monsterdf[self.myself] >= -16)
                global.monsterdf[self.myself] = (global.monsterdf[self.myself] - 4)
            snd_play(snd_weirdeffect)
        }
        if (self.chaosdance == 2)
        {
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_290_0"@8906)
            snd_play(snd_awkward)
            global.invc = 0.4
        }
        if (self.chaosdance == 3)
        {
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_296_0"@8907)
            self.pfactor = 0.7
            snd_play(snd_shadowpendant)
        }
        if (self.chaosdance == 4)
        {
            with(obj_marker)
            {
                if (self.sprite_index == spr_uselessbird)
                    instance_destroy()
            }
            self.bird = scr_dark_marker((__view_get(e__VW.XView, 0) - 40), (__view_get(e__VW.YView, 0) + 60), spr_uselessbird)
            with(self.bird)
            {
                self.hspeed = 12
                self.image_speed = 0.334
            }
            snd_play(snd_birdtweet)
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_310_0"@8909)
        }
        if (self.chaosdance == 5)
        {
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_314_0"@8910)
            self.star = choose(0, 1, 2)
            scr_healitemspell(floor((random(31) + 25)))
        }
        if (self.chaosdance == 6)
        {
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_320_0"@8911)
            self.swap1 = 1
            self.swap2 = 1
            self.swap1 = choose(2, 3)
            if (self.swap1 == 2)
                self.swap2 = 3
            if (self.swap1 == 3)
                self.swap2 = 2
            self.i = 0
            while(true)
            {
                if (self.i < 4)
                {
                    self.remhp[self.i] = global.hp[self.i]
                    self.curmaxhp[self.i] = global.maxhp[self.i]
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
            global.maxhp[1] = self.curmaxhp[self.swap1]
            global.maxhp[self.swap1] = self.curmaxhp[self.swap2]
            global.maxhp[self.swap2] = self.curmaxhp[1]
            global.hp[1] = self.remhp[self.swap1]
            global.hp[self.swap1] = self.remhp[self.swap2]
            global.hp[self.swap2] = self.remhp[1]
            self.remhpcolor[0] = obj_battlecontroller.hpcolor[0]
            self.remhpcolor[1] = obj_battlecontroller.hpcolor[1]
            self.remhpcolor[2] = obj_battlecontroller.hpcolor[2]
            obj_battlecontroller.hpcolor[0] = self.remhpcolor[(self.swap1 - 1)]
            obj_battlecontroller.hpcolor[(self.swap1 - 1)] = self.remhpcolor[(self.swap2 - 1)]
            obj_battlecontroller.hpcolor[(self.swap2 - 1)] = self.remhpcolor[0]
            self.i = 1
            while(true)
            {
                if (self.i <= 3)
                {
                    if (global.hp[self.i] < 1)
                    {
                        global.hp[1] = (global.hp[1] + floor((global.hp[self.i] / 3)))
                        global.hp[2] = (global.hp[2] + floor((global.hp[self.i] / 3)))
                        global.hp[3] = (global.hp[3] + floor((global.hp[self.i] / 3)))
                        global.hp[self.i] = 1
                    }
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
            scr_revive(0)
            scr_revive(1)
            scr_revive(2)
            snd_play(snd_weirdeffect)
        }
        if (self.chaosdance == 7)
        {
            snd_play(snd_boost)
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_373_0"@8916)
            self.pfactor = 1.25
        }
        if (self.chaosdance == 8)
        {
            snd_play(snd_applause)
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_379_0"@8917)
            scr_healallitemspell((20 + floor(random(21))))
        }
        scr_battletext_default()
        self.hypnosiscounter = (self.hypnosiscounter + 0.5)
        if (self.hypnosiscounter >= 9)
        {
            self.txtpart3 = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_387_0"@8918)
            global.monsterstatus[self.myself] = 1
        }
        self.pirouette = self.chaosdance
        self.pirouettecounter = (self.pirouettecounter + 1)
        self.actcon = 1
    }
    if (self.acting == 3)
        _temp_local_var_20 = (self.actcon == 0)
    else
        _temp_local_var_20 = 0
    if _temp_local_var_20
    {
        if (global.monsterat[self.myself] > 10)
            global.monsterat[self.myself] = (global.monsterat[self.myself] - 0.5)
        self.hypnofx = instance_create(global.monsterx[self.myself], global.monstery[self.myself], obj_hypnofx)
        snd_play(snd_hypnosis)
        self.actcon = 1
        self.aaa = choose(0, 1, 2)
        if (self.aaa == 0)
            self.txtpart1 = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_400_0"@8922)
        if (self.aaa == 1)
            self.txtpart1 = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_401_0"@8924)
        if (self.aaa == 2)
            self.txtpart1 = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_402_0"@8925)
        self.txtpart2 = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_403_0"@8926)
        self.txtpart3 = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_404_0"@8928)
        if (self.hypnosiscounter == 0)
            self.txtpart3 = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_405_0"@8929)
        if (self.hypnosiscounter >= 9)
        {
            self.txtpart3 = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_406_0"@8930)
            global.monsterstatus[self.myself] = 1
        }
        global.msg[0] = (((self.txtpart1 + self.txtpart2) + self.txtpart3) + scr_84_get_lang_string("obj_joker_slash_Step_0_gml_407_0"@8931))
        self.pfactor = 0.7
        self.hypnosis = 1
        self.hypnosiscounter = (self.hypnosiscounter + 1)
        scr_battletext_default()
    }
    if (self.actcon == 1)
        _temp_local_var_21 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_21 = 0
    if _temp_local_var_21
    {
        self.actcon = 0
        scr_attackphase()
    }
}
if (global.myfight == 7)
    self.hspeed = 15
self.beepbuffer = (self.beepbuffer - 1)
if (self.beepnoise == 4)
    _temp_local_var_22 = (self.beepbuffer < 0)
else
    _temp_local_var_22 = 0
if _temp_local_var_22
{
    snd_stop(snd_bombfall)
    snd_play(snd_bombfall)
    self.beepnoise = 0
    self.beepbuffer = 5
}
if (self.burstnoise == 1)
{
    snd_stop(snd_bomb)
    snd_play(snd_bomb)
    self.burstnoise = 0
}
