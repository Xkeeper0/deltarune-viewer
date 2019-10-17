if ((self.con == 1) && ((obj_mainchara.x >= 1060) && (global.interact == 0)))
{
    global.flag[7] = 1
    with (obj_mainchara)
        self.cutscene = 1
    global.interact = 1
    scr_pan(4, 0, 20)
    self.con = 2
    self.alarm[4] = 30
}
if (self.con == 3)
{
    global.facing = 1
    with (self.susie)
        self.sprite_index = spr_susiel_dark
    global.msg[0] = scr_84_get_lang_string("obj_lancerchaseevent_slash_Step_0_gml_16_0")
    global.msg[1] = scr_84_get_lang_string("obj_lancerchaseevent_slash_Step_0_gml_17_0")
    global.typer = 30
    global.fe = 0
    global.fc = 1
    self.con = 4
    self.d = instance_create(0, 0, obj_dialoguer)
    with (self.d)
        self.side = 0
}
if ((self.con == 4) && (instance_exists(obj_dialoguer) == 0))
{
    self.lancer = scr_dark_marker(1150, 370, spr_darklancer)
    global.facing = 2
    with (self.susie)
        self.sprite_index = spr_susieu_dark
    scr_pan(0, -8, 40)
    self.con = 5
    self.alarm[4] = 40
}
if (self.con == 6)
{
    self.con = 7
    self.alarm[4] = 30
}
if (self.con == 8)
{
    with (self.lancer)
        self.image_index = 1
    snd_play(snd_break1)
    self.b[0] = scr_marker((self.lancer.x + 120), (self.lancer.y - 20), spr_spadebullet)
    self.b[1] = scr_marker((self.lancer.x - 160), (self.lancer.y - 20), spr_spadebullet)
    for (self.i = 0; self.i < 2; self.i += 1)
    {
        self.b[self.i].image_alpha = 0
        self.bdir[self.i] = point_direction(self.b[self.i].x, self.b[0].y, (self.susie.x + 20), (self.susie.y + 30))
        self.b[self.i].direction = self.bdir[self.i]
        self.b[self.i].image_angle = self.bdir[self.i]
        self.b[self.i].speed = -4
        self.b[self.i].friction = 0.12
    }
    self.con = 9
    self.alarm[4] = 40
}
if (self.con == 9)
{
    with (self.b[0])
        self.image_alpha += 0.04
    with (self.b[1])
        self.image_alpha += 0.04
}
if (self.con == 10)
{
    with (self.lancer)
        self.image_index = 0
    snd_play(snd_bigcut)
    self.aftercon = 1
    with (self.b[0])
        self.speed = 22
    with (self.b[1])
        self.speed = 22
    with (self.b[0])
        self.friction = -1
    with (self.b[1])
        self.friction = -1
    scr_pan(0, 31, 10)
    self.con = 11
    self.alarm[4] = 10
}
if (self.aftercon == 1)
{
    with (self.b[0])
    {
        self.a = scr_afterimage()
        self.a.image_alpha = 0.6
    }
    with (self.b[1])
    {
        self.a = scr_afterimage()
        self.a.image_alpha = 0.6
    }
}
if (self.con == 11)
{
    if (__view_get(1, 0) >= (self.room_height - 480))
        __view_set(1, 0, (self.room_height - 480))
}
if (self.con == 12)
{
    with (self.susie)
    {
        self.hspeed = 16
        self.sprite_index = spr_susie_shock
    }
    self.con = 13
    self.alarm[4] = 5
}
if (self.con == 14)
{
    with (self.susie)
        self.hspeed = 0
    self.con = 14.1
    self.alarm[4] = 30
}
if (self.con == 15.1)
{
    with (self.susie)
        self.sprite_index = spr_susiel_dark_unhappy
    scr_pan_to_obj(obj_mainchara, 5)
    self.con = 14.2
    self.alarm[4] = 4
}
if (self.con == 15.2)
{
    with (obj_panner)
        instance_destroy()
    with (obj_mainchara)
        self.cutscene = 0
    self.con = 15
    self.alarm[4] = 10
}
if (self.con == 16)
{
    self.aftercon = 0
    global.fe = 9
    global.msg[0] = scr_84_get_lang_string("obj_lancerchaseevent_slash_Step_0_gml_137_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 17
}
if ((self.con == 17) && (instance_exists(obj_dialoguer) == 0))
{
    with (self.susie)
    {
        self.sprite_index = spr_susier_dark_unhappy
        self.image_speed = 0.334
        self.hspeed = 14
    }
    global.interact = 0
    self.con = 18
    with (obj_mainchara)
    {
        self.cutscene = 0
        self.autorun = 1
    }
    global.currentsong[0] = snd_init("creepychase.ogg")
    global.currentsong[1] = mus_loop(global.currentsong[0])
    instance_create(0, 0, obj_overworld_spademaker)
}
if (self.con == 19)
    self.con = 20
