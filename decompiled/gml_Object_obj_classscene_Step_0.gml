if (self.con == 1)
{
    self.alarm[4] = 30
    self.con = 1.5
}
if (self.con == 2.5)
{
    global.currentsong[0] = snd_init("mus_school.ogg"@3713)
    global.fe = 0
    global.fc = 11
    global.typer = 20
    global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_14_0"@3714)
    self.d = instance_create(0, 0, obj_dialoguer)
    self.con = 3
}
if (self.con == 3)
    _temp_local_var_1 = (instance_exists(obj_dialoguer) == 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    snd_play(snd_dooropen)
    with(self.door)
    {
        self.image_index = 1
    }
    self.con = 4
    with(self.alphys)
    {
        self.sprite_index = spr_alphysr
    }
    self.alarm[4] = 30
}
if (self.con == 5)
{
    with(obj_mainchara)
    {
        self.fun = 1
        self.sprite_index = spr_krisd
        self.image_speed = 0.2
        self.vspeed = 2
    }
    self.con = 6
    self.alarm[4] = 10
}
if (self.con == 7)
{
    with(obj_mainchara)
    {
        self.image_index = 0
        self.vspeed = 0
        self.image_speed = 0
    }
    with(self.door)
    {
        self.image_index = 0
    }
    snd_play(snd_doorclose)
    self.con = 8
    self.alarm[4] = 30
}
if (self.con == 9)
{
    global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_60_0"@3715)
    global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_61_0"@3716)
    global.msg[2] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_62_0"@3717)
    self.con = 10
    instance_create(0, 0, obj_dialoguer)
}
if (self.con == 10)
    _temp_local_var_2 = (instance_exists(obj_dialoguer) == 0)
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    mus_loop(global.currentsong[0])
    __view_set(e__VW.Object, 0, -4)
    self.door_readable = instance_create(244, 51, obj_readable_room1)
    self.alphys2 = self.alphys
    self.alphys = instance_create(self.alphys.x, (self.alphys.y + self.alphys.sprite_height), obj_npc_facing)
    with(self.alphys2)
    {
        instance_destroy()
    }
    self.doorsolid = instance_create(236, 52, obj_solidblock)
    with(self.doorsolid)
    {
        self.image_xscale = 2
    }
    with(self.door)
    {
        self.depth = 500000
    }
    with(obj_mainchara)
    {
        self.fun = 0
    }
    global.plot = 2
    global.interact = 0
    self.con = 11
}
if (self.con == 20)
    _temp_local_var_3 = (instance_exists(obj_dialoguer) == 0)
else
    _temp_local_var_3 = 0
if _temp_local_var_3
{
    global.interact = 1
    self.con = 21
    self.alarm[4] = 2
}
if (self.con == 21)
    global.interact = 1
if (self.con == 22)
{
    global.typer = 13
    global.fc = 12
    global.fe = 3
    global.facing = 2
    global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_107_0"@3721)
    global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_108_0"@3722)
    global.msg[2] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_109_0"@3723)
    global.msg[3] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_110_0"@3724)
    global.msg[4] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_111_0"@3725)
    global.msg[5] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_112_0"@3726)
    self.con = 23
    instance_create(0, 0, obj_dialoguer)
}
if (self.con == 23)
    _temp_local_var_4 = (instance_exists(obj_dialoguer) == 0)
else
    _temp_local_var_4 = 0
