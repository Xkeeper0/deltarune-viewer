if (global.interact == 0)
    _temp_local_var_1 = (self.event == 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    self.movedir = global.facing
    self.wd = self.sprite_width
    self.ht = self.sprite_height
    self.ix = 0
    self.iy = 0
    self.confirm = 1
    if (self.movedir == 0)
    {
        self.ix = (self.x + 2)
        self.iy = (self.y + self.ht)
    }
    if (self.movedir == 1)
    {
        self.ix = (self.x + self.wd)
        self.iy = (self.y + 2)
    }
    if (self.movedir == 2)
    {
        self.ix = (self.x + 2)
        self.iy = ((self.y - self.ht) + 5)
    }
    if (self.movedir == 3)
    {
        self.ix = ((self.x - self.wd) + 5)
        self.iy = (self.y + 2)
    }
    if collision_rectangle(self.ix, self.iy, (self.ix + 15), (self.iy + 15), obj_solidblock, 0, 1)
        self.confirm = 0
    if collision_rectangle(self.ix, self.iy, (self.ix + 15), (self.iy + 15), obj_interactablesolid, 0, 1)
        self.confirm = 0
    if collision_rectangle(self.ix, self.iy, (self.ix + 15), (self.iy + 15), obj_solidenemy, 0, 1)
        self.confirm = 0
    snd_play(snd_noise)
    if (self.confirm == 1)
    {
        self.sprite_index = spr_npc_block
        global.interact = 1
        self.movecourse = 1
        self.movetimer = 0
    }
}
if (self.event == 1)
{
    self.myinteract = 3
    global.msc = 0
    global.typer = 6
    global.fc = 0
    global.fc = 0
    global.interact = 1
    self.sd = 0
    if (global.flag[212] == 0)
        global.msg[0] = scr_84_get_lang_string("obj_pushableblock_slash_Other_10_gml_61_0"@7481)
    if (global.plot >= 50)
        global.msg[0] = scr_84_get_lang_string("obj_pushableblock_slash_Other_10_gml_66_0"@7482)
    if (global.flag[212] == 2)
        _temp_local_var_2 = (global.plot < 50)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        global.typer = 30
        global.fc = 1
        global.fe = 9
        global.msg[0] = scr_84_get_lang_string("obj_pushableblock_slash_Other_10_gml_74_0"@7483)
        global.msg[1] = scr_84_get_lang_string("obj_pushableblock_slash_Other_10_gml_75_0"@7484)
        global.msg[2] = scr_84_get_lang_string("obj_pushableblock_slash_Other_10_gml_76_0"@7485)
        global.msg[3] = scr_84_get_lang_string("obj_pushableblock_slash_Other_10_gml_77_0"@7486)
        self.sd = 1
        self.myinteract = 0
        with(obj_boxpuzzle_event)
        {
            self.con = 50
        }
    }
    self.mydialoguer = instance_create(0, 0, obj_dialoguer)
    if (self.sd == 1)
    {
        with(self.mydialoguer)
        {
            self.side = 1
        }
    }
}
