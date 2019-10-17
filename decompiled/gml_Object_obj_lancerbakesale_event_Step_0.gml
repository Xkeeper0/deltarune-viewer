if ((self.con == 10) && (!d_ex()))
{
    with (self.s)
    {
        self.sprite_index = spr_susier_dark
        self.image_speed = 0.334
        self.hspeed = 12
    }
    with (self.l)
    {
        self.sprite_index = spr_lancer_rt
        self.hspeed = 12
    }
    self.con = 11
    self.alarm[4] = 20
}
if (self.con == 11)
    global.interact = 1
if (self.con == 12)
{
    with (self.s)
    {
        self.x = (__view_get(0, 0) - 140)
        self.hspeed = 12
        self.vspeed = 0
        self.y += 90
        self.sprite_index = spr_susier_dark
        scr_depth()
    }
    with (self.l)
    {
        self.x = (__view_get(0, 0) - 100)
        self.hspeed = 12
        self.y += 90
        self.sprite_index = spr_lancer_rt
        scr_depth()
    }
    self.con = 15
    self.alarm[4] = 29
}
if (self.con == 16)
{
    with (self.s)
    {
        scr_halt()
        self.sprite_index = spr_susieu_dark
    }
    with (self.l)
    {
        scr_halt()
        self.sprite_index = spr_lancer_ut
    }
    global.facing = 3
    with (global.cinstance[0])
    {
        self.fun = 1
        self.sprite_index = self.lsprite
    }
    self.con = 26
    self.alarm[4] = 5
}
if (self.con == 18)
{
    with (self.s)
        self.sprite_index = spr_susier_dark
    with (self.l)
        self.sprite_index = spr_lancer_lt
    global.typer = 30
    global.fc = 1
    global.fe = 1
    global.msg[0] = scr_84_get_lang_string("obj_lancerbakesale_event_slash_Step_0_gml_80_0")
    scr_lanface(1, 2)
    global.msg[2] = scr_84_get_lang_string("obj_lancerbakesale_event_slash_Step_0_gml_82_0")
    self.con = 19
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 19) && (!d_ex()))
{
    with (self.l)
        self.sprite_index = spr_lancer_ut
    with (self.s)
        self.sprite_index = spr_susieu_dark
    self.con = 20
    self.alarm[4] = 30
}
if (self.con == 21)
{
    with (self.l)
        self.sprite_index = spr_lancer_lt
    with (self.s)
        self.sprite_index = spr_susier_dark
    global.typer = 32
    global.fe = 6
    global.fc = 5
    global.msg[0] = scr_84_get_lang_string("obj_lancerbakesale_event_slash_Step_0_gml_103_0")
    scr_susface(1, 0)
    global.msg[2] = scr_84_get_lang_string("obj_lancerbakesale_event_slash_Step_0_gml_105_0")
    global.msg[3] = scr_84_get_lang_string("obj_lancerbakesale_event_slash_Step_0_gml_106_0")
    scr_lanface(4, 3)
    global.msg[5] = scr_84_get_lang_string("obj_lancerbakesale_event_slash_Step_0_gml_108_0")
    global.msg[6] = scr_84_get_lang_string("obj_lancerbakesale_event_slash_Step_0_gml_109_0")
    self.con = 25
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 25) && (!d_ex()))
{
    with (self.s)
    {
        self.hspeed = 13
        self.image_speed = 0.25
        self.sprite_index = spr_susier_dark
    }
    with (self.l)
    {
        self.hspeed = 13
        self.sprite_index = spr_lancer_rt
    }
    self.con = 26
    self.alarm[4] = 6
}
if (self.con == 27)
{
    with (self.s)
    {
        scr_halt()
        self.sprite_index = spr_susieu_dark
        self.vspeed = -10
    }
    with (self.l)
    {
        scr_halt()
        self.sprite_index = spr_lancer_ut
        self.vspeed = -10
    }
    self.con = 28
    self.alarm[4] = 6
}
if (self.con == 29)
{
    with (self.s)
        scr_halt()
    with (self.l)
        scr_halt()
    self.con = 30
    self.alarm[4] = 10
}
if (self.con == 31)
{
    with (self.s)
    {
        self.sprite_index = spr_susied_dark
        self.image_speed = 0.25
        self.vspeed = 12
    }
    with (self.l)
    {
        self.sprite_index = spr_lancer_dt
        self.vspeed = 12
    }
    self.con = 33
    self.alarm[4] = 7
}
if (self.con == 34)
{
    with (self.s)
        scr_halt()
    with (self.l)
        scr_halt()
    self.con = 35
}
if ((self.con == 35) && (!d_ex()))
{
    self.lnpc = instance_create(self.l.x, (self.l.y + 108), obj_npc_facing)
    with (self.lnpc)
    {
        self.dfacing = 0
        self.sprite_index = spr_lancer_dt
        self.dtsprite = self.sprite_index
        self.rtsprite = self.sprite_index
        self.ltsprite = self.sprite_index
        self.utsprite = self.sprite_index
    }
    self.snpc = instance_create(self.s.x, (self.s.y + 108), obj_npc_facing)
    with (self.snpc)
    {
        self.dfacing = 1
        self.sprite_index = spr_susier_dark
        self.dtsprite = self.sprite_index
        self.rtsprite = self.sprite_index
        self.ltsprite = self.sprite_index
        self.utsprite = self.sprite_index
    }
    self.con = 36
    if (global.plot < 80)
        global.plot = 80
    global.flag[238] = 1
    global.interact = 0
    global.facing = 0
    with (global.cinstance[0])
        self.fun = 0
    with (self.s)
        instance_destroy()
    with (self.l)
        instance_destroy()
}
if (self.con == 4000)
{
    if ((obj_mainchara.x >= (self.room_width - 80)) && (global.interact == 0))
    {
        obj_mainchara.x -= 10
        global.facing = 3
        global.typer = 32
        global.fc = 5
        global.fe = 7
        global.msg[0] = scr_84_get_lang_string("obj_lancerbakesale_event_slash_Step_0_gml_237_0")
        scr_susface(1, 2)
        global.msg[2] = scr_84_get_lang_string("obj_lancerbakesale_event_slash_Step_0_gml_239_0")
        scr_ralface(3, 6)
        global.msg[4] = scr_84_get_lang_string("obj_lancerbakesale_event_slash_Step_0_gml_241_0")
        global.interact = 1
        self.con = 2
        instance_create(0, 0, obj_dialoguer)
    }
}
if ((self.con == 4002) && (!d_ex()))
{
    self.con = 4000
    global.interact = 0
}
