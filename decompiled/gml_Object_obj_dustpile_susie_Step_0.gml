scr_depth()
self.siner = (self.siner + 1)
if (self.con == 1)
{
    if (__view_get(e__VW.XView, 0) >= 280)
        _temp_local_var_1 = (obj_mainchara.y > 535)
    else
        _temp_local_var_1 = 0
}
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    self.darksus = scr_dark_marker(873, 602, spr_susier_shadow)
    self.darksus.image_speed = 0.2
    with(self.darksus)
    {
        scr_depth()
    }
    self.suspeed = (point_distance(873, 602, 1116, 720) / 15)
    self.darksus.speed = self.suspeed
    self.darksus.direction = point_direction(self.darksus.x, self.darksus.y, 1116, 720)
    self.con = 2
    self.alarm[4] = 15
}
if (self.con == 3)
{
    with(self.darksus)
    {
        instance_destroy()
    }
    self.con = 4
}
if (self.con == 4)
{
    if (__view_get(e__VW.XView, 0) >= 540)
        _temp_local_var_2 = (obj_mainchara.y > 535)
    else
        _temp_local_var_2 = 0
}
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    self.darksus2 = scr_dark_marker(1116, 720, spr_susier_shadow)
    self.darksus2.image_speed = 0.2
    with(self.darksus2)
    {
        scr_depth()
    }
    self.suspeed = (point_distance(1116, 720, 1348, 643) / 15)
    self.darksus2.speed = self.suspeed
    self.darksus2.direction = point_direction(self.darksus2.x, self.darksus2.y, 1348, 643)
    self.con = 5
    self.alarm[4] = 15
}
if (self.con == 5)
{
    with(self.darksus)
    {
        instance_destroy()
    }
    self.con = 6
}
if (self.con == 11)
{
    with(self.s)
    {
        self.hspeed = 0
    }
    self.con = 12
    self.alarm[4] = 20
}
if (self.con == 13)
{
    global.fc = 1
    global.fe = 7
    global.typer = 30
    global.msg[0] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_57_0"@6592)
    instance_create(0, 0, obj_dialoguer)
    self.con = 14
}
if (self.con == 14)
    _temp_local_var_3 = (instance_exists(obj_dialoguer) == 0)
else
    _temp_local_var_3 = 0
if _temp_local_var_3
{
    self.con = 15
    self.alarm[4] = 30
}
if (self.con == 15)
    self.image_alpha = (self.image_alpha - 0.04)
if (self.con == 16)
{
    with(self.s)
    {
        self.sprite_index = spr_susiel_dark
    }
    global.fe = 6
    global.msg[0] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_78_0"@6593)
    global.msg[1] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_79_0"@6594)
    global.msg[2] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_80_0"@6595)
    global.msg[3] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_81_0"@6596)
    global.msg[4] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_82_0"@6597)
    instance_create(0, 0, obj_dialoguer)
    self.con = 17
}
if (self.con == 17)
    _temp_local_var_4 = (instance_exists(obj_dialoguer) == 0)
else
    _temp_local_var_4 = 0
if _temp_local_var_4
{
    with(self.s)
    {
        self.sprite_index = spr_susier_dark
    }
    self.con = 18
    self.alarm[4] = 30
}
if (self.con == 19)
{
    with(self.s)
    {
        self.sprite_index = spr_susieu_dark
    }
    self.con = 20
    self.alarm[4] = 30
}
if (self.con == 21)
{
    global.fe = 6
    global.msg[0] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_104_0"@6598)
    instance_create(0, 0, obj_dialoguer)
    self.con = 22
}
if (self.con == 22)
    _temp_local_var_5 = (instance_exists(obj_dialoguer) == 0)
else
    _temp_local_var_5 = 0
if _temp_local_var_5
{
    self.con = 23
    self.alarm[4] = 30
}
if (self.con == 24)
{
    with(self.s)
    {
        self.sprite_index = spr_susiel_dark
    }
    global.fe = 7
    global.msg[0] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_119_0"@6599)
    instance_create(0, 0, obj_dialoguer)
    self.con = 25
}
if (self.con == 25)
    _temp_local_var_6 = (instance_exists(obj_dialoguer) == 0)
else
    _temp_local_var_6 = 0
if _temp_local_var_6
{
    with(self.s)
    {
        self.hspeed = -4
        self.image_speed = 0.2
    }
    self.con = 26
    self.alarm[4] = 15
}
if (self.con == 27)
{
    self.thisremx = self.s.x
    self.thisremy = self.s.y
    self.s.speed = (point_distance(self.s.x, self.s.y, self.partysus.x, self.partysus.y) / 10)
    self.s.direction = point_direction(self.s.x, self.s.y, self.partysus.x, self.partysus.y)
    self.con = 28
    self.alarm[4] = 10
}
if (self.con == 29)
{
    with(self.s)
    {
        instance_destroy()
    }
    with(self.partysus)
    {
        self.visible = 1
    }
    self.con = 30
    self.alarm[4] = 30
}
if (self.con == 31)
{
    global.fe = 1
    global.msg[0] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_156_0"@6602)
    scr_getchar(2)
    self.con = 32
    instance_create(0, 0, obj_dialoguer)
}
if (self.con == 32)
    _temp_local_var_7 = (instance_exists(obj_dialoguer) == 0)
else
    _temp_local_var_7 = 0
if _temp_local_var_7
{
    self.y = (self.y - 200)
    self.con = 33
    global.interact = 0
    self.speedtimer = 0
}
if (self.con == 33)
    _temp_local_var_8 = (global.interact == 0)
else
    _temp_local_var_8 = 0
if _temp_local_var_8
{
    self.speedtimer = (self.speedtimer + 1)
    if (obj_mainchara.x < 560)
    {
        global.flag[202] = 2
        global.interact = 1
        self.con = 34
        global.fc = 1
        global.typer = 30
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_182_0"@6604)
        instance_create(0, 0, obj_dialoguer)
    }
    if (obj_mainchara.x > 1760)
    {
        global.interact = 1
        self.con = 35
        global.fc = 1
        global.typer = 30
        global.fe = 0
        if (self.speedtimer < 80)
        {
            global.flag[202] = 1
            global.msg[0] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_197_0"@6605)
        }
        else
            global.msg[0] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_201_0"@6606)
        instance_create(0, 0, obj_dialoguer)
    }
}
if (self.con == 34)
    _temp_local_var_9 = (instance_exists(obj_dialoguer) == 0)
else
    _temp_local_var_9 = 0
if _temp_local_var_9
{
    with(self.partysus)
    {
        self.visible = 0
    }
    self.news = scr_dark_marker(self.partysus.x, self.partysus.y, spr_susier_dark)
    with(self.news)
    {
        move_towards_point(940, 660, 14)
        self.image_speed = 0.334
    }
    self.con = 39
    self.alarm[4] = 40
}
if (self.con == 35)
    _temp_local_var_10 = (instance_exists(obj_dialoguer) == 0)
else
    _temp_local_var_10 = 0
if _temp_local_var_10
{
    with(self.partysus)
    {
        self.visible = 0
    }
    self.news = scr_dark_marker(self.partysus.x, self.partysus.y, spr_susier_dark)
    with(self.news)
    {
        self.hspeed = 14
        self.image_speed = 0.334
    }
    self.con = 39
    self.alarm[4] = 40
}
if (self.con == 40)
{
    scr_losechar()
    global.facing = 0
    if (global.plot < 14)
        global.plot = 14
    global.interact = 0
    with(self.news)
    {
        instance_destroy()
    }
    self.con = 41
    instance_destroy()
}
