if (self.myinteract == 3)
{
}
if (self.myinteract == 3)
    _temp_local_var_1 = (self.con == 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    if (instance_exists(self.mydialoguer) == 0)
    {
        self.sprite_index = spr_hammerguy
        self.image_speed = 0.1
        global.interact = 0
        self.myinteract = 0
        with(obj_mainchara)
        {
            self.onebuffer = 5
        }
    }
}
if (self.con >= 5)
{
    if (self.con == 10)
        _temp_local_var_2 = 1
    else
    {
        if (self.con == 30)
            _temp_local_var_2 = 1
        else
            _temp_local_var_2 = (self.con == 50)
    }
    if _temp_local_var_2
    {
        if (~ d_ex())
        {
            snd_pause(global.currentsong[1])
            self.sprite_index = spr_hammerguy_powerup
            self.image_index = 0
            self.image_speed = 0.5
            snd_play(snd_noise)
            self.con = (self.con + 1)
            self.alarm[4] = 30
            self.charcycle = 0
            self.charamt = 0
            if (global.char[1] > 0)
                self.charamt = 1
            if (global.char[2] > 0)
                self.charamt = 2
            self.charcycle = self.charamt
        }
    }
    if (self.con == 12)
        _temp_local_var_3 = 1
    else
    {
        if (self.con == 32)
            _temp_local_var_3 = 1
        else
            _temp_local_var_3 = (self.con == 52)
    }
    if _temp_local_var_3
    {
        self.hitmode = 1
        self.sprite_index = spr_hammerguy_hit
        self.image_speed = 0.5
        self.image_index = 0
        self.con = (self.con + 1)
    }
    if (self.con == 15)
    {
        with(self.char)
        {
            instance_destroy()
        }
        with(global.cinstance[0])
        {
            self.visible = 1
        }
        with(global.cinstance[1])
        {
            self.visible = 1
        }
        obj_mainchara.visible = 1
        self.con = 13
        self.charcycle = (self.charcycle - 1)
        if (self.charcycle < 0)
            self.con = 16
    }
    if (self.con == 13)
    {
        self.chartype = global.char[self.charcycle]
        if (self.charcycle == 0)
        {
            with(obj_mainchara)
            {
                self.visible = 0
            }
            self.char = scr_dark_marker(390, 125, spr_krisd_dark)
            with(self.char)
            {
                self.depth = 400000
            }
        }
        if (self.charcycle == 1)
            _temp_local_var_4 = 1
        else
            _temp_local_var_4 = (self.charcycle == 2)
        if _temp_local_var_4
        {
            with(global.cinstance[(self.charcycle - 1)])
            {
                self.visible = 0
            }
            if (self.chartype == 2)
            {
                self.char = scr_dark_marker(380, 110, spr_susie_shock)
                with(self.char)
                {
                    self.depth = 400000
                }
            }
            if (self.chartype == 3)
            {
                self.char = scr_dark_marker(390, 140, spr_ralsei_shock_overworld)
                with(self.char)
                {
                    self.depth = 400000
                }
            }
        }
        self.con = 14
        self.alarm[4] = 36
    }
    if (self.con == 16)
        _temp_local_var_5 = 1
    else
    {
        if (self.con == 36)
            _temp_local_var_5 = 1
        else
            _temp_local_var_5 = (self.con == 56)
    }
    if _temp_local_var_5
    {
        self.hitmode = 0
        self.sprite_index = spr_hammerguy
        self.image_speed = 0.05
        self.image_index = 0
        snd_resume(global.currentsong[1])
        self.con = (self.con + 1)
    }
    if (self.con == 17)
    {
        global.hp[1] = global.maxhp[1]
        global.hp[2] = global.maxhp[2]
        global.hp[3] = global.maxhp[3]
        global.typer = 6
        global.fc = 0
        snd_play(snd_power)
        global.msg[0] = scr_84_get_lang_string("obj_npc_hammerguy_slash_Step_0_gml_108_0"@5090)
        global.msg[1] = scr_84_get_lang_string("obj_npc_hammerguy_slash_Step_0_gml_109_0"@5091)
        self.mydialoguer = instance_create(0, 0, obj_dialoguer)
        self.con = 18
    }
    if (self.con == 18)
        _temp_local_var_6 = 1
    else
    {
        if (self.con == 38)
            _temp_local_var_6 = 1
        else
            _temp_local_var_6 = (self.con == 58)
    }
    if _temp_local_var_6
    {
        if (~ d_ex())
        {
            self.myinteract = 0
            global.interact = 0
            with(obj_mainchara)
            {
                self.onebuffer = 10
            }
            self.con = 0
        }
    }
    if (self.hitmode == 1)
    {
        if (self.image_index == 4)
            snd_play(snd_squeaky)
        if (self.image_index >= 10)
            self.image_index = 0
    }
    if (self.con == 33)
    {
        self.char = scr_dark_marker(385, 160, spr_brokencake)
        with(self.char)
        {
            self.depth = 400000
        }
        self.con = 34
        self.alarm[4] = 50
    }
    if (self.con == 35)
    {
        with(self.char)
        {
            instance_destroy()
        }
        self.con = 36
    }
    if (self.con == 37)
    {
        scr_keyitemremove(3)
        global.typer = 6
        global.fc = 0
        snd_play(snd_item)
        global.msg[0] = scr_84_get_lang_string("obj_npc_hammerguy_slash_Step_0_gml_153_0"@5092)
        global.msg[1] = scr_84_get_lang_string("obj_npc_hammerguy_slash_Step_0_gml_154_0"@5093)
        global.msg[2] = scr_84_get_lang_string("obj_npc_hammerguy_slash_Step_0_gml_155_0"@5094)
        self.mydialoguer = instance_create(0, 0, obj_dialoguer)
        self.con = 38
    }
    if (self.con == 53)
    {
        self.char = scr_dark_marker(390, 170, spr_brokenkey)
        with(self.char)
        {
            self.depth = 400000
        }
        self.con = 54
        self.alarm[4] = 50
    }
    if (self.con == 55)
    {
        with(self.char)
        {
            instance_destroy()
        }
        self.con = 56
    }
    if (self.con == 57)
    {
        scr_keyitemremove(4)
        scr_keyitemremove(6)
        scr_keyitemremove(7)
        scr_keyitemget(5)
        global.typer = 6
        global.fc = 0
        snd_play(snd_item)
        global.msg[0] = scr_84_get_lang_string("obj_npc_hammerguy_slash_Step_0_gml_184_0"@5095)
        global.msg[1] = scr_84_get_lang_string("obj_npc_hammerguy_slash_Step_0_gml_185_0"@5096)
        global.msg[2] = scr_84_get_lang_string("obj_npc_hammerguy_slash_Step_0_gml_186_0"@5097)
        global.msg[3] = scr_84_get_lang_string("obj_npc_hammerguy_slash_Step_0_gml_187_0"@5098)
        global.msg[4] = scr_84_get_lang_string("obj_npc_hammerguy_slash_Step_0_gml_188_0"@5099)
        self.mydialoguer = instance_create(0, 0, obj_dialoguer)
        self.con = 58
    }
}
