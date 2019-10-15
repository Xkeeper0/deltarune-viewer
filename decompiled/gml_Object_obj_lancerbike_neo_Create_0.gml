self.grazed = 0
self.grazepoints = 4
self.timepoints = 0
self.target = 0
self.dont = 1
self.inv = 60
self.damage = 20
self.spec = 0
self.image_xscale = 2
self.image_yscale = 2
self.loop = 0
self.lcon = 0
self.flip = 0
self.ltimer = 0
self.btimer = 0
self.racecon = 0
self.topy = 100
self.bottomy = 300
self.susiex = (self.x - 100)
self.susiey = (self.y - 180)
if instance_exists(obj_susieenemy)
{
    self.susiex = obj_susieenemy.x
    self.susiey = obj_susieenemy.y
}
self.s_tracking = 0
self.s_attack = 0
self.s_timer = 0
self.type = 0