if _temp_local_var_4
{
    instance_create(0, 0, obj_shake)
    snd_stop_all()
    snd_free(global.currentsong[0])
    with(self.door)
    {
        self.image_index = 0
        self.image_speed = 0.5
        self.sprite_index = spr_classdoorslam
        self.depth = 5000
    }
    self.sus = scr_marker(237, 24, spr_susied_plain)
    with(self.sus)
    {
        scr_depth()
    }
    self.con = 24
    self.alarm[4] = 4
    with(self.doorsolid)
    {
        instance_destroy()
    }
}
if (self.con == 25)
{
    snd_play(snd_impact)
    self.alphys2 = self.alphys
    self.alphys = scr_marker(self.alphys.x, self.alphys.y, spr_alphysr_shock)
    with(self.alphys)
    {
        scr_depth()
    }
    with(self.alphys2)
    {
        instance_destroy()
    }
    self.con = 26
    self.alarm[4] = 6
}
if (self.con == 27)
{
    with(self.door)
    {
        self.image_speed = 0
        self.depth = 500000
    }
    self.con = 32
    self.alarm[4] = 50
}
if (self.con == 29)
    _temp_local_var_5 = (instance_exists(obj_dialoguer) == 0)
else
    _temp_local_var_5 = 0
if _temp_local_var_5
{
    with(self.sus)
    {
        self.image_speed = 0.1
        self.vspeed = 0.5
    }
    self.con = 30
    self.alarm[4] = 40
}
if (self.con == 31)
{
    with(self.sus)
    {
        self.image_index = 0
        self.image_speed = 0
        self.vspeed = 0
    }
    self.con = 34
    self.alarm[4] = 30
}
if (self.con == 33)
{
    global.fe = 2
    global.fc = 11
    global.typer = 22
    global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_190_0"@3728)
    instance_create(0, 0, obj_dialoguer)
    self.con = 28
    self.alarm[4] = 20
}
if (self.con == 35)
{
    global.fc = 1
    global.fe = 0
    global.typer = 10
    global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_203_0"@3729)
    global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_204_0"@3730)
    global.msg[2] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_205_0"@3731)
    global.msg[3] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_206_0"@3732)
    global.msg[4] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_207_0"@3733)
    scr_susface(5, 0)
    global.msg[6] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_209_0"@3734)
    global.msg[7] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_210_0"@3735)
    self.con = 36
    instance_create(0, 0, obj_dialoguer)
}
if (self.con == 36)
    _temp_local_var_6 = (instance_exists(obj_dialoguer) == 0)
else
    _temp_local_var_6 = 0
if _temp_local_var_6
{
    self.con = 37
    self.alarm[4] = 40
    with(self.alphys)
    {
        self.sprite_index = spr_alphysd
    }
}
if (self.con == 38)
{
    global.fc = 11
    global.typer = 20
    global.fe = 6
    global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_230_0"@3736)
    global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_231_0"@3737)
    instance_create(0, 0, obj_dialoguer)
    self.con = 39
}
if (self.con == 39)
    _temp_local_var_7 = (instance_exists(obj_dialoguer) == 0)
else
    _temp_local_var_7 = 0
if _temp_local_var_7
{
    with(self.alphys)
    {
        self.sprite_index = spr_alphysr
        self.hspeed = 3
        self.image_speed = 0.2
    }
    self.con = 40
    self.alarm[4] = 26
}
if (self.con == 41)
{
    with(self.alphys)
    {
        self.sprite_index = spr_alphysu
        self.image_index = 0
        self.image_speed = 0
        self.hspeed = 0
    }
    self.con = 42
    self.alarm[4] = 30
}
if (self.con == 43)
{
    global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_263_0"@3738)
    self.con = 44
    instance_create(0, 0, obj_dialoguer)
}
if (self.con == 44)
    _temp_local_var_8 = (instance_exists(obj_dialoguer) == 0)
else
    _temp_local_var_8 = 0
if _temp_local_var_8
{
    self.con = 45
    with(self.alphys)
    {
        self.sprite_index = spr_alphysl
    }
    self.con = 46
    self.alarm[4] = 20
}
if (self.con == 47)
{
    with(self.alphys)
    {
        self.sprite_index = spr_alphysr
    }
    self.con = 48
    self.alarm[4] = 20
}
if (self.con == 49)
{
    with(self.alphys)
    {
        self.sprite_index = spr_alphysd
    }
    self.con = 50
    self.alarm[4] = 30
}
if (self.con == 51)
{
    global.fe = 8
    global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_294_0"@3739)
    global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_295_0"@3740)
    global.msg[2] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_296_0"@3741)
    global.msg[3] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_298_0"@3742)
    global.msg[4] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_299_0"@3743)
    global.msg[5] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_300_0"@3744)
    global.msg[6] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_301_0"@3745)
    global.msg[7] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_302_0"@3746)
    global.msg[8] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_303_0"@3747)
    instance_create(0, 0, obj_dialoguer)
    self.con = 51.1
}
if (self.con == 51.1)
    _temp_local_var_9 = (d_ex() == 0)
