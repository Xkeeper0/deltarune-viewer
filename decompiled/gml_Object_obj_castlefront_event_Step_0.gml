if (self.con == 1)
{
    global.facing = 2
    self.s = scr_dark_marker(340, 1000, spr_susieu_dark)
    self.r = scr_dark_marker(260, 1008, spr_ralseiu)
    self.l = scr_dark_marker(280, 740, spr_lancer_ut_unhappy)
    with(obj_marker)
    {
        scr_depth()
    }
    self.con = 2
    global.interact = 1
    self.alarm[4] = 30
}
if (self.con == 2)
    global.interact = 1
if (self.con == 3)
{
    global.fc = 1
    global.fe = 9
    global.typer = 30
    global.msg[0] = scr_84_get_lang_string("obj_castlefront_event_slash_Step_0_gml_24_0"@4396)
    instance_create(0, 0, obj_dialoguer)
    self.con = 4
}
if (self.con == 4)
    _temp_local_var_1 = (~ d_ex())
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    with(self.l)
    {
        self.sprite_index = spr_lancer_dt_unhappy
        self.vspeed = -3
    }
    with(obj_mainchara)
    {
        self.fun = 1
        self.vspeed = -8
        self.image_speed = 0.25
    }
    with(self.s)
    {
        self.vspeed = -8
        self.image_speed = 0.25
    }
    with(self.r)
    {
        self.vspeed = -8
        self.image_speed = 0.25
    }
    self.con = 5
    self.alarm[4] = 48
}
if (self.con == 6)
{
    snd_free_all()
    snd_play(snd_locker)
    instance_create(0, 0, obj_shake)
    self.door = scr_dark_marker(226, 534, spr_cardcastlefrontdoor)
    self.door.depth = 1000000
    with(self.l)
    {
        instance_destroy()
    }
    with(self.s)
    {
        scr_halt()
    }
    with(self.r)
    {
        scr_halt()
    }
    with(obj_mainchara)
    {
        scr_halt()
    }
    self.con = 7
    self.alarm[4] = 40
}
if (self.con == 8)
{
    global.msg[0] = scr_84_get_lang_string("obj_castlefront_event_slash_Step_0_gml_58_0"@4397)
    instance_create(0, 0, obj_dialoguer)
    self.con = 15
}
if (self.con == 15)
    _temp_local_var_2 = (~ d_ex())
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    with(self.s)
    {
        self.sprite_index = spr_susier_dark_unhappy
    }
    with(self.r)
    {
        self.sprite_index = spr_ralseil
    }
    global.facing = 0
    with(obj_mainchara)
    {
        self.sprite_index = spr_krisd_dark
    }
    self.exc = instance_create((obj_mainchara.x + 20), (obj_mainchara.y - 20), obj_excblcon)
    self.con = 16
    self.alarm[4] = 20
    self.i = 0
    while(true)
    {
        if (self.i < 4)
        {
            self.spademanl[self.i] = scr_dark_marker((0 - (10 * self.i)), (680 + (30 * self.i)), spr_diamond_knight_overworld)
            with(self.spademanl[self.i])
            {
                self.image_xscale = -2
                self.hspeed = 12
                scr_depth()
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
    self.i = 0
    while(true)
    {
        if (self.i < 4)
        {
            self.spademanr[self.i] = scr_dark_marker((640 + (10 * self.i)), (680 + (30 * self.i)), spr_diamond_knight_overworld)
            with(self.spademanr[self.i])
            {
                self.image_xscale = 2
                self.hspeed = -12
                scr_depth()
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
    self.spademand[0] = scr_dark_marker(320, 1100, spr_diamond_knight_overworld)
    with(self.spademand[0])
    {
        self.image_xscale = -2
        self.vspeed = -12
        scr_depth()
    }
    self.spademand[1] = scr_dark_marker(320, 1100, spr_diamond_knight_overworld)
    with(self.spademand[1])
    {
        self.image_xscale = 2
        self.vspeed = -12
        scr_depth()
    }
}
if (self.con == 17)
{
    with(self.exc)
    {
        instance_destroy()
    }
    with(obj_marker)
    {
        scr_halt()
    }
    self.con = 18
    self.alarm[4] = 20
}
if (self.con == 19)
{
    global.typer = 6
    global.fc = 0
    global.msg[0] = scr_84_get_lang_string("obj_castlefront_event_slash_Step_0_gml_106_0"@4401)
    instance_create(0, 0, obj_dialoguer)
    self.con = 20
    self.ftimer = 0
    self.dcount = 0
    self.so = 0
    self.maxd = 36
}
if (self.con == 20)
    _temp_local_var_3 = (~ d_ex())
else
    _temp_local_var_3 = 0
if _temp_local_var_3
{
    if (self.dcount < self.maxd)
    {
        if (self.so == 0)
        {
            snd_play(snd_noise)
            self.so = 1
        }
        else
            self.so = 0
        self.radius = 140
        self.angle = ((self.dcount / self.maxd) * 360)
        self.xpoint = (obj_mainchara.x + 20)
        self.ypoint = obj_mainchara.y
        self.xd = lengthdir_x(self.radius, self.angle)
        self.yd = lengthdir_y(self.radius, self.angle)
        self.db[self.dcount] = scr_dark_marker((self.xpoint + self.xd), (self.ypoint + self.yd), spr_diamondbullet)
        self.db[self.dcount].image_angle = self.angle
        with(self.db[self.dcount])
        {
            self.image_xscale = 1
            self.image_yscale = 1
            self.image_alpha = 0
            self.direction = self.image_angle
            self.speed = 2
            self.depth = 10000
            self.friction = 0.1
        }
        self.dcount = (self.dcount + 1)
    }
    self.i = 0
    while(true)
    {
        if (self.i < self.dcount)
        {
            with(self.db[self.i])
            {
                self.image_alpha = (self.image_alpha + 0.1)
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
    if (self.dcount >= self.maxd)
    {
        self.ftimer = (self.ftimer + 1)
        if (self.ftimer >= 20)
            self.con = 21
    }
}
if (self.con == 21)
{
    global.typer = 31
    global.fc = 2
    global.fe = 3
    global.msg[0] = scr_84_get_lang_string("obj_castlefront_event_slash_Step_0_gml_163_0"@4413)
    instance_create(0, 0, obj_dialoguer)
    self.con = 22
}
if (self.con == 22)
    _temp_local_var_4 = (~ d_ex())
else
    _temp_local_var_4 = 0
if _temp_local_var_4
{
    self.i = 0
    while(true)
    {
        if (self.i < self.dcount)
        {
            with(self.db[self.i])
            {
                self.gravity = 1
                self.gravity_direction = (self.image_angle + 180)
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
    self.con = 26
}
if (self.con == 26)
{
    if (self.db[0].x <= (obj_mainchara.x + 90))
    {
        snd_free_all()
        snd_play(snd_hurt1)
        self.con = 27
        self.black = 1
        self.alarm[4] = 120
    }
}
if (self.con == 28)
{
    global.entrance = 0
    global.interact = 3
    room_goto(room_cc_prison_cells)
}
