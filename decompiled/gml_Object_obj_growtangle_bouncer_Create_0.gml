self.image_speed = 0
self.image_xscale = 1.96
self.image_yscale = 1.96
self.initdir = choose(45, 135, 225, 315)
self.direction = self.initdir
self.speed = 0.1
self.active = 1
if instance_exists(obj_growtangle)
{
    self.x = obj_growtangle.x
    self.y = obj_growtangle.y
    obj_growtangle.megakeep = 1
}
self.timer = 0
self.type = 0
self.con = 0
self.xx = __view_get(e__VW.XView, 0)
self.yy = __view_get(e__VW.YView, 0)
self.lx = (140 + self.xx)
self.rx = (480 + self.xx)
self.ux = (0 + self.yy)
self.dx = (320 + self.yy)
self.fadein = 0
self.spikecount = 0
self.inv = 60
self.timepoints = 0
self.grazepoints = 3
self.target = 0
self.damage = 50
self.grazed = 0
self.grazetimer = 0
self.minitimer = 0
self.bumpnoise = 0
self.timerbonus = 0
self.wall_destroy = 0
