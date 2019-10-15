if (self.pcon == 0)
    _temp_local_var_1 = (global.interact == 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    if (self.puzzle.suit[0] == 4)
    {
        if (self.puzzle.suit[1] == 1)
        {
            if (self.puzzle.suit[2] == 2)
                _temp_local_var_2 = (global.flag[234] == 0)
            else
                _temp_local_var_2 = 0
        }
        else
            _temp_local_var_2 = 0
    }
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        with(self.blockn)
        {
            instance_destroy()
        }
        global.flag[234] = 1
        global.interact = 1
        self.pcon = 1
        with(self.spiken[0])
        {
            self.image_index = 1
        }
        with(self.spiken[1])
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
        self.pcon = 0
        global.interact = 0
    }
}
if (self.con == 0)
    _temp_local_var_3 = (global.interact == 0)
else
    _temp_local_var_3 = 0
if _temp_local_var_3
{
    if (obj_mainchara.y <= 80)
    {
        global.facing = 0
        with(global.cinstance[0])
        {
            self.fun = 1
            self.sprite_index = self.dsprite
        }
        global.interact = 1
        self.con = 1
        self.alarm[4] = 22
        self.cmarker = scr_dark_marker(self.x, self.y, spr_clubs_idle)
        with(self.cmarker)
        {
            self.depth = 960000
        }
        with(self.cmarker)
        {
            self.vspeed = -8
        }
    }
}
if (self.con == 1)
{
    if (self.cmarker.y <= 280)
    {
        with(self.cmarker)
        {
            scr_depth()
        }
    }
}
if (self.con == 2)
{
    with(self.cmarker)
    {
        scr_halt()
    }
    global.typer = 6
    global.fc = 0
    global.msg[0] = scr_84_get_lang_string("obj_cloverpuzzle_event_slash_Step_0_gml_78_0"@4201)
    global.msg[1] = scr_84_get_lang_string("obj_cloverpuzzle_event_slash_Step_0_gml_79_0"@4202)
    global.msg[2] = scr_84_get_lang_string("obj_cloverpuzzle_event_slash_Step_0_gml_80_0"@4203)
    if (global.flag[236] == 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_cloverpuzzle_event_slash_Step_0_gml_85_0"@4204)
        global.msg[1] = scr_84_get_lang_string("obj_cloverpuzzle_event_slash_Step_0_gml_86_0"@4205)
    }
    self.con = 3
    instance_create(0, 0, obj_dialoguer)
}
if (self.con == 3)
    _temp_local_var_4 = (~ d_ex())
else
    _temp_local_var_4 = 0
if _temp_local_var_4
{
    with(global.cinstance[0])
    {
        self.fun = 0
    }
    if (global.plot < 75)
        global.plot = 75
    with(obj_cloverhole)
    {
        self.sprite_index = spr_cloverhole
        self.holecon = 999
        self.image_index = 0
    }
    self.cencounter = instance_create(self.cmarker.x, self.cmarker.y, obj_chaseenemy)
    with(self.cmarker)
    {
        instance_destroy()
    }
    with(self.cencounter)
    {
        global.interact = 0
        self.myencounter = 8
        self.sprite_index = spr_clubs_idle
        self.touchsprite = 524
        event_user(0)
    }
    self.con = 4
}
