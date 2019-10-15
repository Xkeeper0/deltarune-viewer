if (self.con > 0)
    _temp_local_var_1 = (self.con < 50)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    if (self.con == 1)
        _temp_local_var_2 = (instance_exists(obj_dialoguer) == 0)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        with(self.t)
        {
            self.image_index = 0
            self.image_speed = 0.25
            self.vspeed = -2
            self.sprite_index = spr_toriel_u
        }
        self.alarm[4] = 20
        self.con = 2
    }
    if (self.con == 3)
    {
        with(self.t)
        {
            self.image_index = 0
            self.image_speed = 0
            self.vspeed = 0
        }
        self.alarm[4] = 10
        self.con = 4
    }
    if (self.con == 5)
    {
        with(self.t)
        {
            self.image_speed = 0.25
            self.sprite_index = spr_toriel_windowopen
        }
        self.alarm[4] = 10
        self.con = 6
        with(self.wallwindow)
        {
            self.image_index = 1
        }
        snd_play(snd_wing)
    }
    if (self.con == 7)
    {
        with(self.t)
        {
            self.image_speed = 0
        }
        self.con = 8
        self.alarm[4] = 20
    }
    if (self.con == 9)
    {
        with(self.t)
        {
            self.sprite_index = spr_toriel_d
            self.image_index = 0
            self.image_speed = 0.25
            self.vspeed = 2
        }
        self.alarm[4] = 20
        self.con = 10
    }
    if (self.con == 11)
    {
        with(self.t)
        {
            self.image_index = 0
            self.image_speed = 0
            self.vspeed = 0
        }
        self.alarm[4] = 20
        self.con = 12
    }
    if (self.con == 13)
    {
        with(self.t)
        {
            self.sprite_index = spr_toriel_rt
        }
        self.alarm[4] = 20
        self.con = 14
    }
    if (self.con == 15)
    {
        global.fe = 0
        with(self.t)
        {
            self.image_speed = 0.25
        }
        global.msg[0] = scr_84_get_lang_string("obj_krisroom_slash_Step_0_gml_92_0"@3987)
        self.d = instance_create(0, 0, obj_dialoguer)
        self.con = 20
    }
    if (self.con == 20)
        _temp_local_var_3 = (instance_exists(obj_dialoguer) == 0)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
    {
        with(self.t)
        {
            self.image_index = 0
            self.sprite_index = spr_toriel_d
            self.image_speed = 0.25
            self.vspeed = 3
        }
        self.alarm[4] = 90
        self.con = 21
    }
    if (self.con == 22)
    {
        snd_play(snd_wing)
        self.image_index = 1
        self.alarm[4] = 40
        self.con = 23
    }
    if (self.con == 24)
    {
        with(obj_mainchara)
        {
            self.fun = 1
            self.image_speed = 0.25
            self.sprite_index = spr_krisl
            self.hspeed = -1
        }
        self.alarm[4] = 40
        if button2_h()
        {
            with(obj_mainchara)
            {
                self.fun = 1
                self.image_speed = 0.25
                self.sprite_index = spr_krisl
                self.hspeed = -4
            }
            self.alarm[4] = 10
        }
        self.con = 25
    }
    if (self.con == 26)
    {
        global.facing = 3
        with(obj_mainchara)
        {
            self.image_index = 0
            self.hspeed = 0
            self.image_speed = 0
            self.fun = 0
        }
        self.con = 27
        self.alarm[4] = 20
        if button2_h()
            self.alarm[4] = 5
    }
    if (self.con == 28)
    {
        global.facing = 0
        with(obj_mainchara)
        {
            self.image_index = 0
            self.hspeed = 0
            self.sprite_index = spr_krisd
            self.image_speed = 0
            self.fun = 0
        }
        scr_depth()
        self.con = 30
        global.interact = 0
        scr_tempsave()
        if (global.plot < 1)
            global.plot = 1
    }
}
if (self.con >= 50)
    _temp_local_var_4 = (self.con < 100)
else
    _temp_local_var_4 = 0
if _temp_local_var_4
{
    global.interact = 1
    global.facing = 1
    if (self.con == 50)
        _temp_local_var_5 = (~ d_ex())
    else
        _temp_local_var_5 = 0
    if _temp_local_var_5
    {
        self._remfilechoice = global.filechoice
        global.filechoice = (global.filechoice + 3)
        scr_save()
        global.filechoice = self._remfilechoice
        mus_volume(global.currentsong[1], 0, 100)
        self.fade = instance_create(0, 0, obj_fadeout)
        with(self.fade)
        {
            self.fadespeed = 0.01
        }
        self.con = 51
        self.alarm[4] = 100
    }
    if (self.con == 52)
    {
        snd_free_all()
        self.con = 53
        self.alarm[4] = 150
    }
    if (self.con == 54)
    {
        scr_windowcaption(" "@24)
        room_goto(room_myroom_dark)
    }
}
if (self.con >= 100)
    _temp_local_var_6 = (self.con < 150)
else
    _temp_local_var_6 = 0
if _temp_local_var_6
{
    global.interact = 1
    global.facing = 1
    if (self.con == 100)
        _temp_local_var_7 = (~ d_ex())
    else
        _temp_local_var_7 = 0
    if _temp_local_var_7
    {
        mus_volume(global.currentsong[1], 0, 50)
        self.fade = instance_create(0, 0, obj_fadeout)
        with(self.fade)
        {
            self.fadespeed = 0.02
            self.depth = 10000
        }
        self.con = 101
        self.alarm[4] = 50
    }
    if (self.con == 102)
    {
        snd_free_all()
        self.con = 103
        self.alarm[4] = 50
    }
    if (self.con == 104)
    {
        scr_windowcaption(" "@24)
        global.typer = 5
        global.fc = 0
        global.msg[0] = scr_84_get_lang_string("obj_krisroom_slash_Step_0_gml_281_0"@3991)
        instance_create(0, 0, obj_dialoguer)
        self.con = 105
    }
    if (self.con == 105)
        _temp_local_var_8 = (~ d_ex())
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
    {
        instance_create(0, 0, obj_persistentfadein)
        scr_windowcaption(scr_84_get_lang_string("obj_krisroom_slash_Step_0_gml_289_0"@3992))
        global.plot = 10
        scr_become_dark()
        room_goto(room_dark1)
    }
}
