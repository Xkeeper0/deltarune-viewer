if (self.con == 1)
    _temp_local_var_1 = (global.interact == 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    if (obj_mainchara.y <= 160)
    {
        global.interact = 1
        self.a = obj_npc_facing
        with(self.a)
        {
            self.facing = 0
            self.dfacing = 0
            self.sprite_index = spr_alphysd
        }
        self.exc = instance_create((self.a.x + 15), (self.a.y - 6), obj_excblcon)
        self.con = 2
        self.alarm[4] = 30
    }
}
if (self.con == 3)
{
    with(self.exc)
    {
        instance_destroy()
    }
    global.typer = 20
    global.fc = 11
    global.fe = 3
    global.msg[0] = scr_84_get_lang_string("obj_alphysalley_event_slash_Step_0_gml_25_0"@3904)
    global.msg[1] = scr_84_get_lang_string("obj_alphysalley_event_slash_Step_0_gml_26_0"@3905)
    global.msg[2] = scr_84_get_lang_string("obj_alphysalley_event_slash_Step_0_gml_27_0"@3906)
    global.msg[3] = scr_84_get_lang_string("obj_alphysalley_event_slash_Step_0_gml_28_0"@3907)
    global.msg[4] = scr_84_get_lang_string("obj_alphysalley_event_slash_Step_0_gml_29_0"@3908)
    global.msg[5] = scr_84_get_lang_string("obj_alphysalley_event_slash_Step_0_gml_30_0"@3909)
    global.msg[6] = scr_84_get_lang_string("obj_alphysalley_event_slash_Step_0_gml_31_0"@3910)
    instance_create(0, 0, obj_dialoguer)
    self.con = 4
}
if (self.con == 4)
    _temp_local_var_2 = (~ d_ex())
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    global.interact = 0
    global.flag[269] = 1
    self.con = 5
}