else
    _temp_local_var_9 = 0
if _temp_local_var_9
{
    with(self.alphys)
    {
        self.sprite_index = spr_alphysd
    }
    self.con = 50.2
    self.alarm[4] = 90
}
if (self.con == 51.2)
{
    with(self.alphys)
    {
        self.sprite_index = spr_alphysd
    }
    global.fe = 6
    global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_319_0"@3748)
    global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_320_0"@3749)
    self.con = 51.3
    instance_create(0, 0, obj_dialoguer)
}
if (self.con == 51.3)
    _temp_local_var_10 = (d_ex() == 0)
else
    _temp_local_var_10 = 0
if _temp_local_var_10
{
    with(self.alphys)
    {
        self.sprite_index = spr_alphysr
    }
    self.con = 50.4
    self.alarm[4] = 90
}
if (self.con == 51.4)
{
    with(self.alphys)
    {
        self.sprite_index = spr_alphysd
    }
    global.fe = 9
    global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_336_0"@3750)
    global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_337_0"@3751)
    global.msg[2] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_338_0"@3752)
    global.msg[3] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_339_0"@3753)
    global.msg[4] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_340_0"@3754)
    global.msg[5] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_341_0"@3755)
    global.msg[6] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_342_0"@3756)
    instance_create(0, 0, obj_dialoguer)
    self.con = 52
}
if (self.con == 52)
{
    if instance_exists(obj_writer)
    {
        if (obj_writer.msgno == 4)
        {
            with(self.alphys)
            {
                self.sprite_index = spr_alphysr
            }
        }
    }
}
if (self.con == 52)
    _temp_local_var_11 = (instance_exists(obj_dialoguer) == 0)
else
    _temp_local_var_11 = 0
if _temp_local_var_11
{
    with(self.sus)
    {
        self.vspeed = -1
        self.sprite_index = spr_susieu
        self.image_speed = 0.2
    }
    self.con = 53
    self.alarm[4] = 15
}
if (self.con == 54)
{
    with(self.sus)
    {
        instance_destroy()
    }
    instance_create(0, 0, obj_shake)
    snd_play(snd_impact)
    with(self.door)
    {
        self.image_index = 0
    }
    self.con = 55
    self.alarm[4] = 50
}
if (self.con == 56)
{
    with(self.sus)
    {
        instance_destroy()
    }
    with(self.alphys)
    {
        self.sprite_index = spr_alphysd
    }
    global.fc = 11
    global.typer = 20
    global.fe = 4
    global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_394_0"@3757)
    global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_395_0"@3758)
    global.msg[2] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_396_0"@3759)
    instance_create(0, 0, obj_dialoguer)
    self.con = 57
}
if (self.con == 57)
    _temp_local_var_12 = (instance_exists(obj_dialoguer) == 0)
else
    _temp_local_var_12 = 0
if _temp_local_var_12
{
    with(self.door_readable)
    {
        instance_destroy()
    }
    self.doorb = instance_create(242, 51, obj_doorB)
    global.plot = 3
    global.facing = 0
    self.alphys2 = self.alphys
    self.alphys = instance_create(self.alphys.x, (self.alphys.y + self.alphys.sprite_height), obj_npc_facing)
    with(obj_npc_facing)
    {
        self.talked = 0
    }
    with(self.alphys2)
    {
        instance_destroy()
    }
    with(self.doorsolid)
    {
        instance_destroy()
    }
    global.interact = 0
    self.con = 58
}
