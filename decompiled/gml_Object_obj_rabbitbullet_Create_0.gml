self.difficulty = 1
self.times = 0
self.activetimer = 0
self.grazed = 0
self.grazepoints = 5
self.timepoints = 5
self.target = 0
self.dont = 1
self.inv = 120
self.damage = 124
self.active = 0
self.image_alpha = 0
self.image_speed = 0
if (~ instance_exists(obj_heart))
    instance_destroy()
self.jumpsiner = random(100)
self.hspeed = (-3 - random(1))
self.jumpspeed = (8 + random(4))
self.jumpheight = (50 + random(10))
self.image_xscale = 2
self.image_yscale = 2
