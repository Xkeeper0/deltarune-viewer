if (self.room == room_field2)
{
    if (obj_mainchara.x >= self.x)
    {
        if (global.interact == 0)
            _temp_local_var_1 = (self.con == 0)
        else
            _temp_local_var_1 = 0
    }
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        global.fc = 5
        global.typer = 32
        global.interact = 1
        if (global.flag[210] == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_11_0"@6460)
            scr_ralface(1, "B"@2529)
            global.msg[2] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_13_0"@6461)
            scr_lanface(3, 3)
            global.msg[4] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_15_0"@6462)
        }
        else
        {
            global.fe = 6
            global.msg[0] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_20_0"@6463)
            scr_ralface(1, "B"@2529)
            global.msg[2] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_22_0"@6464)
            scr_lanface(3, 2)
            global.msg[4] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_24_0"@6465)
            global.flag[210] = 2
        }
        if (global.plot < 34)
            global.plot = 34
        self.con = 1
        instance_create(0, 0, obj_dialoguer)
    }
    if (self.con == 1)
        _temp_local_var_2 = (d_ex() == 0)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        global.interact = 0
        instance_destroy()
    }
}
if (self.room == room_field2A)
    _temp_local_var_3 = 1
else
    _temp_local_var_3 = (self.room == room_field_puzzle1)
if _temp_local_var_3
{
    if instance_exists(self.candytree)
    {
        self.siner = (self.siner + 1)
        self.candytree.image_alpha = (0.7 + (sin((self.siner / 8)) * 0.3))
        self.candytree.image_index = global.flag[self.candyflag]
        if (global.flag[self.candyflag] >= 2)
        {
            with(self.candytree)
            {
                instance_destroy()
            }
            instance_destroy()
        }
    }
}
if (self.room == room_krishallway)
    event_user(3)
if (self.room == room_town_krisyard)
    event_user(3)
