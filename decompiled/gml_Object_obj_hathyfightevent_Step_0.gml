if (self.con == 1)
{
    if (obj_mainchara.x >= 1300)
    {
        if (obj_mainchara.y > 900)
            _temp_local_var_1 = (global.interact == 0)
        else
            _temp_local_var_1 = 0
    }
    else
        _temp_local_var_1 = 0
}
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    global.interact = 1
    self.con = 2
    self.sprite_index = spr_lancer_lt
    instance_create((self.x + (self.sprite_width / 2)), (self.y - 10), obj_excblcon)
    self.alarm[4] = 30
}
if (self.con > 2)
{
    if (self.con == 3)
    {
        global.fc = 5
        global.typer = 32
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_19_0"@5043)
        global.msg[1] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_20_0"@5044)
        global.msg[2] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_21_0"@5045)
        instance_create(0, 0, obj_dialoguer)
        self.con = 4
    }
    if (self.con == 4)
        _temp_local_var_2 = (d_ex() == 0)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        self.hspeed = 16
        self.con = 5
        self.alarm[4] = 10
    }
    if (self.con == 6)
    {
        instance_create(0, 0, obj_battleback)
        global.encounterno = 9
        scr_encountersetup(global.encounterno)
        global.specialbattle = 0
        global.flag[9] = 1
        global.batmusic[0] = snd_init("battle.ogg"@4970)
        instance_create(0, 0, obj_encounterbasic)
        self.i = 0
        while(true)
        {
            if (self.i < 3)
            {
                self.h[self.i] = scr_dark_marker((global.monstermakex[self.i] + 250), global.monstermakey[self.i], spr_heartenemy_idle)
                with(self.h[self.i])
                {
                    self.hspeed = -10
                }
                self.i = (self.i + 1)
                continue
            }
            break
        }
        self.con = 7
        if (global.plot < 36)
            global.plot = 36
        self.alarm[4] = 25
    }
    if (self.con == 8)
    {
        self.i = 0
        while(true)
        {
            if (self.i < 3)
            {
                with(self.h[self.i])
                {
                    instance_destroy()
                }
                self.i = (self.i + 1)
                continue
            }
            break
        }
        self.con = 9
        self.alarm[4] = 15
    }
    if (self.con == 15)
    {
        self.depth = 0
        self.x = (__view_get(e__VW.XView, 0) + 640)
        self.hspeed = -20
        self.con = 16
        self.alarm[4] = 15
    }
    if (self.con == 17)
    {
        self.hspeed = 0
        global.fc = 5
        global.fe = 0
        global.typer = 46
        global.msg[0] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_79_0"@5047)
        scr_ralface(1, "B"@2529)
        global.msg[2] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_81_0"@5048)
        global.msg[3] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_82_0"@5049)
        global.msg[4] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_83_0"@5050)
        scr_lanface(5, 0)
        global.msg[6] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_85_0"@5051)
        global.msg[7] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_86_0"@5052)
        scr_ralface(8, 8)
        global.msg[9] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_88_0"@5053)
        scr_battletext()
        self.con = 18
    }
    if (self.con == 18)
        _temp_local_var_3 = (instance_exists(obj_writer) == 0)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
    {
        global.fc = 0
        self.hspeed = 20
        self.con = 19
        with(obj_battlecontroller)
        {
            self.alarm[2] = 21
        }
        self.alarm[4] = 20
    }
    if (self.con == 20)
    {
        with(obj_battlecontroller)
        {
            self.noreturn = 0
        }
        self.con = 21
    }
    if (self.con == 30)
    {
        global.fc = 2
        global.fe = 8
        global.typer = 45
        global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_116_0"@5055), string(global.monsterexp[3]), string(global.monstergold[3]))
        scr_battletext()
        self.con = 31
    }
    if (self.con == 31)
        _temp_local_var_4 = (instance_exists(obj_writer) == 0)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
    {
        self.depth = 0
        self.x = (__view_get(e__VW.XView, 0) + 640)
        self.hspeed = -20
        self.con = 32
        self.alarm[4] = 15
    }
    if (self.con == 33)
    {
        self.hspeed = 0
        global.fc = 5
        global.fe = 2
        global.typer = 46
        global.msg[0] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_136_0"@5056)
        scr_ralface(1, "B"@2529)
        global.msg[2] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_138_0"@5057)
        scr_lanface(3, 4)
        global.msg[4] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_140_0"@5058)
        global.msg[5] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_141_0"@5059)
        scr_ralface(6, "A"@366)
        global.msg[7] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_143_0"@5060)
        scr_lanface(8, 1)
        global.msg[9] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_145_0"@5061)
        scr_battletext()
        self.con = 34
    }
    if (self.con == 34)
        _temp_local_var_5 = (instance_exists(obj_writer) == 0)
    else
        _temp_local_var_5 = 0
    if _temp_local_var_5
    {
        self.npc = instance_create(1740, 1080, obj_npc_room)
        global.fc = 0
        self.hspeed = 20
        self.con = 35
        self.alarm[4] = 20
    }
    if (self.con == 36)
    {
        with(obj_battlecontroller)
        {
            self.victoried = 1
        }
        self.con = 37
    }
}
if (self.equipcon >= 1)
{
    if (global.chararmor1[3] == 4)
        _temp_local_var_6 = 1
    else
        _temp_local_var_6 = (global.chararmor2[3] == 4)
    if _temp_local_var_6
    {
        if (global.interact == 0)
            _temp_local_var_7 = scr_havechar(3)
        else
            _temp_local_var_7 = 0
        if _temp_local_var_7
        {
            global.fc = 2
            global.fe = 1
            global.typer = 31
            global.msg[0] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_181_0"@5063)
            global.msg[1] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_182_0"@5064)
            global.msg[2] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_183_0"@5065)
            if scr_havechar(2)
            {
                global.msg[2] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_186_0"@5066)
                scr_susface(3, 0)
                global.msg[4] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_188_0"@5067)
                scr_ralface(5, 8)
                global.msg[6] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_190_0"@5068)
                scr_susface(7, 7)
                global.msg[8] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_192_0"@5069)
            }
            instance_create(0, 0, obj_dialoguer)
            self.equipcon = 2
            global.interact = 1
        }
    }
    if (self.equipcon == 2)
        _temp_local_var_8 = (d_ex() == 0)
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
    {
        global.interact = 0
        self.equipcon = -1
    }
}
