if (self.myinteract == 3)
{
}
if (self.myinteract == 3)
    _temp_local_var_1 = (self.con == 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    if (instance_exists(self.mydialoguer) == 0)
    {
        global.interact = 0
        self.myinteract = 0
        with(obj_mainchara)
        {
            self.onebuffer = 5
        }
    }
}
if (self.con >= 5)
{
    if (self.con == 50)
    {
        with(self.weirdlight)
        {
            instance_destroy()
        }
        self.con = 51
        snd_play(snd_dooropen)
        self.image_index = 1
    }
    if (self.con == 51)
        global.interact = 1
    if (self.con == 51)
        _temp_local_var_2 = (~ d_ex())
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        global.interact = 1
        self.con = 52
        self.doortimer = 0
    }
    if (self.con == 52)
    {
        self.doortimer = (self.doortimer + 1)
        if (self.doortimer >= 6)
        {
            snd_free_all()
            snd_play(snd_doorclose)
            self.dark_marker = scr_dark_marker((__view_get(e__VW.XView, 0) - 10), (__view_get(e__VW.YView, 0) - 10), spr_pixel_white)
            with(self.dark_marker)
            {
                self.image_xscale = 700
                self.image_yscale = 700
                self.depth = -100
                self.image_blend = 0x000000
            }
            self.con = 53
            self.doortimer = 0
        }
    }
    if (self.con == 53)
    {
        self.doortimer = (self.doortimer + 1)
        if (self.doortimer >= 30)
        {
            global.facing = 0
            self.con = 54
            snd_play(snd_dooropen)
            global.interact = 3
            instance_create(0, 0, obj_persistentfadein)
            global.entrance = 23
            room_goto(self.door_destination)
        }
    }
}
