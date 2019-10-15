if (self.room == room_town_mid)
{
    if (self.con == 20)
        _temp_local_var_1 = (~ d_ex())
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        self.alarm[4] = 5
        self.con = 21
    }
    if (self.con == 21)
        global.interact = 1
    if (self.con == 22)
    {
        global.interact = 1
        self.banim = scr_marker((self.bnpc.x - 1), (self.bnpc.y - 14), spr_npc_icemascot_takeoff)
        self.banim.depth = self.bnpc.depth
        with(self.bnpc)
        {
            self.visible = 0
        }
        with(self.banim)
        {
            self.image_speed = 0.334
        }
        self.con = 23
        self.alarm[4] = 36
    }
    if (self.con == 24)
    {
        with(self.bnpc)
        {
            instance_destroy()
        }
        self.bnpc = instance_create((self.banim.x + 9), (self.banim.y + 18), obj_npc_room)
        with(self.bnpc)
        {
            self.sprite_index = spr_npc_burgerpants
        }
        with(self.banim)
        {
            instance_destroy()
        }
        self.con = 25
        self.alarm[4] = 20
    }
    if (self.con == 26)
    {
        global.fc = 19
        global.typer = 5
        global.fe = 0
        global.msc = 340
        scr_text(global.msc)
        self.con = 27
        instance_create(0, 0, obj_dialoguer)
    }
    if (self.con == 27)
        _temp_local_var_2 = (~ d_ex())
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        global.interact = 0
        self.con = 28
        if (global.flag[271] == 0)
            global.flag[271] = 1
    }
    if (self.con == 70)
        _temp_local_var_3 = (global.flag[273] == 1)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
    {
        if (global.interact == 0)
        {
            if (obj_mainchara.x <= 1060)
                _temp_local_var_4 = 1
            else
            {
                if (obj_mainchara.x >= 1200)
                    _temp_local_var_4 = 1
                else
                    _temp_local_var_4 = (obj_mainchara.y >= 120)
            }
            if _temp_local_var_4
            {
                global.interact = 1
                if (obj_mainchara.x <= 1060)
                    global.facing = 1
                if (obj_mainchara.x >= 1200)
                    global.facing = 3
                if (obj_mainchara.y >= 120)
                    global.facing = 2
                self.con = 71
                global.typer = 14
                global.fc = 6
                global.fe = 0
                global.msc = 380
                scr_text(global.msc)
                instance_create(0, 0, obj_dialoguer)
            }
        }
    }
    if (self.con == 71)
        _temp_local_var_5 = (~ d_ex())
    else
        _temp_local_var_5 = 0
    if _temp_local_var_5
    {
        self.con = 72
        global.flag[273] = 2
        global.interact = 0
        global.facing = 0
    }
}
if (self.room == room_town_south)
{
    if (self.con == 50)
        _temp_local_var_6 = (~ d_ex())
    else
        _temp_local_var_6 = 0
    if _temp_local_var_6
    {
        snd_play(snd_noise)
        self.con = 51
        self.alarm[4] = 28
    }
    if (self.con == 51)
    {
        global.interact = 1
        with(self.policewindow)
        {
            self.image_index = (self.image_index + 0.1)
        }
    }
    if (self.con == 52)
    {
        global.msg[0] = scr_84_get_lang_string("obj_town_event_slash_Step_0_gml_120_0"@3894)
        instance_create(0, 0, obj_dialoguer)
        self.con = 53
    }
    if (self.con == 53)
        _temp_local_var_7 = (~ d_ex())
    else
        _temp_local_var_7 = 0
    if _temp_local_var_7
    {
        global.interact = 0
        global.facing = 0
        self.con = 55
    }
}
if (self.room == room_torbathroom)
{
    if (self.con == 60)
        _temp_local_var_8 = (~ d_ex())
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
    {
        snd_pause(global.currentsong[1])
        snd_play(snd_toilet)
        self.con = 61
        self.alarm[4] = 30
    }
    if (self.con == 61)
        global.interact = 1
    if (self.con == 62)
    {
        self.specflush = 0
        snd_play(snd_won)
        self.flush = (self.flush + 1)
        global.msg[0] = scr_84_get_lang_string("obj_town_event_slash_Step_0_gml_157_0"@3897)
        if (self.flush == 3)
            self.specflush = 1
        if (self.flush == 6)
            self.specflush = 2
        if (self.flush == 9)
            self.specflush = 3
        instance_create(0, 0, obj_dialoguer)
        self.con = 63
        if (self.specflush > 0)
            self.con = 67
    }
    if (self.con == 63)
        _temp_local_var_9 = (~ d_ex())
    else
        _temp_local_var_9 = 0
    if _temp_local_var_9
    {
        snd_resume(global.currentsong[1])
        self.con = 64
        global.interact = 0
        global.facing = 0
    }
    if (self.con == 67)
        _temp_local_var_10 = (~ d_ex())
    else
        _temp_local_var_10 = 0
    if _temp_local_var_10
    {
        snd_play(snd_knock)
        self.con = 68
        self.alarm[4] = 30
    }
    if (self.con == 69)
    {
        if (self.specflush == 1)
        {
            scr_torface(0, 1)
            global.msg[1] = scr_84_get_lang_string("obj_town_event_slash_Step_0_gml_186_0"@3899)
        }
        if (self.specflush == 2)
        {
            scr_torface(0, 3)
            global.msg[1] = scr_84_get_lang_string("obj_town_event_slash_Step_0_gml_191_0"@3900)
            global.msg[2] = scr_84_get_lang_string("obj_town_event_slash_Step_0_gml_192_0"@3901)
        }
        if (self.specflush == 3)
        {
            scr_torface(0, 5)
            global.msg[1] = scr_84_get_lang_string("obj_town_event_slash_Step_0_gml_197_0"@3902)
        }
        instance_create(0, 0, obj_dialoguer)
        self.con = 63
        self.specflush = 0
    }
}
