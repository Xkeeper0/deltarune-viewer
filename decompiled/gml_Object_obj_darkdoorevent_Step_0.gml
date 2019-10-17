if (self.hcon == 1)
{
    if instance_exists(obj_mainchara)
    {
        if ((obj_mainchara.x >= 220) && (global.interact == 0))
        {
            global.interact = 1
            self.hcon = 2
            global.msc = 140
            global.fc = 2
            global.fe = 3
            global.typer = 31
            scr_text(global.msc)
            instance_create(0, 0, obj_dialoguer)
        }
    }
}
if (self.hcon == 2)
{
    if (d_ex() == 0)
    {
        if (global.plot < 32)
            global.plot = 32
        self.hcon = 3
        global.interact = 0
    }
}
if (self.con == 1)
{
    if instance_exists(obj_mainchara)
    {
        if ((obj_mainchara.y <= 200) && (global.interact == 0))
        {
            global.interact = 1
            self.con = 2
            mus_volume(global.currentsong[1], 0, 60)
            self.alarm[4] = 40
        }
    }
}
if (self.con == 2)
{
    with (obj_mainchara)
        self.image_alpha -= 0.04
}
if (self.con == 3)
{
    if instance_exists(global.cinstance[0])
        self.con = 4
    else
        self.con = 20
}
if (self.con == 4)
{
    self.r = scr_dark_marker(global.cinstance[0].x, global.cinstance[0].y, spr_ralseiu)
    with (global.cinstance[0])
        instance_destroy()
    with (self.r)
    {
        self.image_speed = 0.25
        scr_move_to_point_over_time(420, (obj_mainchara.y - 10), 20)
    }
    self.con = 5
    self.alarm[4] = 20
}
if (self.con == 6)
{
    with (self.r)
    {
        scr_halt()
        self.sprite_index = spr_ralseid
    }
    self.con = 7
    self.alarm[4] = 40
}
if (self.con == 8)
{
    with (self.r)
        self.visible = 0
    self.con = 20
}
if (self.con == 20)
{
    self.image_index = 1
    snd_play(snd_impact)
    instance_create(0, 0, obj_shake)
    self.con = 21
    self.alarm[4] = 70
}
if (self.con == 22)
{
    snd_free_all()
    self.f = instance_create(0, 0, obj_fadeout)
    self.f.fadespeed = 0.025
    self.con = 23
    self.alarm[4] = 60
}
if (self.con == 24)
{
    global.plot = 33
    global.interact = 0
    global.facing = 0
    instance_create(0, 0, obj_persistentfadein)
    room_goto(room_field_start)
}