if (self.room == room_torhouse)
{
    self.timer = (self.timer + 1)
    event_user(3)
    if (self.timer >= 5)
    {
        if (global.interact == 0)
        {
            if (self.con == 0)
                _temp_local_var_4 = (self.rem_facing == 3)
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
        if (global.flag[277] == 7)
        {
            global.typer = 7
            global.fc = 4
            global.fe = 0
            global.flag[277] = (global.flag[277] + 1)
            global.interact = 1
            self.con = 1
            global.msg[0] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_71_0"@6466)
            global.msg[1] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_72_0"@6467)
            instance_create(0, 0, obj_dialoguer)
        }
        if (global.flag[277] >= 2)
            _temp_local_var_5 = (global.flag[277] <= 6)
        else
            _temp_local_var_5 = 0
        if _temp_local_var_5
        {
            global.flag[277] = (global.flag[277] + 1)
            self.con = 2
        }
        if (global.flag[277] == 1)
        {
            global.typer = 7
            global.fc = 4
            global.fe = 0
            global.flag[277] = (global.flag[277] + 1)
            global.interact = 1
            self.con = 1
            global.msg[0] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_91_0"@6468)
            global.msg[1] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_92_0"@6469)
            global.msg[2] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_93_0"@6470)
            instance_create(0, 0, obj_dialoguer)
        }
        if (global.flag[277] == 0)
        {
            global.typer = 7
            global.fc = 4
            global.fe = 0
            global.flag[277] = (global.flag[277] + 1)
            global.interact = 1
            self.con = 1
            global.msg[0] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_106_0"@6471)
            global.msg[1] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_107_0"@6472)
            global.msg[2] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_108_0"@6473)
            global.msg[3] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_109_0"@6474)
            global.msg[4] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_110_0"@6475)
            instance_create(0, 0, obj_dialoguer)
        }
    }
    if (self.con == 1)
        _temp_local_var_6 = (~ d_ex())
    else
        _temp_local_var_6 = 0
    if _temp_local_var_6
    {
        self.con = 2
        global.interact = 0
    }
}
if (self.room == room_cc_prison_prejoker)
{
    self.m = ((obj_mainchara.x - 200) / 1400)
    if (self.m < 0.2)
        self.m = 0.2
    if (self.m < self.maxm)
        self.m = self.maxm
    if (self.m >= 0.8)
        self.m = 0.8
    self.maxm = self.m
    mus_volume(global.currentsong[1], self.m, 0)
    if (self.con == 5)
        _temp_local_var_7 = (~ d_ex())
    else
        _temp_local_var_7 = 0
    if _temp_local_var_7
    {
        self.doorimg2 = scr_dark_marker(self.doorimg.x, self.doorimg.y, spr_jokerdoor)
        with(self.doorimg2)
        {
            self.depth = 400000
            self.image_alpha = 0
            self.image_index = 1
        }
        self.con = 6
        self.timer = 0
        snd_play(snd_magicsprinkle)
    }
    if (self.con == 6)
    {
        global.interact = 1
        with(self.doorimg2)
        {
            self.image_alpha = (self.image_alpha + 0.03)
        }
        self.timer = (self.timer + 1)
        if (self.timer >= 80)
            self.con = 7
    }
    if (self.con == 7)
    {
        self.timer = 0
        global.typer = 6
        global.fc = 0
        global.msg[0] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_163_0"@6477)
        instance_create(0, 0, obj_dialoguer)
        self.con = 8
    }
    if (self.con == 8)
        _temp_local_var_8 = (~ d_ex())
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
    {
        with(self.doorimg)
        {
            self.image_index = 2
        }
        with(self.doorimg2)
        {
            instance_destroy()
        }
        instance_create(0, 0, obj_shake)
        snd_play(snd_dooropen)
        snd_play(snd_locker)
        self.con = 9
        self.alarm[4] = 60
    }
    if (self.con == 10)
    {
        with(self.doorsolid)
        {
            instance_destroy()
        }
        with(self.doorevent)
        {
            instance_destroy()
        }
        self.door_door = instance_create((self.x + 15), self.y, obj_doorA)
        global.interact = 0
        self.con = 11
    }
    if (self.con == 20)
        _temp_local_var_9 = (~ d_ex())
    else
        _temp_local_var_9 = 0
    if _temp_local_var_9
    {
        snd_play(snd_creepyjingle)
        self.con = 21
    }
}
if (self.room == room_cc_prefountain)
{
    self.timer = (self.timer + 1)
    if (global.flag[248] == 1)
    {
        if (obj_mainchara.x <= 30)
        {
            if (global.interact == 0)
                _temp_local_var_10 = (self.con == 0)
            else
                _temp_local_var_10 = 0
        }
        else
            _temp_local_var_10 = 0
        if _temp_local_var_10
        {
            self.con = 1
            global.facing = 1
            global.interact = 1
            global.typer = 30
            obj_mainchara.x = 32
            global.fc = 1
            global.fe = 0
            global.msg[0] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_212_0"@6478)
            global.msg[1] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_213_0"@6479)
            if (self.talked >= 1)
                _temp_local_var_11 = (self.timer >= 900)
            else
                _temp_local_var_11 = 0
            if _temp_local_var_11
            {
                global.fe = 3
                global.msg[0] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_217_0"@6480)
            }
            instance_create(0, 0, obj_dialoguer)
        }
        if (self.con == 1)
            _temp_local_var_12 = (~ d_ex())
        else
            _temp_local_var_12 = 0
        if _temp_local_var_12
        {
            global.interact = 0
            self.con = 0
            self.talked = (self.talked + 1)
        }
    }
    if (global.flag[248] == 0)
    {
        if (global.plot < 244)
        {
            if (obj_mainchara.x <= 30)
            {
                if (global.interact == 0)
                {
                    if (self.con == 0)
                        _temp_local_var_13 = (global.plot <= 240)
                    else
                        _temp_local_var_13 = 0
                }
                else
                    _temp_local_var_13 = 0
            }
            else
                _temp_local_var_13 = 0
            if _temp_local_var_13
            {
                self.con = 1
                global.facing = 1
                global.interact = 1
                global.typer = 30
                global.fc = 1
                global.fe = 0
                global.msg[0] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_248_0"@6481)
                global.msg[1] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_249_0"@6482)
                global.msg[2] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_250_0"@6483)
                global.msg[3] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_251_0"@6484)
                global.msg[4] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_252_0"@6485)
                global.msg[5] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_253_0"@6486)
                global.msg[6] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_254_0"@6487)
                instance_create(0, 0, obj_dialoguer)
                global.plot = 241
            }
            if (obj_mainchara.y <= 280)
            {
                if (global.interact == 0)
                    _temp_local_var_14 = (self.con == 0)
                else
                    _temp_local_var_14 = 0
            }
            else
                _temp_local_var_14 = 0
            if _temp_local_var_14
            {
                self.con = 1
                global.facing = 0
                global.interact = 1
                global.typer = 30
                obj_mainchara.y = 282
                global.fc = 1
                global.fe = 0
                if (global.plot >= 241)
                {
                    global.fe = 2
                    global.msg[0] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_272_0"@6488)
                }
                else
                {
                    global.msc = 445
                    scr_text(global.msc)
                }
                instance_create(0, 0, obj_dialoguer)
                if (global.plot <= 240)
                    global.plot = 241
            }
            if (self.con == 1)
                _temp_local_var_15 = (~ d_ex())
            else
                _temp_local_var_15 = 0
            if _temp_local_var_15
            {
                global.interact = 0
                self.con = 0
                self.talked = (self.talked + 1)
            }
        }
        if (global.plot >= 244)
        {
            if (obj_mainchara.x <= 30)
            {
                if (global.interact == 0)
                    _temp_local_var_16 = (self.con == 0)
                else
                    _temp_local_var_16 = 0
            }
            else
                _temp_local_var_16 = 0
            if _temp_local_var_16
            {
                self.con = 1
                global.facing = 1
                global.interact = 1
                global.typer = 30
                obj_mainchara.x = 32
                global.fc = 1
                global.fe = 0
                global.msg[0] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_307_0"@6489)
                global.msg[1] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_308_0"@6490)
                instance_create(0, 0, obj_dialoguer)
            }
            if (self.con == 1)
                _temp_local_var_17 = (~ d_ex())
            else
                _temp_local_var_17 = 0
            if _temp_local_var_17
            {
                global.interact = 0
                self.con = 0
                self.talked = (self.talked + 1)
            }
        }
    }
}
if (self.room == room_forest_savepoint3)
{
    if (self.con == 10)
    {
        snd_free_all()
        self.con = 10.5
        snd_play(snd_hurt1)
    }
    if (self.con == 11.5)
    {
        self.ll = snd_play(snd_lancerlaugh)
        self.sl = snd_play(snd_suslaugh)
        snd_volume(self.ll, 0.8, 0)
        snd_volume(self.sl, 0.8, 0)
        self.con = 12
        self.alarm[4] = 60
    }
    if (self.con == 13)
    {
        instance_create(0, 0, obj_fadein)
        with(self.blackmarker)
        {
            instance_destroy()
        }
        global.interact = 0
        self.con = 13
        instance_destroy()
    }
}
if (self.room == room_field_secret1)
{
    if (self.pcon == 0)
        _temp_local_var_18 = (global.interact == 0)
    else
        _temp_local_var_18 = 0
    if _temp_local_var_18
    {
        if (self.puzzle.won == 1)
            _temp_local_var_19 = (self.pcon == 0)
        else
            _temp_local_var_19 = 0
        if _temp_local_var_19
        {
            with(self.spike_solid)
            {
                instance_destroy()
            }
            global.interact = 1
            self.pcon = 1
            with(self.spikee[0])
            {
                self.image_index = 1
            }
            with(self.spikee[1])
            {
                self.image_index = 1
            }
        }
    }
    if (self.pcon == 1)
    {
        self.ptimer = 0
        snd_play(snd_screenshake)
        instance_create(0, 0, obj_shake)
        self.pcon = 2
    }
    if (self.pcon == 2)
    {
        self.ptimer = (self.ptimer + 1)
        if (self.ptimer >= 20)
        {
            self.ptimer = 0
            self.pcon = 3
            global.interact = 0
        }
    }
}
if (self.room == room_forest_beforeclover)
{
    if (self.pcon == 0)
        _temp_local_var_20 = (global.interact == 0)
    else
        _temp_local_var_20 = 0
    if _temp_local_var_20
    {
        if (self.puzzle.won == 1)
        {
            if (self.pcon == 0)
                _temp_local_var_21 = (global.flag[290] == 0)
            else
                _temp_local_var_21 = 0
        }
        else
            _temp_local_var_21 = 0
        if _temp_local_var_21
        {
            with(self.spike_solid)
            {
                instance_destroy()
            }
            global.interact = 1
            self.pcon = 1
            with(self.spikee[0])
            {
                self.image_index = 1
            }
            with(self.spikee[1])
            {
                self.image_index = 1
            }
        }
    }
    if (self.pcon == 1)
    {
        self.ptimer = 0
        snd_play(snd_screenshake)
        instance_create(0, 0, obj_shake)
        self.pcon = 2
    }
    if (self.pcon == 2)
    {
        self.ptimer = (self.ptimer + 1)
        if (self.ptimer >= 20)
        {
            global.flag[290] = 1
            self.ptimer = 0
            self.pcon = 3
            global.interact = 0
        }
    }
}
if (self.room == room_forest_savepoint_relax)
{
    if (obj_mainchara.y <= 40)
    {
        if (global.plot < 85)
        {
            if (global.interact == 0)
                _temp_local_var_22 = (self.con == 1)
            else
                _temp_local_var_22 = 0
        }
        else
            _temp_local_var_22 = 0
    }
    else
        _temp_local_var_22 = 0
    if _temp_local_var_22
    {
        global.interact = 1
        global.typer = 32
        global.fe = 2
        global.fc = 5
        global.msg[0] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_437_0"@6491)
        scr_susface(1, 1)
        global.msg[2] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_439_0"@6492)
        global.msg[3] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_440_0"@6493)
        scr_lanface(4, 3)
        global.msg[5] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_442_0"@6494)
        self.con = 2
        d_make()
    }
    if (self.con == 2)
        _temp_local_var_23 = (~ d_ex())
    else
        _temp_local_var_23 = 0
    if _temp_local_var_23
    {
        global.plot = 85
        global.interact = 0
        self.con = 3
    }
}
if (self.room == room_forest_maze_susie)
{
    if (self.con == 1)
    {
        if (obj_mainchara.y <= (self.y + 120))
            _temp_local_var_24 = (global.interact == 0)
        else
            _temp_local_var_24 = 0
    }
    else
        _temp_local_var_24 = 0
    if _temp_local_var_24
    {
        global.fc = 1
        global.fe = 2
        global.typer = 30
        global.msg[0] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_461_0"@6495)
        global.msg[1] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_462_0"@6496)
        scr_ralface(2, 8)
        global.msg[3] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_464_0"@6497)
        scr_susface(4, 9)
        global.msg[5] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_466_0"@6498)
        global.msg[6] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_467_0"@6499)
        global.msg[7] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_468_0"@6500)
        scr_lanface(8, 3)
        global.msg[9] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_470_0"@6501)
        scr_ralface(10, 1)
        global.msg[11] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_472_0"@6502)
        scr_susface(12, 6)
        global.msg[13] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_474_0"@6503)
        global.msg[14] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_475_0"@6504)
        global.msg[15] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_476_0"@6505)
        if (global.plot < 100)
            global.plot = 100
        global.interact = 1
        self.con = 2
        d_make()
    }
    if (self.con == 2)
        _temp_local_var_25 = (~ d_ex())
    else
        _temp_local_var_25 = 0
    if _temp_local_var_25
    {
        self.sprite_index = spr_susieu_dark
        self.vspeed = -10
        self.image_speed = 0.25
        self.con = 3
        self.alarm[4] = 30
    }
    if (self.con == 4)
    {
        global.fc = 2
        global.fe = 6
        global.typer = 31
        global.msg[0] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_497_0"@6506)
        d_make()
        self.con = 5
    }
    if (self.con == 5)
        _temp_local_var_26 = (~ d_ex())
    else
        _temp_local_var_26 = 0
    if _temp_local_var_26
    {
        global.interact = 0
        global.facing = 0
        self.con = 6
    }
}
