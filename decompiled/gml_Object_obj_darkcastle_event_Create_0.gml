self.con = 0
self.rflip = 0
if (global.plot >= 20)
    instance_destroy()
else
{
    snd_free_all()
    self.con = 1
    with (obj_mainchara)
        self.visible = 0
    self.k = scr_dark_marker(460, (obj_mainchara.y + 60), spr_krisu_dark)
    self.s = scr_dark_marker(520, (obj_mainchara.y + 100), spr_susieu_dark)
    with (self.k)
    {
        self.vspeed = -2
        self.image_speed = 0.1
    }
    with (self.s)
    {
        self.vspeed = -3
        self.image_speed = 0.1
    }
    global.interact = 1
    self.alarm[4] = 60
}
