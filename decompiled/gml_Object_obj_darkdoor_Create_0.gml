self.image_speed = 0
self.open = 0
self.siner = 0
self.xsin = 0
self.con = 0
if (global.plot < 5)
{
    self.con = 1
    with (obj_mainchara)
        self.visible = 0
    self.k = scr_marker(290, 198, spr_krisu)
    self.s = scr_marker(310, 190, spr_susieu)
    global.interact = 1
    with (self.s)
    {
        self.vspeed = -1
        self.image_speed = 0.2
    }
    with (self.k)
    {
        self.vspeed = -1
        self.image_speed = 0.2
    }
    self.alarm[4] = 90
}
else
{
    self.block = instance_create(280, 100, obj_solidblock)
    self.block.image_xscale = 4
    self.sunset = scr_marker(0, 0, spr_doorarea_sunsetoverlay)
    with (self.sunset)
    {
        self.image_alpha = 0.4
        self.depth = 2000
    }
}
if (global.plot == 250)
{
    with (obj_mainchara)
    {
        self.x = obj_markerD.x
        self.y = obj_markerD.y
    }
    global.interact = 1
    self.con = 40
}
